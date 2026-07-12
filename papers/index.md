---
type: Index
title: 논문 모음 (Papers)
description: 2020–2026 GNN × FDS 논문 37편을 6개 주제로 분류한 concept 모음(핵심 기반 논문 포함). ⭐ = 탑티어 학회 필독 논문.
tags: [papers, index, gnn, fds, 2024, 2025, 2026, must-read]
timestamp: 2026-06-19T00:00:00Z
---

# 논문 모음 (Papers)

[← 번들 루트](../index.md) · 배경은 [개념 목록](../concepts/index.md)

GNN과 FDS를 연계한 논문 37편입니다(주력은 **2024–2026**, 일부 핵심 **기반 논문** 포함). 각 논문은 `문제 → 방법 → 기여 → 결과 → 링크`
양식의 concept 문서입니다.

> **범례**: ⭐ = **탑티어 학회 게재 필독(MUST-READ) 논문** (ICLR · KDD · AAAI · IJCAI · CIKM · ACM MM 등).
> 처음 읽는다면 ⭐ 부터 보세요.

## ⭐ 필독 논문 (탑티어 학회) — 빠른 시작

| ⭐ | 논문 | 발표처 | 주제 | concept |
|:--:|------|--------|------|---------|
| ⭐ | PMP: Partitioning Message Passing | **ICLR 2024** | 이질성 | [link](heterophily-spectral/pmp.md) |
| ⭐ | SEC-GFD: Heterophily & Spectrum | **AAAI 2024** | 이질성 | [link](heterophily-spectral/sec-gfd.md) |
| ⭐ | SEFraud: Self-Explainable | **KDD 2024** | 설명가능성 | [link](robustness-explainability/sefraud.md) |
| ⭐ | HOGRL: High-order Representation | **IJCAI 2024** | 카드·거래 | [link](credit-card-fraud/hogrl.md) |
| ⭐ | DIAM: Crypto MultiGraphs | **CIKM 2024** | AML·암호화폐 | [link](aml-crypto/diam.md) |
| ⭐ | HUGE: Label-Free Heterophily | **AAAI 2025** | 이질성 | [link](heterophily-spectral/huge.md) |
| ⭐ | MonTi: Fraud Gang Attacks | **AAAI 2025** | 강건성 | [link](robustness-explainability/monti.md) |
| ⭐ | FLAG: LLM-enhanced GNN | **KDD 2025** | LLM×GNN | [link](llm-gnn/flag.md) |
| ⭐ | MLED: Multi-level LLM | **ACM MM 2025** | LLM×GNN | [link](llm-gnn/mled.md) |
| ⭐ | DGP: Dual-Granularity Prompting | **AAAI 2026** | LLM×GNN | [link](llm-gnn/dgp.md) |
| ⭐ | MH-LGC: Borderline Fraudsters | **AAAI 2026** | LLM×GNN | [link](llm-gnn/mh-lgc.md) |
| ⭐ | GTAN: Attribute-driven Graph Repr. | **AAAI 2023** | 카드·거래 | [link](credit-card-fraud/gtan.md) |
| ⭐ | RGTAN: Risk-aware Graph Repr. | **IEEE TKDE 2025** | 카드·거래 | [link](credit-card-fraud/rgtan.md) |
| ⭐ | Grad: Guided Relation Diffusion | **WWW 2025** | 카드·거래 | [link](credit-card-fraud/grad.md) |
| ⭐ | DGA-GNN: Dynamic Grouping Aggregation | **AAAI 2024** | 이질성·GFD | [link](heterophily-spectral/dga-gnn.md) |
| ⭐ | GAAP: Attribute-Association Aggregation | **AAAI 2025** | 이질성·GFD | [link](heterophily-spectral/gaap.md) |
| ⭐ | CARE-GNN: Camouflage-Resistant | **CIKM 2020** | 이질성·GFD | [link](heterophily-spectral/care-gnn.md) |
| ⭐ | PC-GNN: Pick and Choose | **WWW 2021** | 이질성·GFD | [link](heterophily-spectral/pc-gnn.md) |

> 🏅 **참고(준-탑티어/우수 저널)**: [FraudGT](credit-card-fraud/fraudgt.md)(ICAIF 2024),
> [STA-GT](credit-card-fraud/sta-gt.md)(IEEE TII).

## 주제별 디렉터리
| 주제 | 논문 수 | ⭐ 필독 | 바로가기 |
|------|:------:|:------:|----------|
| 📊 서베이·리뷰 | 3 | 0 | [surveys/index.md](surveys/index.md) |
| 💳 신용카드·거래 사기 | 12 | 4 | [credit-card-fraud/index.md](credit-card-fraud/index.md) |
| 🤖 LLM × GNN | 7 | 4 | [llm-gnn/index.md](llm-gnn/index.md) |
| 🏦 AML·암호화폐 | 4 | 1 | [aml-crypto/index.md](aml-crypto/index.md) |
| 🌐 이질성·스펙트럼·핵심 GFD | 7 | 7 | [heterophily-spectral/index.md](heterophily-spectral/index.md) |
| 🛡️ 강건성·설명가능성 | 4 | 2 | [robustness-explainability/index.md](robustness-explainability/index.md) |
| **합계** | **37** | **18** | — |

## 전체 논문 색인 (연도순)

### 2024
| 논문 | 발표처 | 주제 | concept |
|------|--------|------|---------|
| GNN for Financial Fraud Detection: A Review | arXiv/FCS | 서베이 | [link](surveys/gnn-financial-fraud-review.md) |
| GNN for Fraud Detection in Ride Hailing (Survey) | IEEE ICAIBD | 서베이 | [link](surveys/gnn-ride-hailing-survey.md) |
| CaT-GNN | arXiv | 카드·거래 | [link](credit-card-fraud/cat-gnn.md) |
| ⭐ HOGRL | **IJCAI 2024** | 카드·거래 | [link](credit-card-fraud/hogrl.md) |
| GNN-CL | arXiv | 카드·거래 | [link](credit-card-fraud/gnn-cl.md) |
| FraudGT | ICAIF 2024 | 카드·거래 | [link](credit-card-fraud/fraudgt.md) |
| STA-GT | IEEE TII | 카드·거래 | [link](credit-card-fraud/sta-gt.md) |
| ⭐ DIAM | **CIKM 2024** | AML·암호화폐 | [link](aml-crypto/diam.md) |
| ⭐ PMP | **ICLR 2024** | 이질성 | [link](heterophily-spectral/pmp.md) |
| ⭐ SEC-GFD | **AAAI 2024** | 이질성 | [link](heterophily-spectral/sec-gfd.md) |
| ⭐ DGA-GNN | **AAAI 2024** | 이질성·GFD | [link](heterophily-spectral/dga-gnn.md) |
| ⭐ MonTi | **AAAI 2025** | 강건성 | [link](robustness-explainability/monti.md) |
| Dynamic Fraud Detection (RL into GNN) | arXiv | 강건성 | [link](robustness-explainability/rl-gnn-dynamic.md) |
| ⭐ SEFraud | **KDD 2024** | 설명가능성 | [link](robustness-explainability/sefraud.md) |

### 2025
| 논문 | 발표처 | 주제 | concept |
|------|--------|------|---------|
| Continual Graph Learning for AML (Review) | arXiv/WIREs | 서베이 | [link](surveys/continual-graph-learning-aml-review.md) |
| detectGNN | arXiv/ISDFS | 카드·거래 | [link](credit-card-fraud/detectgnn.md) |
| HGNN + Graph Attention (credit card) | arXiv/AINIT | 카드·거래 | [link](credit-card-fraud/hgnn-graph-attention.md) |
| RGCN Customer Contact Workflow | arXiv | 카드·거래 | [link](credit-card-fraud/rgcn-customer-contact.md) |
| ⭐ FLAG | **KDD 2025** | LLM×GNN | [link](llm-gnn/flag.md) |
| ⭐ MLED | **ACM MM 2025** | LLM×GNN | [link](llm-gnn/mled.md) |
| TeMP-TraG | arXiv | AML·암호화폐 | [link](aml-crypto/temp-trag.md) |
| SAGE-FIN | arXiv | AML·암호화폐 | [link](aml-crypto/sage-fin.md) |
| ⭐ HUGE | **AAAI 2025** | 이질성 | [link](heterophily-spectral/huge.md) |
| ⭐ RGTAN | **IEEE TKDE 2025** | 카드·거래 | [link](credit-card-fraud/rgtan.md) |
| ⭐ Grad | **WWW 2025** | 카드·거래 | [link](credit-card-fraud/grad.md) |
| ⭐ GAAP | **AAAI 2025** | 이질성·GFD | [link](heterophily-spectral/gaap.md) |

### 2026
| 논문 | 발표처 | 주제 | concept |
|------|--------|------|---------|
| ⭐ DGP | **AAAI 2026** | LLM×GNN | [link](llm-gnn/dgp.md) |
| ⭐ MH-LGC | **AAAI 2026** | LLM×GNN | [link](llm-gnn/mh-lgc.md) |
| FraudCoT | arXiv 2026 | LLM×GNN | [link](llm-gnn/fraudcot.md) |
| LGSPF | arXiv 2026 | LLM×GNN | [link](llm-gnn/lgspf.md) |
| UniDetect | arXiv 2026 | AML·암호화폐 | [link](aml-crypto/unidetect.md) |
| OES-GNN | arXiv 2026 | 카드·거래 | [link](credit-card-fraud/oes-gnn.md) |
| GAD in the Wild (benchmark) | arXiv 2026 | 강건성 | [link](robustness-explainability/gad-in-the-wild.md) |

### 기반 논문 (2020–2023 — 이후 연구의 토대)
| 논문 | 발표처 | 주제 | concept |
|------|--------|------|---------|
| ⭐ CARE-GNN | **CIKM 2020** | 이질성·GFD | [link](heterophily-spectral/care-gnn.md) |
| ⭐ PC-GNN | **WWW 2021** | 이질성·GFD | [link](heterophily-spectral/pc-gnn.md) |
| ⭐ GTAN | **AAAI 2023** | 카드·거래 | [link](credit-card-fraud/gtan.md) |
| Graph-LLM XAI Framework | arXiv 2023 | LLM×GNN | [link](llm-gnn/graph-llm-xai.md) |

> ⚠️ 일부 발표처·연도·수치는 *(미확인)* 항목이 있습니다. 자세한 내용은 각 concept 의 본문 및
> [log.md](../log.md) 참고.

---
[← 번들 루트](../index.md) · [개념 목록 →](../concepts/index.md)
