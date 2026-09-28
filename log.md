---
type: Changelog
title: Change Log
description: Chronological history of changes to this OKF bundle.
timestamp: 2026-06-18T00:00:00Z
---

# Change Log

OKF 예약 파일입니다. 번들의 변경 이력을 시간 순으로 기록합니다.

## 2026-09-28 — AI-Hub 데이터셋 사용 GNN 논문 조사 + GFP 🏅 추가 (49→50)

- **조사 결과**: AI-Hub "이상 판별을 위한 금융거래 정보 및 사용자 패턴 합성데이터"(71925)로 실험한
  **GNN 논문(학회·저널·arXiv)은 찾지 못함**. 2025년 구축 신규 데이터로 연구 활용 초기 단계로 판단.
  - 검색: 정식 명칭·번호·"전자금융공동망/카드거래 합성데이터" × GNN/그래프 키워드로 웹·arXiv·KCI·DBpia·GitHub.
    국내 학회 논문집 원문은 직접 조회 불가 → **누락 가능성 있음**(발견 시 추가).
  - 확인된 활용: ① **AI-Hub 공식 베이스라인** = IBM Graph Feature Preprocessor 그래프 특징 → SMOTE → LightGBM
    (Minority F1 평가, 비-GNN), ② GitHub [sugowslt/transaction-anomaly-detection](https://github.com/sugowslt/transaction-anomaly-detection)(논문 아님).
- **신규 논문(🏅, ⭐ 아님)**: [Graph Feature Preprocessor](papers/aml-crypto/graph-feature-preprocessor.md) —
  Blanuša et al., **ICAIF 2024**(응용 AI 학회 → 🏅). 부분그래프 패턴(fan-in/out·scatter-gather·순환) 실시간 마이닝
  + GBDT 가 GIN·PNA 등 GNN 보다 높은 소수 클래스 F1·처리량. 공식 베이스라인의 핵심 부품이라 추가.
  - (미확인) 피싱 데이터셋 세부.
- **데이터셋 문서 보강**: [aihub-financial-anomaly-synthetic.md](datasets/aihub-financial-anomaly-synthetic.md) —
  구축 2025년, 분기 파일(전자금융공동망 14개 21Q3–24Q4 / 카드 16개 21Q1–24Q4), 공식 베이스라인 파이프라인,
  "쓰는 논문" 조사 결과 표. GFP 가 송신→수신 엣지를 요구하므로 거래 주체 식별자 포함을 **추정**(미확인).
  공식 베이스라인 수치 성능은 (미확인).
- 색인 갱신: AML·암호화폐 4→5, 전체 **50편 / ⭐21(불변)**; [IBM AML](datasets/ibm-aml.md)·
  [분류 체계](concepts/taxonomy.md)·[동향](concepts/trends-and-challenges.md)에 GFP 링크.

## 2026-09-28 — 데이터셋 추가: AI-Hub 금융거래 이상판별 합성데이터 🇰🇷 (9→10)

- 사용자 요청으로 **국내 데이터셋** concept 신설:
  [datasets/aihub-financial-anomaly-synthetic.md](datasets/aihub-financial-anomaly-synthetic.md)
  — AI-Hub "이상 판별을 위한 금융거래 정보 및 사용자 패턴 합성데이터".
  - 규모: 전자금융공동망 4,926,785건(이상 19,084) + 카드거래 2,169,857건(이상 80,009) = **7,096,642건**.
    원천(합성 전) 12,302,694건. 목적: 이상거래 유형 식별·의심거래 분류 근거 추론.
  - tabular 거래 로그 → GNN 적용용 **그래프 구성 가이드**(거래/이종/계좌 이체 그래프)와 관련 모델 링크 추가.
- 색인 갱신: [datasets/index.md](datasets/index.md) 금융·거래 사기 표,
  [concepts/datasets-overview.md](concepts/datasets-overview.md) 선택 가이드(국내 금융 FDS 행).
- **정정/미확인**:
  - 요청 번호 `71295` → AI-Hub 실제 번호 **`dataSetSn=71925`** 로 확인(동일 명칭 검색 결과). 오기로 판단.
  - AI-Hub 페이지 직접 조회 불가(네트워크 차단) → 검색 스니펫·활용 사례(GitHub)로 작성.
    **구축 기관·구축 연도·컬럼 명세·이상 유형 라벨 체계·라이선스/반출 조건은 (미확인)**.
  - 참고로 언급한 AI-Hub "금융 합성 데이터"(`dataSetSn=71792`)도 내용 (미확인).
- 점검 중 발견한 **YAML 오류 수정**: [Grad](papers/credit-card-fraud/grad.md) frontmatter `description` 이 따옴표로 시작해
  파싱 실패(Dataview 에서 누락되던 문제) → 전체를 큰따옴표로 감쌈. 논문 수 변동 없음(49편, ⭐21, YAML 전수 통과).

## 2026-09-28 — 맥 Obsidian 보관소 동기화 충돌 해결 + 재발 방지

- **진단**: GitHub 쪽은 정상(열린 PR 0, 브랜치 2개, 작업 브랜치는 main 의 조상 — 히스토리 재작성 없음), Routine 0개.
  충돌은 **맥 보관소(Obsidian Git)** 에서 발생. 원인: 설치 스크립트가 보관소를 **Claude 작업 브랜치**
  (`claude/wizardly-clarke-be1m7k`)로 클론 → 사용자 자동 커밋과 Claude 갱신이 **같은 브랜치의 같은 파일**
  (`log.md`·`index.md`·`papers/index.md`, 각 6~7회 수정)을 건드려 merge 충돌.
  또한 저장소 **기본 브랜치가 작업 브랜치**로 잡혀 있음(사용자가 Settings 에서 `main` 으로 변경 필요).
- **복구 도구** [`scripts/fix-sync-conflict.command`](scripts/fix-sync-conflict.command): 전체 백업(폴더+브랜치+stash 사본)
  → merge/rebase 정리 → 최신 `main` 추적 전환 → 위키는 main 정본, `notes/`·`.obsidian/` 은 로컬 우선 복원.
  `--check` 진단 모드, 정상 보관소면 무변경. rsync 등 외부 도구 불필요(cp·tar·git 만).
  - 검증: 재현 테스트 5종 **42/42 통과** — merge 충돌, rebase 충돌+stash, 정상 보관소 재실행(무변경),
    복구 후 Claude 갱신 pull(무충돌), push 된 노트 로컬 수정 보존.
- **재발 방지**: 설치 스크립트 추적 브랜치 → `main`; `.gitignore` 에 `.obsidian/plugins/`·`themes/`;
  개인 영역 [`notes/`](notes/index.md) 신설(Claude 수정 금지); [CLAUDE.md](CLAUDE.md)·주간 Routine 지시문에 동기화 규칙 추가;
  [obsidian-setup.md](obsidian-setup.md) 에 충돌 복구·예방 원칙. CLAUDE.md 의 낡은 ⭐ 목록(10편)을 정본 포인터로 교체.

## 2026-09-15 — 최신 스캔 #3: 신규 4편 + CAMERA ⭐ 승격 (45→49)

- "업데이트" 갱신(오늘 2026-09-15). PR #5(6월 스캔) main 머지 후 최신(6~8월 2026) 신규 4편 추가:
  - ⭐ **IMEX** (Integrated Mixture of Neighborhood/Community Experts, **WWW 2026**) → 🌐
  - **GFD-GC** (2607.11107, 그룹 속성완성+신뢰도 대조학습) → 🌐
  - **N2N** (2606.30009, 노드-이웃 의미 일관성 TAG) → 🤖
  - **ProTAGAD** (2608.10699, TAG 이상탐지 파운데이션 모델, 8월 — 최신) → 🤖
- **CAMERA ⭐ 승격**: arXiv → **IJCAI 2026** 게재 확정 확인 → CLAUDE.md "게재 확정 시 재평가"에 따라 ⭐ 적용
  (H1·콜아웃·frontmatter·index 갱신). CAMERA = Case-Adaptive Multi-cue Expert fRAmework.
- 편수 **45→49**, ⭐ **19→21**(IMEX + CAMERA). 색인·루트 카운트·year 2026 갱신.
- 참고: 검색 노출 최신은 2026-08(2608)까지. 2609(9월) 신규는 다음 스캔.

## 2026-06-19 — 최신 스캔 #2: 2026 신규 논문 4편 (41→45)

- "최신 기준" 갱신 — 2026-03~05 신규 논문 4편 추가(모두 arXiv 프리프린트 → ⭐ 아님):
  - **CAMERA** (2605.20032, 의미 위장 비지도 TAG, MoE) → 🌐
  - **DPF-GFD** (2604.14235, 이중경로 wavelet/lowpass 필터링, W.He·W.Gan·P.S.Yu) → 🌐
  - **L2IR** (2605.26040, LLM 잠재 의도 추론, AUPRC +8.27%) → 🤖 LLM×GNN
  - **STC-MixHop** (2603.14592, 동적·MixHop 다중스케일+시간일관성, PaySim) → 💳
- 편수 **41→45**, ⭐ 19 유지. 색인·루트 카운트·year 2026 갱신.
- 참고: 검색 노출상 최신은 2026-05(2605)까지. 이후 2606(6월) 신규는 다음 스캔에서 반영.

## 2026-06-19 — 이종·동적·하이퍼그래프 확장 (37→41) + 그래프 종류 개념

- [concepts/graph-types.md](concepts/graph-types.md) 신설 — 그래프 4종(동질·이종·하이퍼·동적) 설명 +
  GNN 백본(GCN·GraphSAGE·GAT·R-GCN·HAN·HGT·HGNN·HyperGCN) 매핑 + 구조별 논문 색인. 개념 index 연결.
- 신규 논문 4편(요청 6개 항목 형식: 기본정보·배경·데이터셋(노드/엣지)·그래프종류+이유·파이프라인·GNN 백본):
  - ⭐ **GEM** (Alipay 악성계정, **CIKM 2018**, 계정-디바이스 이종, ~8M 노드/~10M 엣지),
    **HGAE** (arXiv 2024, 이종 오토인코더), **FFD-DHG** (Intelligent Computing 2026, [FiGraph](datasets/figraph.md)),
    **Dynamic HG Contrastive** (정확 매칭 미확인 → 근접 확인 **TH-GCL**, IEEE Access 2025).
- 기존 4편(HGNN+Attention·MH-LGC·SEC-GFD·HUGE)에 **'구조 상세'**(그래프 종류·파이프라인·GNN 백본·
  데이터셋 노드/엣지) 보강.
- 데이터셋 concept 2종 추가: [FiGraph](datasets/figraph.md), [IEEE-CIS](datasets/ieee-cis.md).
- 편수 **37→41**, ⭐ **18→19**(GEM).
- ⚠️ 요청 #5 *"Dynamic Heterogeneous Graph Contrastive Learning (2026)"* 정확히 일치하는 논문 **미확인**
  → 근접 TH-GCL(IEEE Access 2025)로 정리. 원 제목/출처 확인 시 교체 예정.

## 2026-06-19 — awesome-fraud-detection 후보 검토: 핵심 GFD 논문 4편 추가 (33→37편)

- [awesome-fraud-detection](resources/awesome-fraud-detection.md) 후보 검토 후, AI-탑티어 핵심 GFD 논문
  4편 추가(모두 ⭐):
  - ⭐ **CARE-GNN** (CIKM 2020, 기반·위장), ⭐ **PC-GNN** (WWW 2021, 기반·불균형),
    ⭐ **DGA-GNN** (AAAI 2024, 동적 그룹 집계), ⭐ **GAAP** (AAAI 2025, 속성-연관 패턴)
  - 모두 🌐 카테고리에 배치(3→7편). 카테고리 범위를 **'이질성·스펙트럼·핵심 GFD 기법'** 으로 확장.
- **POCL** (AAAI 2024)은 그래프/GNN 핵심 여부가 불명확해 **보류**(리소스 문서에 근거 기록).
- 편수 **33→37**, ⭐ **14→18**. 색인·루트 카운트 갱신.

## 2026-06-19 — AI4Risk 저장소 반영 + 신규 논문 3편 (30→33편)

- 사용자가 공유한 **AI4Risk** 저장소 2종을 리소스 concept으로 반영:
  - [resources/ai4risk-antifraud.md](resources/ai4risk-antifraud.md) (코드 프레임워크, 모델↔논문 매핑),
    [resources/awesome-fraud-detection.md](resources/awesome-fraud-detection.md) (큐레이션 목록),
    [resources/index.md](resources/index.md)
- antifraud 구현 모델 중 **in-scope·AI-탑티어 3편** 추가(모두 ⭐):
  - ⭐ **GTAN** (AAAI 2023, 기반), ⭐ **RGTAN** (IEEE TKDE 2025), ⭐ **Grad** (WWW 2025)
  - TKDE는 CLAUDE.md 기준 **탑 AI 저널 → ⭐**.
- 상호링크: [HOGRL](papers/credit-card-fraud/hogrl.md)·[GNN 리뷰](papers/surveys/gnn-financial-fraud-review.md)·
  [FFSD 데이터셋](datasets/ffsd.md) → AI4Risk 리소스. 루트 index 탐색표에 리소스 추가.
- 편수 **30→33**, ⭐ **11→14**.

## 2026-06-19 — 주간 스캔 #1: 신규 논문 6편 반영 (24→30편)

- 최근(2026) 신규 논문 6편 추가. ⭐ 필독 10→11편.
  - 💳 카드·거래: **OES-GNN** (One-side Edge Sampling, arXiv:2601.06800)
  - 🤖 LLM×GNN: **FraudCoT** (CoT 증류, arXiv:2601.22949), **LGSPF** (soft prompt, arXiv:2605.28524),
    ⭐ **MH-LGC** (Multi-View Hypergraph + LLM 대조학습, **AAAI 2026**)
  - 🏦 AML·암호화폐: **UniDetect** (LLM 멀티체인 크립토, arXiv:2604.12329)
  - 🛡️ 강건성: **GAD in the Wild** (실배포 GAD 벤치마크, arXiv:2605.07133)
- 색인·카테고리 편수/⭐ 카운트 갱신(루트 index, papers/index, 4개 카테고리 index).
- 비고: arXiv 프리프린트(OES/FraudCoT/LGSPF/UniDetect/GAD) 5편은 CLAUDE.md 기준상 등급 보류(⭐ 아님),
  MH-LGC만 AAAI 2026로 ⭐. 일부 데이터셋·수치는 `(미확인)`.
- 비고: "이번 주(2026-06-3째주)" 한정 신규는 확정 못 함 — 검색에 노출된 최신은 2026-05까지라
  위키에 없던 2026년 신규를 반영함.

## 2026-06-19 — 주간 자동 업데이트(Routine) 설정 추가

- [`scripts/weekly-paper-scan-prompt.md`](scripts/weekly-paper-scan-prompt.md) 추가 —
  주간 Routine이 따를 자기완결 지시문(서칭→중복제거→OKF concept 추가→⭐ AI-tier 적용→log 기록→draft PR).
- [`automation-weekly-routine.md`](automation-weekly-routine.md) 추가 — Claude Code **Routines**(`/schedule`)
  로 주간 예약 실행 설정 가이드(웹/CLI). 구독 기반, API키 불필요.
- ⚠️ 선행 조건: Routine은 기본 브랜치(main)를 클론하므로 **PR #1을 main에 머지 후** 사용.
- 루트 [index.md](index.md) 탐색표에 링크 추가.

## 2026-06-19 — macOS 자동 세팅 스크립트 + Obsidian 설정 추가

- [`scripts/setup-mac.command`](scripts/setup-mac.command) 추가 — 맥에서 더블클릭/실행 시
  iCloud Obsidian 폴더로 클론(있으면 pull) 후 보관소 열기 시도 + 남은 단계 안내.
- 시작 Obsidian 설정 커밋: `.obsidian/app.json`(상대 마크다운 링크), `core-plugins.json`(그래프·백링크·검색 등),
  `community-plugins.json`(dataview·obsidian-git 사전 활성). 플러그인 설치는 사용자가 1회 수행.
  - 참고: 플러그인 비밀/상태(`.obsidian/**/data.json`, workspace*)는 .gitignore로 제외 — 기기 충돌·유출 방지.
- 비고: Claude는 클라우드 샌드박스에서 동작하므로 사용자 Mac에 직접 설치 불가 → 위 스크립트로 자동화 제공.

## 2026-06-19 — 노트앱(Obsidian) 보기 지원 추가

- [`obsidian-setup.md`](obsidian-setup.md) 추가 — iPad·iPhone·MacBook에서 굿노트처럼 동기화해
  보는 가이드(iCloud / Obsidian Sync / Working Copy 3가지 방식).
- [`dashboard.md`](dashboard.md) 추가 — Dataview 동적 대시보드(⭐ 필독/연도순/주제별/태그/데이터셋).
  OKF frontmatter(`must_read`, `year`, `venue`, `tags`)를 그대로 쿼리.
- [`.gitignore`](.gitignore) 추가 — Obsidian 캐시·OS 잡파일 제외(기기 간 충돌 방지).
- 루트 [index.md](index.md)·[README.md](README.md)에 노트앱 보기 링크 추가.

## 2026-06-19 — 큐레이션 기준 명문화 (AI 분야)

- 사용자 지정 기준 기록: **⭐ 탑티어 판단은 "AI 분야" 학회·저널 랭킹 기준**.
  응용 도메인 전용 학회/저널(ICAIF, IEEE TII 등)은 ⭐ 아님(🏅 보조 표기).
- [`CLAUDE.md`](CLAUDE.md) 추가 — 탑티어 AI venue 목록, ⭐ 표기 규칙, OKF 작성 규칙 명시.
  이후 논문 추가·등급 변경 시 이 기준 적용.

## 2026-06-19 — 탑티어 학회 ⭐ 필독 표시 추가

- 탑티어 학회(ICLR · KDD · AAAI · IJCAI · CIKM · ACM MM) 게재 논문 **10편** 에
  **⭐ 필독(MUST-READ)** 표시 추가:
  - H1 제목에 ⭐ + 본문 상단 콜아웃(`> ⭐ 필독 … 탑티어 학회 게재: <VENUE>`)
  - frontmatter에 `must_read: true`, `venue_tier: top-tier conference` 필드 추가
  - 대상: PMP(ICLR'24), SEC-GFD(AAAI'24), SEFraud(KDD'24), HOGRL(IJCAI'24),
    DIAM(CIKM'24), HUGE(AAAI'25), MonTi(AAAI'25), FLAG(KDD'25), MLED(ACM MM'25), DGP(AAAI'26)
- 루트 [index.md](index.md)·[papers/index.md](papers/index.md) 및 각 카테고리 index에
  ⭐ 범례와 **필독 논문 빠른 시작 목록** 추가.
- 🏅(준-탑티어/우수 저널) 보조 표기: FraudGT(ICAIF'24), STA-GT(IEEE TII).

## 2026-06-18 — 초기 번들 생성 (v0.1)

- OKF v0.1 사양에 따라 번들 초기 구성.
- 배경 개념 5종 추가: [overview](concepts/overview.md), [taxonomy](concepts/taxonomy.md),
  [datasets 개요](concepts/datasets-overview.md), [glossary](concepts/glossary.md),
  [trends-and-challenges](concepts/trends-and-challenges.md).
- 벤치마크 데이터셋 concept 7종 추가 ([datasets/index.md](datasets/index.md)).
- 논문 concept 24편 추가 (6개 주제):
  - 서베이·리뷰 3편 ([papers/surveys](papers/surveys/index.md))
  - 신용카드·거래 사기 8편 ([papers/credit-card-fraud](papers/credit-card-fraud/index.md))
  - LLM × GNN 4편 ([papers/llm-gnn](papers/llm-gnn/index.md))
  - AML·암호화폐 3편 ([papers/aml-crypto](papers/aml-crypto/index.md))
  - 이질성·스펙트럼 3편 ([papers/heterophily-spectral](papers/heterophily-spectral/index.md))
  - 강건성·설명가능성 3편 ([papers/robustness-explainability](papers/robustness-explainability/index.md))
- 출처: arXiv / alphaXiv 및 주요 학회. LLM(Claude) 웹 검색 기반 큐레이션.

### 알려진 미확인 항목 (후속 검증 필요)
- `CaT-GNN` 정식 발표처(학회) 미확인 — arXiv 프리프린트로 표기.
- `detectGNN`, `HGNN+Attention` 의 데이터셋·수치·코드 일부 미확인.
- `Dynamic Fraud Detection (RL into GNN)` arXiv 버전 철회(withdrawn) — 일부 세부 미확인.
- `DGP` 발표 연도(AAAI 2025 vs 2026) 미확정 — AAAI 2026으로 표기.
- `Ride Hailing 서베이` arXiv ID(2512.23777)와 IEEE ICAIBD 2024 게재의 날짜 정합 미확인.
