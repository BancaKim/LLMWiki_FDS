---
type: Changelog
title: Change Log
description: Chronological history of changes to this OKF bundle.
timestamp: 2026-06-18T00:00:00Z
---

# Change Log

OKF 예약 파일입니다. 번들의 변경 이력을 시간 순으로 기록합니다.

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
