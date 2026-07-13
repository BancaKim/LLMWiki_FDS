---
type: Research Paper
title: "Dynamic Heterogeneous Graph Contrastive Learning for Financial Fraud Detection (근접 확인: TH-GCL)"
description: 시간·이종 그래프 + 대조학습으로 진화하는 카드 사기를 탐지. 사용자 요청 제목(2026)과 정확히 일치하는 논문은 미확인이며, 주제상 가장 근접한 확인 논문 TH-GCL(IEEE Access 2025)로 정리.
resource: https://ieeexplore.ieee.org/document/11127042/
tags: [dynamic, heterogeneous, contrastive-learning, temporal, credit-card, unverified-title]
authors: J. Wang, J. Liu, W. Zheng, Y. Ge
venue: IEEE Access 2025 (근접 확인)
year: 2025
timestamp: 2026-06-19T00:00:00Z
---

# Dynamic Heterogeneous Graph Contrastive Learning for Financial Fraud Detection

> ⚠️ **정확한 매칭 미확인**: 요청 목록의 *"Dynamic Heterogeneous Graph Contrastive Learning for
> Financial Fraud Detection (2026)"* 와 **정확히 일치하는 논문을 확인하지 못했습니다.** 아래는 주제상
> **가장 근접한 확인 논문**(TH-GCL, IEEE Access 2025)입니다. 원 제목/출처를 알려주시면 교체·보강하겠습니다.
> (참고 후보: HGSO-DVCL(Applied Sciences 2026), DyHDGE(2024), Dynamic Hypergraph Causal
> Intervention(Mathematics 2025) — 모두 미확인.)

[← 카테고리](index.md) · 그래프 구조 개념: [graph-types](../../concepts/graph-types.md)

## 1. 기본 정보 (근접 확인 논문)
- **제목**: Temporal Heterogeneous Graph Contrastive Learning for Fraud Detection in Credit Card Transactions (**TH-GCL**)
- **저자**: J. Wang, J. Liu, W. Zheng, Y. Ge
- **연도/발표처**: **2025 · IEEE Access** (pp. 145754–145771) *(⭐ 아님)*
- **링크**: [IEEE Access](https://ieeexplore.ieee.org/document/11127042/)

## 2. 연구 배경
- **문제**: **시간에 따라 진화** 하는 신용카드 사기 탐지.
- **기존 한계**: 단일 뷰 지도학습 GNN은 시간·구조 신호를 충분히 활용 못함.
- **왜 그래프**: 다중 타입 개체와 **행위의 시간적 진화**를 함께 담기 위해, 대조학습으로 강건성 보강.

## 3. 데이터셋
- **공개 — [IEEE-CIS Fraud Detection](../../datasets/ieee-cis.md)**.
- **노드 종류**: **사용자·거래·상점·기기(users/transactions/merchants/devices)**.
- **엣지 종류**: 이들 간 관계 + **시간 인식 엣지 가중(time-aware edge weights)**. **노드·엣지 수 (미확인)**.
- 보고: baseline 대비 AUC-ROC +5.2%, AUC-PR +8.7%.

## 4. 그래프 종류
- **Dynamic(Temporal) + Heterogeneous Graph**.
- **선택 이유**: 다중 타입 개체 + **행위의 시간적 진화**를 동시에 포착, 대조학습(증강 뷰)으로 강건성↑.

## 5. 모델 구조 (Pipeline)
```
거래(Raw)
↓ 시간 이종 그래프(사용자/거래/상점/기기, 시간 인식 엣지)
↓ 시간 인식 GNN 인코더(구조 + 시간)
↓ 이중 관점 대조학습(perturbation/masking 증강 뷰)
↓ 임베딩 → 분류 → Fraud Score
```

## 6. 사용한 GNN
- **시간 인식 이종 GNN(temporal heterogeneous GNN)** + 대조학습 목적함수. 기저 레이어(GCN/GAT/HGT)는
  **(미확인)**.
- **선택 이유**: 이종·시간·대조(robust) 신호를 결합하기 위해.

## 관련 링크
- 개념: [그래프 종류(동적·이종), 대조학습](../../concepts/graph-types.md) · 데이터셋: [IEEE-CIS](../../datasets/ieee-cis.md)
- 같은 흐름: [FFD-DHG](ffd-dhg.md), [MH-LGC](../llm-gnn/mh-lgc.md)(하이퍼그래프+대조)

---
[← 카테고리](index.md)
