---
type: Index
title: 💳 신용카드·거래 사기
description: 카드·트랜잭션 단위 사기 탐지 GNN 논문 12편. 시간성·고차 관계·Graph Transformer·그래프 증강이 주요 흐름.
tags: [credit-card, transaction-fraud, gnn]
timestamp: 2026-06-19T00:00:00Z
---

# 💳 신용카드·거래 사기 (Credit Card & Transaction Fraud)

[← 논문 모음](../index.md) · [번들 루트](../../index.md)

FDS의 가장 핵심적인 응용. 거래를 노드로, 계좌·상점·기기 관계를 엣지로 모델링합니다.
시간성·고차 관계·Graph Transformer·그래프 증강이 주요 흐름입니다.

> **범례**: ⭐ = 탑티어 학회/저널 게재 **필독(MUST-READ)**. 🏅 = 준-탑티어/우수 저널.
> ⭐ 4종(HOGRL·GTAN·RGTAN·Grad)은 [AI4Risk/antifraud](../../resources/ai4risk-antifraud.md)에 구현 있음.

| ⭐ | 논문 | 연도/발표처 | 핵심 기법 | concept |
|:--:|------|------------|-----------|---------|
| ⭐ | HOGRL | **IJCAI 2024** | 고차 표현 + MoE 어텐션 | [hogrl.md](hogrl.md) |
| ⭐ | GTAN | **AAAI 2023** | 시간 어텐션 + risk propagation (준지도) | [gtan.md](gtan.md) |
| ⭐ | RGTAN | **IEEE TKDE 2025** | risk-aware 표현 + GTGA (배포) | [rgtan.md](rgtan.md) |
| ⭐ | Grad | **WWW 2025** | guided relation diffusion 그래프 증강 | [grad.md](grad.md) |
| 🏅 | FraudGT | ICAIF 2024 | Graph Transformer (효율) | [fraudgt.md](fraudgt.md) |
| 🏅 | STA-GT | IEEE TII | 공간·시간 Graph Transformer | [sta-gt.md](sta-gt.md) |
|   | CaT-GNN | arXiv 2024 | 인과·시간 GNN | [cat-gnn.md](cat-gnn.md) |
|   | GNN-CL | arXiv 2024 | GNN+CNN+LSTM 하이브리드 | [gnn-cl.md](gnn-cl.md) |
|   | detectGNN | arXiv 2025 | 동적 거래 그래프 | [detectgnn.md](detectgnn.md) |
|   | HGNN + Graph Attention | arXiv 2025 | 이종 GNN + SMOTE | [hgnn-graph-attention.md](hgnn-graph-attention.md) |
|   | RGCN Customer Contact | arXiv 2025 | RGCN + 운영 효율 | [rgcn-customer-contact.md](rgcn-customer-contact.md) |
|   | OES-GNN | arXiv 2026 | One-side Edge Sampling(학습 효율) | [oes-gnn.md](oes-gnn.md) |

> 관련 데이터셋: [YelpChi](../../datasets/yelpchi.md), [Amazon](../../datasets/amazon.md),
> [FFSD](../../datasets/ffsd.md), [DGraph-Fin](../../datasets/dgraph-fin.md) ·
> 코드: [AI4Risk/antifraud](../../resources/ai4risk-antifraud.md)

---
[← 이전: 서베이](../surveys/index.md) · [다음: LLM × GNN →](../llm-gnn/index.md)
