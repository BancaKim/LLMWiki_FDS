---
type: Index
title: 💳 신용카드·거래 사기
description: 카드·트랜잭션 단위 사기 탐지 GNN 논문 8편. 시간성·고차 관계·Graph Transformer가 주요 흐름.
tags: [credit-card, transaction-fraud, gnn]
timestamp: 2026-06-18T00:00:00Z
---

# 💳 신용카드·거래 사기 (Credit Card & Transaction Fraud)

[← 논문 모음](../index.md) · [번들 루트](../../index.md)

FDS의 가장 핵심적인 응용. 거래를 노드로, 계좌·상점·기기 관계를 엣지로 모델링합니다.
시간성·고차 관계·Graph Transformer가 주요 흐름입니다.

| 논문 | 연도 | 핵심 기법 | concept |
|------|:----:|-----------|---------|
| CaT-GNN | 2024 | 인과·시간 GNN | [cat-gnn.md](cat-gnn.md) |
| HOGRL | 2024 | 고차 표현 + MoE 어텐션 | [hogrl.md](hogrl.md) |
| GNN-CL | 2024 | GNN+CNN+LSTM 하이브리드 | [gnn-cl.md](gnn-cl.md) |
| FraudGT | 2024 | Graph Transformer (효율) | [fraudgt.md](fraudgt.md) |
| STA-GT | 2024 | 공간·시간 Graph Transformer | [sta-gt.md](sta-gt.md) |
| detectGNN | 2025 | 동적 거래 그래프 | [detectgnn.md](detectgnn.md) |
| HGNN + Graph Attention | 2025 | 이종 GNN + SMOTE | [hgnn-graph-attention.md](hgnn-graph-attention.md) |
| RGCN Customer Contact | 2025 | RGCN + 운영 효율 | [rgcn-customer-contact.md](rgcn-customer-contact.md) |

> 관련 데이터셋: [YelpChi](../../datasets/yelpchi.md), [Amazon](../../datasets/amazon.md),
> [FFSD](../../datasets/ffsd.md), [DGraph-Fin](../../datasets/dgraph-fin.md)

---
[← 이전: 서베이](../surveys/index.md) · [다음: LLM × GNN →](../llm-gnn/index.md)
