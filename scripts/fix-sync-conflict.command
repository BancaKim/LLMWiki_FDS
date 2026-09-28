#!/bin/bash
#
# LLMWiki_FDS — Obsidian 보관소(맥) git 동기화 충돌 복구 스크립트
#
# 원칙: 위키 내용은 GitHub main 이 정본. 개인 노트·Obsidian 설정은 보존. 모든 것은 먼저 백업.
#   1) 진단: 충돌 파일, 진행 중인 merge/rebase, iCloud 미다운로드(.icloud)·중복본("index 2.md")
#   2) 백업: ~/LLMWiki_FDS_backup_<시각>/ (작업 폴더 전체) + git 브랜치 backup/<시각> (로컬 커밋 전체)
#   3) 진행 중인 merge/rebase 정리 → 보관소를 최신 origin/main 으로 전환(앞으로 main 을 추적)
#   4) 내가 로컬에서 새로 만든 노트 + .obsidian 설정을 복원해 로컬 커밋으로 남김
#   5) iCloud 중복본 정리(백업에는 보관)
#
# 사용 (보관소 폴더에서 실행. 저장소가 비공개여도, 충돌 상태여도 동작):
#   cd "<보관소 경로>" && git fetch origin && bash <(git show origin/main:scripts/fix-sync-conflict.command)
#   진단만 보기:   ... bash <(git show origin/main:scripts/fix-sync-conflict.command) --check
#   확인 질문 생략: FORCE_YES=1 bash <(...)
#
# ※ Claude 는 클라우드에서 동작하므로 이 스크립트는 사용자 Mac 에서 직접 실행해야 합니다.

set -uo pipefail

MODE="fix"
[ "${1:-}" = "--check" ] && MODE="check"

say() { printf '%s\n' "$*"; }
hr()  { say "----------------------------------------------------------"; }
die() { say "!! $*"; exit 1; }
# 폴더 내용 전체 복사(최상위 .git 제외) — 외부 도구 없이 cp 만 사용 (macOS/Linux 공통)
copy_tree() {
  local src="$1" dst="$2" e
  for e in "$src"/.[!.]* "$src"/..?* "$src"/*; do
    [ -e "$e" ] || [ -L "$e" ] || continue
    [ "$(basename "$e")" = ".git" ] && continue
    cp -Rp "$e" "$dst"/ || return 1
  done
}

# 0) 저장소 위치 확인
ROOT="$(git rev-parse --show-toplevel 2>/dev/null || true)"
if [ -z "$ROOT" ]; then
  DEFAULT="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/LLMWiki_FDS"
  if [ -d "$DEFAULT/.git" ]; then ROOT="$DEFAULT"; else die "LLMWiki_FDS 보관소(git 저장소) 폴더 안에서 실행하세요."; fi
fi
cd "$ROOT" || die "폴더 이동 실패: $ROOT"
git remote get-url origin 2>/dev/null | grep -qi 'LLMWiki_FDS' || die "이 저장소는 LLMWiki_FDS 가 아닙니다: $ROOT"

GITDIR="$(git rev-parse --git-dir)"
BRANCH="$(git symbolic-ref --quiet --short HEAD 2>/dev/null || echo '(detached)')"

# 1) 진단
hr
say "📍 보관소: $ROOT"
say "🌿 현재 브랜치: $BRANCH"
OP="없음"
[ -f "$GITDIR/MERGE_HEAD" ] && OP="merge"
{ [ -d "$GITDIR/rebase-merge" ] || [ -d "$GITDIR/rebase-apply" ]; } && OP="rebase"
[ -f "$GITDIR/CHERRY_PICK_HEAD" ] && OP="cherry-pick"
say "⚙️  진행 중인 작업: $OP"

CONFLICTS="$(git -c core.quotePath=false diff --name-only --diff-filter=U 2>/dev/null || true)"
if [ -n "$CONFLICTS" ]; then
  say "⚠️  충돌 파일:"; printf '%s\n' "$CONFLICTS" | sed 's/^/     - /'
else
  say "✅ 충돌 파일: 없음"
fi
say "📝 변경/미추적 항목 수: $(git status --porcelain 2>/dev/null | wc -l | tr -d ' ')"

count_icloud() { find . -path ./.git -prune -o -name '*.icloud' -print 2>/dev/null | wc -l | tr -d ' '; }
ICLOUD_PH="$(count_icloud)"
say "☁️  iCloud 미다운로드(.icloud) 파일: $ICLOUD_PH"

# iCloud 중복본: 미추적 파일 중 "이름 2.md" 형태이고 원본("이름.md")이 git 이 추적하는 파일인 것만
DUPS=""
while IFS= read -r -d '' f; do
  case "$f" in *" "[0-9].md|*" "[0-9][0-9].md|*" "[0-9].json|*" "[0-9][0-9].json) ;; *) continue ;; esac
  base="$(printf '%s' "$f" | sed -E 's/ [0-9]+(\.(md|json))$/\1/')"
  if git ls-files --error-unmatch -- "$base" >/dev/null 2>&1; then DUPS="${DUPS}${f}"$'\n'; fi
done < <(git -c core.quotePath=false ls-files -z --others --exclude-standard 2>/dev/null)
DUP_N="$(printf '%s' "$DUPS" | grep -c . || true)"
say "📑 iCloud 중복본(예: 'index 2.md'): $DUP_N"
[ -n "$DUPS" ] && printf '%s' "$DUPS" | sed 's/^/     - /'
STASH_N="$(git stash list 2>/dev/null | wc -l | tr -d ' ')"
say "📦 git stash 에 보관된 항목(예전 미커밋 변경): $STASH_N"

git fetch origin --quiet 2>/dev/null || say "!! git fetch 실패 — 네트워크/인증을 확인하세요."
git rev-parse --verify --quiet origin/main >/dev/null || die "origin/main 을 찾을 수 없습니다. 'git fetch origin' 이 되는지 확인하세요."
if git rev-parse --verify --quiet HEAD >/dev/null; then
  say "🔀 origin/main 대비: 로컬 전용 커밋 $(git rev-list --count origin/main..HEAD)개 / 받아야 할 커밋 $(git rev-list --count HEAD..origin/main)개"
fi
hr

if [ "$MODE" = "check" ]; then
  say "(--check 모드: 아무것도 바꾸지 않았습니다. 이 출력을 Claude 에게 붙여 주세요.)"
  exit 0
fi

# 이미 정상인 보관소 → 아무것도 바꾸지 않음(최신/앞섬) 또는 fast-forward 만
UPSTREAM="$(git rev-parse --abbrev-ref --symbolic-full-name '@{u}' 2>/dev/null || true)"
if [ "$OP" = "없음" ] && [ -z "$CONFLICTS" ] && [ -z "$DUPS" ] && [ "$ICLOUD_PH" = "0" ] \
   && [ "$BRANCH" = "main" ] && [ "$UPSTREAM" = "origin/main" ]; then
  if git merge-base --is-ancestor origin/main HEAD 2>/dev/null; then
    say "✅ 이미 정상입니다 — 최신 main 을 추적 중(로컬 전용 커밋은 다음 동기화 때 push). 변경 없음."; exit 0
  fi
  if git merge-base --is-ancestor HEAD origin/main 2>/dev/null && git merge --ff-only -q origin/main >/dev/null 2>&1; then
    say "✅ 이미 정상 — 최신 main 으로 fast-forward 했습니다: $(git log -1 --oneline)"; exit 0
  fi
  say "ℹ️  main 을 추적 중이지만 로컬·원격이 갈라졌거나 로컬 변경과 겹칩니다 → 안전 복구를 진행합니다."
fi

# 확인 질문 (파이프/프로세스 치환으로 실행돼도 /dev/tty 에서 입력받음)
if [ "${FORCE_YES:-0}" != "1" ]; then
  if { : </dev/tty; } 2>/dev/null; then
    printf '위키 내용을 GitHub main 최신본으로 맞추고(먼저 전체 백업), 개인 노트·Obsidian 설정은 복원합니다. 진행할까요? [y/N] '
    read -r ans </dev/tty || ans=""
    case "$ans" in y|Y|yes|YES) ;; *) say "취소했습니다(아무것도 바꾸지 않음)."; exit 0 ;; esac
  else
    die "터미널에서 확인할 수 없습니다. FORCE_YES=1 을 붙여 다시 실행하세요."
  fi
fi

TS="$(date +%Y%m%d-%H%M%S)"
BACKUP_DIR="${BACKUP_ROOT:-$HOME}/LLMWiki_FDS_backup_$TS"

# 2) iCloud 에만 있는 파일을 먼저 내려받기 (best-effort)
if [ "$ICLOUD_PH" != "0" ] && command -v brctl >/dev/null 2>&1; then
  say "☁️  iCloud 파일 다운로드 요청 중..."
  brctl download "$ROOT" >/dev/null 2>&1 || true
  n="$ICLOUD_PH"; i=0
  while [ "$n" != "0" ] && [ $i -lt 30 ]; do sleep 2; n="$(count_icloud)"; i=$((i+1)); done
  [ "$n" != "0" ] && say "!! 아직 ${n}개가 iCloud 에만 있습니다. Finder 에서 보관소 폴더 우클릭 → '다운로드 유지'를 켜 주세요(계속 진행)."
fi

# 3) 전체 백업 (실패하면 아무것도 바꾸지 않고 중단)
say "💾 백업 중: $BACKUP_DIR"
mkdir -p "$BACKUP_DIR" || die "백업 폴더 생성 실패 — 중단(변경 없음)."
copy_tree "$ROOT" "$BACKUP_DIR" || die "백업 실패 — 중단(변경 없음)."
git -c core.quotePath=false status --porcelain > "$BACKUP_DIR/_git-status-before.txt" 2>/dev/null || true
if [ "$STASH_N" != "0" ]; then
  i=0
  while [ $i -lt "$STASH_N" ]; do
    d="$BACKUP_DIR/_stash/stash-$i"; mkdir -p "$d/untracked"
    git diff "stash@{$i}^1" "stash@{$i}" > "$d/tracked-changes.patch" 2>/dev/null || true
    if git rev-parse --verify --quiet "stash@{$i}^3" >/dev/null; then
      git archive "stash@{$i}^3" | tar -x -C "$d/untracked" 2>/dev/null || true
    fi
    i=$((i+1))
  done
  say "📦 stash ${STASH_N}개를 백업 폴더 _stash/ 에 파일로 풀어 두었습니다(git stash 도 그대로 보존)"
fi

# 진행 중인 merge/rebase/cherry-pick 정리 (충돌 상태 파일은 이미 백업됨)
case "$OP" in
  merge)       git merge --abort >/dev/null 2>&1 || git reset --merge >/dev/null 2>&1 || true ;;
  rebase)      git rebase --abort >/dev/null 2>&1 || git rebase --quit >/dev/null 2>&1 || true ;;
  cherry-pick) git cherry-pick --abort >/dev/null 2>&1 || git cherry-pick --quit >/dev/null 2>&1 || true ;;
esac

HEAD_OK=0
if git rev-parse --verify --quiet HEAD >/dev/null; then
  HEAD_OK=1
  git branch -f "backup/$TS" HEAD >/dev/null 2>&1 && say "🏷️  로컬 커밋 백업 브랜치: backup/$TS"
fi

# 4) 로컬에서 새로 만든(커밋된) 파일 목록 — 갈라진 지점 이후 로컬에서 추가된 것
ADDED_LIST="$(mktemp)"; UNTRACKED_LIST="$(mktemp)"
if [ $HEAD_OK = 1 ]; then
  MB="$(git merge-base HEAD origin/main 2>/dev/null || true)"
  [ -n "$MB" ] && git -c core.quotePath=false diff -z --name-only --diff-filter=A "$MB" HEAD > "$ADDED_LIST" 2>/dev/null || true
fi
git -c core.quotePath=false ls-files -z --others --exclude-standard > "$UNTRACKED_LIST" 2>/dev/null || true

# 개인 영역 notes/ 와 Obsidian 설정 .obsidian/ 은 "로컬 우선" — merge/rebase 정리 후 상태를 스냅샷
# (로컬 커밋 + 미커밋 수정 모두 포함. Claude 는 notes/ 를 절대 수정하지 않음)
OBS_TMP=""; NOTES_TMP=""
if [ -d .obsidian ]; then OBS_TMP="$(mktemp -d)"; cp -Rp .obsidian/. "$OBS_TMP"/ || die "설정 보존 실패 — 중단(백업: $BACKUP_DIR)."; fi
if [ -d notes ]; then NOTES_TMP="$(mktemp -d)"; cp -Rp notes/. "$NOTES_TMP"/ || die "노트 보존 실패 — 중단(백업: $BACKUP_DIR)."; fi

# 5) 보관소를 최신 main 으로 전환 (로컬 수정분은 백업에 있음)
git checkout -f -B main origin/main >/dev/null 2>&1 || die "main 전환 실패 — 백업은 $BACKUP_DIR 에 있습니다."
git branch --set-upstream-to=origin/main main >/dev/null 2>&1 || true
say "🌿 보관소를 최신 'main' 으로 전환: $(git log -1 --oneline)"

# 6) notes/ 밖에서 로컬로 새로 만든 파일 복원 — main 에 같은 경로가 없는 것만
RESTORED=0; KEPT_MAIN=""
while IFS= read -r -d '' f; do
  [ -z "$f" ] && continue
  case "$f" in notes/*|.obsidian/*) continue ;; esac
  if git cat-file -e "origin/main:$f" 2>/dev/null; then KEPT_MAIN="${KEPT_MAIN}${f}"$'\n'; continue; fi
  git checkout "backup/$TS" -- "$f" >/dev/null 2>&1 && RESTORED=$((RESTORED+1))
done < "$ADDED_LIST"
# 미추적 파일 중 main 과 경로가 겹쳐 main 버전이 된 것 안내
while IFS= read -r -d '' f; do
  case "$f" in notes/*|.obsidian/*|"") continue ;; esac
  git cat-file -e "origin/main:$f" 2>/dev/null && KEPT_MAIN="${KEPT_MAIN}${f}"$'\n'
done < "$UNTRACKED_LIST"
rm -f "$ADDED_LIST" "$UNTRACKED_LIST"
NOTES_N=0
if [ -n "$NOTES_TMP" ]; then
  NOTES_N="$(find "$NOTES_TMP" -type f | wc -l | tr -d ' ')"
  mkdir -p notes && cp -Rp "$NOTES_TMP"/. notes/; rm -rf "$NOTES_TMP"
fi
STASH_NOTES=0
if [ -d "$BACKUP_DIR/_stash" ]; then
  CNT="$(mktemp)"; : > "$CNT"
  for d in "$BACKUP_DIR"/_stash/stash-*; do
    [ -d "$d/untracked/notes" ] || continue
    (cd "$d/untracked" && find notes -type f -print) | while IFS= read -r f; do
      if [ ! -e "$f" ]; then mkdir -p "$(dirname "$f")" && cp -p "$d/untracked/$f" "$f" && echo x >> "$CNT"; fi
    done
  done
  STASH_NOTES="$(wc -l < "$CNT" | tr -d ' ')"; rm -f "$CNT"
  [ "$STASH_NOTES" != "0" ] && say "📝 stash 속 notes/ 개인 초안 ${STASH_NOTES}개 복원"
fi

# iCloud 중복본 정리 (백업 폴더에 이미 있음)
if [ -n "$DUPS" ]; then
  printf '%s' "$DUPS" | while IFS= read -r f; do [ -n "$f" ] && rm -f -- "$f"; done
  say "🧹 iCloud 중복본 ${DUP_N}개 정리(백업에 보관)"
fi

# .obsidian 설정 복원 → 추적 중인 설정 파일의 변경만 커밋 대상에 포함
if [ -n "$OBS_TMP" ]; then mkdir -p .obsidian && cp -Rp "$OBS_TMP"/. .obsidian/; rm -rf "$OBS_TMP"; fi
[ -e notes ] && git add -A -- notes >/dev/null 2>&1
[ -e .obsidian ] && git add -A -- .obsidian >/dev/null 2>&1
if ! git diff --cached --quiet 2>/dev/null; then
  git commit -q -m "Restore local notes and Obsidian settings after sync repair ($TS)" \
    && say "📌 개인 노트(notes/ ${NOTES_N}개 + 기타 로컬 신규 ${RESTORED}개) + Obsidian 설정을 로컬 커밋으로 보존(다음 동기화 때 push)"
fi

hr
say "✅ 완료 — 충돌 해소. 보관소는 이제 최신 'main' 을 추적합니다."
say "   백업 폴더 : $BACKUP_DIR"
[ $HEAD_OK = 1 ] && say "   백업 브랜치: backup/$TS  (예전 로컬 커밋 전체)"
[ "$STASH_N" != "0" ] && say "   stash      : ${STASH_N}개 보존 (파일 사본: 백업 폴더/_stash/)"
if [ -n "$KEPT_MAIN" ]; then
  say "   ℹ️  아래 파일은 위키 정본(main)과 경로가 같아 main 최신본을 유지했습니다(내 버전은 백업 폴더에 있음):"
  printf '%s' "$KEPT_MAIN" | sort -u | sed 's/^/     - /'
fi
say ""
say "다음 단계:"
say "  1) Obsidian 에서 Cmd+R (다시 불러오기)"
say "  2) Obsidian Git 설정: 브랜치 'main', Sync method 'Merge', Pull on startup 켜기"
say "  3) 개인 메모는 notes/ 폴더에 쓰기 — Claude 가 절대 수정하지 않는 영역이라 충돌이 나지 않습니다"
hr
