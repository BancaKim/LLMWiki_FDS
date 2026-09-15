---
type: Index
title: 💳 신용카드·거래·금융 사기
description: 카드·거래·금융/계정 사기 탐지 GNN 논문 17편. 시간성·고차 관계·Graph Transformer·이종/동적 그래프·그래프 증강이 주요 흐름.
tags: [credit-card, transaction-fraud, heterogeneous, dynamic, gnn]
timestamp: 2026-06-19T00:00:00Z
---

# 💳 신용카드·거래·금융 사기 (Credit Card / Transaction / Financial Fraud)

[← 논문 모음](../index.md) · [번들 루트](../../index.md)

FDS의 가장 핵심적인 응용. 거래·계정을 노드로, 계좌·상점·기기 관계를 엣지로 모델링합니다.
시간성·고차 관계·Graph Transformer·**이종/동적 그래프**·그래프 증강이 주요 흐름입니다.
그래프 구조 관점은 [graph-types](../../concepts/graph-types.md) 참고.

> **범례**: ⭐ = 탑티어 학회/저널 게재 **필독**. 🏅 = 준-탑티어/우수 저널.
> ⭐ 5종(HOGRL·GTAN·RGTAN·Grad·GEM)은 코드/구현 있음([AI4Risk/antifraud](../../resources/ai4risk-antifraud.md) 등).

| ⭐ | 논문 | 연도/발표처 | 핵심 기법 | concept |
|:--:|------|------------|-----------|---------|
| ⭐ | HOGRL | **IJCAI 2024** | 고차 표현 + MoE 어텐션 | [hogrl.md](hogrl.md) |
| ⭐ | GTAN | **AAAI 2023** | 시간 어텐션 + risk propagation | [gtan.md](gtan.md) |
| ⭐ | RGTAN | **IEEE TKDE 2025** | risk-aware 표현 + GTGA (배포) | [rgtan.md](rgtan.md) |
| ⭐ | Grad | **WWW 2025** | guided relation diffusion 증강 | [grad.md](grad.md) |
| ⭐ | GEM (Alipay) | **CIKM 2018** (기반) | 계정-디바이스 이종 GNN | [hgnn-malicious-account.md](hgnn-malicious-account.md) |
| 🏅 | FraudGT | ICAIF 2024 | Graph Transformer (효율) | [fraudgt.md](fraudgt.md) |
| 🏅 | STA-GT | IEEE TII | 공간·시간 Graph Transformer | [sta-gt.md](sta-gt.md) |
|   | CaT-GNN | arXiv 2024 | 인과·시간 GNN | [cat-gnn.md](cat-gnn.md) |
|   | GNN-CL | arXiv 2024 | GNN+CNN+LSTM 하이브리드 | [gnn-cl.md](gnn-cl.md) |
|   | detectGNN | arXiv 2025 | 동적 거래 그래프 | [detectgnn.md](detectgnn.md) |
|   | HGNN + Graph Attention | arXiv 2025 | 이종 GNN + GAT + SMOTE | [hgnn-graph-attention.md](hgnn-graph-attention.md) |
|   | HG Auto-Encoder (HGAE) | arXiv 2024 | 이종 그래프 오토인코더 | [hg-autoencoder.md](hg-autoencoder.md) |
|   | FFD-DHG | Intelligent Computing 2026 | 동적 이종 그래프(기업 재무사기) | [ffd-dhg.md](ffd-dhg.md) |
|   | Dynamic HG Contrastive (TH-GCL) | IEEE Access 2025 | 시간 이종 그래프 + 대조학습 | [dynamic-hg-contrastive.md](dynamic-hg-contrastive.md) |
|   | RGCN Customer Contact | arXiv 2025 | RGCN + 운영 효율 | [rgcn-customer-contact.md](rgcn-customer-contact.md) |
|   | OES-GNN | arXiv 2026 | One-side Edge Sampling(효율) | [oes-gnn.md](oes-gnn.md) |
|   | STC-MixHop | arXiv 2026 | 동적·다중스케일(MixHop)+시간일관성 | [stc-mixhop.md](stc-mixhop.md) |

> 관련 데이터셋: [YelpChi](../../datasets/yelpchi.md) · [Amazon](../../datasets/amazon.md) ·
> [FFSD](../../datasets/ffsd.md) · [IEEE-CIS](../../datasets/ieee-cis.md) · [FiGraph](../../datasets/figraph.md) ·
> [DGraph-Fin](../../datasets/dgraph-fin.md) · 코드: [AI4Risk/antifraud](../../resources/ai4risk-antifraud.md)

---
[← 이전: 서베이](../surveys/index.md) · [다음: LLM × GNN →](../llm-gnn/index.md)
