---
type: Index
title: 논문 모음 (Papers)
description: 2024–2026 GNN × FDS 논문 30편을 6개 주제로 분류한 concept 모음. ⭐ = 탑티어 학회 필독 논문.
tags: [papers, index, gnn, fds, 2024, 2025, 2026, must-read]
timestamp: 2026-06-19T00:00:00Z
---

# 논문 모음 (Papers)

[← 번들 루트](../index.md) · 배경은 [개념 목록](../concepts/index.md)

GNN과 FDS를 연계한 **2024–2026** 논문 30편입니다. 각 논문은 `문제 → 방법 → 기여 → 결과 → 링크`
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

> 🏅 **참고(준-탑티어/우수 저널)**: [FraudGT](credit-card-fraud/fraudgt.md)(ICAIF 2024),
> [STA-GT](credit-card-fraud/sta-gt.md)(IEEE TII).

## 주제별 디렉터리
| 주제 | 논문 수 | ⭐ 필독 | 바로가기 |
|------|:------:|:------:|----------|
| 📊 서베이·리뷰 | 3 | 0 | [surveys/index.md](surveys/index.md) |
| 💳 신용카드·거래 사기 | 9 | 1 | [credit-card-fraud/index.md](credit-card-fraud/index.md) |
| 🤖 LLM × GNN | 7 | 4 | [llm-gnn/index.md](llm-gnn/index.md) |
| 🏦 AML·암호화폐 | 4 | 1 | [aml-crypto/index.md](aml-crypto/index.md) |
| 🌐 이질성·스펙트럼 | 3 | 3 | [heterophily-spectral/index.md](heterophily-spectral/index.md) |
| 🛡️ 강건성·설명가능성 | 4 | 2 | [robustness-explainability/index.md](robustness-explainability/index.md) |
| **합계** | **30** | **11** | — |

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

### 기반 논문 (2023 공개 → 2024 게재 등, 2개년 맥락 포함)
| 논문 | 발표처 | 주제 | concept |
|------|--------|------|---------|
| Graph-LLM XAI Framework | arXiv 2023 | LLM×GNN | [link](llm-gnn/graph-llm-xai.md) |

> ⚠️ 일부 발표처·연도·수치는 *(미확인)* 항목이 있습니다. 자세한 내용은 각 concept 의 본문 및
> [log.md](../log.md) 참고.

---
[← 번들 루트](../index.md) · [개념 목록 →](../concepts/index.md)
