---
type: Knowledge Base
title: GNN × FDS — LLM Wiki
description: An Open Knowledge Format (OKF) bundle curating 2024–2026 research that connects Graph Neural Networks (GNN) with Fraud Detection Systems (FDS).
tags: [gnn, fraud-detection, fds, graph-anomaly-detection, llm-wiki, okf]
timestamp: 2026-06-18T00:00:00Z
---

# GNN × FDS — LLM Wiki (OKF Bundle)

> **그래프 신경망(GNN)과 이상거래·사기 탐지(FDS)를 연계한 최근 2개년(2024–2026) 논문 위키.**
> 본 번들은 [Open Knowledge Format (OKF) v0.1](https://cloud.google.com/blog/products/data-analytics/how-the-open-knowledge-format-can-improve-data-sharing) 사양을 따릅니다.

이 위키는 arXiv / alphaXiv 및 주요 학회(NeurIPS, ICLR, KDD, AAAI, IJCAI, CIKM, ICAIF 등)에 공개된
**GNN 기반 Fraud Detection System** 연구 24편을 OKF **concept** 문서로 정리합니다.

## 이 번들의 구조 (OKF)

이 저장소는 OKF **bundle** 입니다. 각 markdown 파일은 하나의 **concept** 이며, YAML frontmatter
(필수 `type` 필드)와 markdown 본문으로 구성됩니다. 파일 간 markdown 링크가 **지식 그래프** 를 형성합니다.

```
.
├── index.md                 ← (현재 문서) 번들 루트 / progressive disclosure
├── log.md                   ← 변경 이력 (OKF 예약 파일)
├── concepts/                ← 배경 개념 (개요·분류·용어·동향)
├── datasets/                ← 벤치마크 데이터셋 concept
└── papers/                  ← 논문 concept (6개 주제 디렉터리)
```

## 🧭 탐색 (Progressive Disclosure)

| 영역 | 설명 | 바로가기 |
|------|------|----------|
| 📚 배경 개념 | GNN×FDS 개요·분류·용어·동향 | [concepts/index.md](concepts/index.md) |
| 🧪 데이터셋 | 표준 벤치마크 데이터셋 | [datasets/index.md](datasets/index.md) |
| 📄 논문 | 24편 논문 (6개 주제) | [papers/index.md](papers/index.md) |

### 주제별 논문 디렉터리

> **범례**: ⭐ = **탑티어 학회 게재 필독(MUST-READ)** 논문 (ICLR · KDD · AAAI · IJCAI · CIKM · ACM MM 등).

| 주제 | 논문 수 | ⭐ 필독 | 바로가기 |
|------|:------:|:------:|----------|
| 📊 서베이·리뷰 | 3 | 0 | [papers/surveys/index.md](papers/surveys/index.md) |
| 💳 신용카드·거래 사기 | 8 | 1 | [papers/credit-card-fraud/index.md](papers/credit-card-fraud/index.md) |
| 🤖 LLM × GNN | 4 | 3 | [papers/llm-gnn/index.md](papers/llm-gnn/index.md) |
| 🏦 AML·암호화폐 | 3 | 1 | [papers/aml-crypto/index.md](papers/aml-crypto/index.md) |
| 🌐 이질성·스펙트럼 | 3 | 3 | [papers/heterophily-spectral/index.md](papers/heterophily-spectral/index.md) |
| 🛡️ 강건성·설명가능성 | 3 | 2 | [papers/robustness-explainability/index.md](papers/robustness-explainability/index.md) |

### ⭐ 필독 논문 (탑티어 학회) — 10편

처음 읽는다면 아래 ⭐ 논문부터 보세요. 전체 목록·범례는 [papers/index.md](papers/index.md).

| ⭐ | 논문 | 발표처 | concept |
|:--:|------|--------|---------|
| ⭐ | PMP | **ICLR 2024** | [papers/heterophily-spectral/pmp.md](papers/heterophily-spectral/pmp.md) |
| ⭐ | SEC-GFD | **AAAI 2024** | [papers/heterophily-spectral/sec-gfd.md](papers/heterophily-spectral/sec-gfd.md) |
| ⭐ | SEFraud | **KDD 2024** | [papers/robustness-explainability/sefraud.md](papers/robustness-explainability/sefraud.md) |
| ⭐ | HOGRL | **IJCAI 2024** | [papers/credit-card-fraud/hogrl.md](papers/credit-card-fraud/hogrl.md) |
| ⭐ | DIAM | **CIKM 2024** | [papers/aml-crypto/diam.md](papers/aml-crypto/diam.md) |
| ⭐ | HUGE | **AAAI 2025** | [papers/heterophily-spectral/huge.md](papers/heterophily-spectral/huge.md) |
| ⭐ | MonTi | **AAAI 2025** | [papers/robustness-explainability/monti.md](papers/robustness-explainability/monti.md) |
| ⭐ | FLAG | **KDD 2025** | [papers/llm-gnn/flag.md](papers/llm-gnn/flag.md) |
| ⭐ | MLED | **ACM MM 2025** | [papers/llm-gnn/mled.md](papers/llm-gnn/mled.md) |
| ⭐ | DGP | **AAAI 2026** | [papers/llm-gnn/dgp.md](papers/llm-gnn/dgp.md) |

## 🔑 핵심 요약 (TL;DR)

- **왜 GNN인가**: 사기는 관계망 속에서 일어난다. GNN은 계좌·상점·기기·사용자 간 연결을 학습해
  전통적 tabular ML이 못 보는 **공모·위장 패턴**을 포착한다. → [개요](concepts/overview.md)
- **3대 난제**: 이질성(heterophily), 클래스 불균형, 위장·공모(camouflage/collusion).
- **2024–2026 트렌드**: 이질성·스펙트럼 메시지 패싱 · LLM×GNN 융합 · Graph Transformer ·
  시간/인과 모델링 · 강건성·XAI · 파운데이션/지속학습. → [동향·과제](concepts/trends-and-challenges.md)

> ⚠️ **정확성 안내**: 본 위키는 LLM(Claude)이 웹 검색으로 수집·요약했습니다. 핵심 사실은
> 교차 검증했으나 일부 세부 수치·저자·발표처는 원문 확인이 필요할 수 있어 *(미확인)* 으로 표기했습니다.
> 인용 전 각 concept 문서의 `resource` 링크(원문)를 확인하세요.

*최종 갱신: 2026-06-19 · 변경 이력: [log.md](log.md)*
