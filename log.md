---
type: Changelog
title: Change Log
description: Chronological history of changes to this OKF bundle.
timestamp: 2026-06-18T00:00:00Z
---

# Change Log

OKF 예약 파일입니다. 번들의 변경 이력을 시간 순으로 기록합니다.

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
