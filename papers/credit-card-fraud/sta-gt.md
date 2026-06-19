---
type: Research Paper
title: "STA-GT: Spatial-Temporal-Aware Graph Transformer for Transaction Fraud Detection"
description: 이종 그래프 위의 공간·시간 인식 Graph Transformer. 시간 인코딩과 트랜스포머로 장거리 노드 상호작용을 포착.
resource: https://arxiv.org/abs/2307.05121
tags: [credit-card, graph-transformer, spatial-temporal, heterogeneous]
venue: IEEE TII (Nov 2024)
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# STA-GT: Spatial-Temporal-Aware Graph Transformer for Transaction Fraud Detection

[← 카테고리](index.md) · 원문: [arXiv:2307.05121](https://arxiv.org/abs/2307.05121) · [IEEE Xplore](https://ieeexplore.ieee.org/document/10606962/)

- **발표처/연도**: IEEE Transactions on Industrial Informatics (TII), Vol.20 No.11, **Nov. 2024**
  (arXiv 최초 공개 2023)

## 문제 (Problem)
거래 사기는 **공간(위치)·시간** 의존성을 모두 가지며, 일반 GNN은 구조적 한계로 장거리·시간적 관계를
충분히 포착하지 못합니다.

## 방법 (Method)
**이종 그래프(heterogeneous graph)** 위의 **Spatial-Temporal-Aware Graph Transformer**. 거래를
노드로, 거래 위치 기반의 다양한 엣지 타입을 둡니다. **시간 인코딩 전략** 으로 시간 의존성을 GNN에
통합하고, **Transformer 모듈** 로 타깃 노드와 멀리 떨어진(long-distance) 관련 노드를 연결해 국소·전역
정보를 함께 학습합니다.

## 핵심 기여 (Contributions)
- 공간(위치)·시간 정보를 동시에 모델링하는 **이종 Graph Transformer**
- 시간 인코딩으로 시간 의존성 강화
- 장거리 노드 간 쌍별 상호작용으로 GNN 구조 한계 극복

## 결과·데이터셋 (Results)
두 금융 데이터에서 일반 GNN 및 GNN 기반 사기 탐지기 대비 효과 입증.

## 관련 링크
- 같은 흐름(Graph Transformer): [FraudGT](fraudgt.md)
- 같은 흐름(시간): [CaT-GNN](cat-gnn.md), [TeMP-TraG](../aml-crypto/temp-trag.md)

---
[← 카테고리](index.md)
