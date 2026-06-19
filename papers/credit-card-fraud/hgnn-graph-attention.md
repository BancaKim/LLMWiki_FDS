---
type: Research Paper
title: "Detecting Credit Card Fraud via Heterogeneous Graph Neural Networks with Graph Attention"
description: 사용자·상점·거래 이종 그래프 + Graph Attention + 시간 감쇠. SMOTE·비용민감 학습으로 불균형 대응. GCN/GAT/GraphSAGE 대비 개선.
resource: https://arxiv.org/abs/2504.08183
tags: [credit-card, heterogeneous, graph-attention, smote, cost-sensitive, imbalance]
authors: Qiuwu Sha, Tengda Tang, Xinyu Du, Jie Liu, Yixian Wang, Yuan Sheng
venue: arXiv 2025 (IEEE AINIT 2025로 보고됨)
year: 2025
timestamp: 2026-06-18T00:00:00Z
---

# Detecting Credit Card Fraud via Heterogeneous Graph Neural Networks with Graph Attention

[← 카테고리](index.md) · 원문: [arXiv:2504.08183](https://arxiv.org/abs/2504.08183)

- **저자**: Qiuwu Sha, Tengda Tang, Xinyu Du, Jie Liu, Yixian Wang, Yuan Sheng
- **발표처/연도**: 2025 (IEEE AINIT 2025로 보고됨)

## 문제 (Problem)
개별 거래의 수치 특징만 쓰는 전통 ML은 복잡한 거래 네트워크의 **고차 관계** 를 포착하지 못합니다.

## 방법 (Method)
**이종 GNN(HGNN)** 으로 사용자·상점·거래를 서로 다른 노드 타입으로 갖는 이종 거래 그래프를 구성.
**Graph Attention** 으로 관계 유형별 가중치를 동적 부여하고, **시간 감쇠(temporal decay)**
메커니즘으로 시간 관련 사기 패턴 민감도를 높입니다. 사기 표본 희소성은 **SMOTE 오버샘플링 + 비용
민감 학습(cost-sensitive learning)** 으로 완화합니다.

## 핵심 기여 (Contributions)
- 사용자/상점/거래 **이종 그래프** 구성으로 고차 관계 포착
- Graph Attention으로 관계별 동적 가중
- 시간 감쇠 + **SMOTE·비용민감 학습** 으로 불균형 대응

## 결과·데이터셋 (Results)
[GCN/GAT/GraphSAGE](../../concepts/glossary.md) 등 기존 GNN 대비 정확도·AUC 개선 보고
*(구체 데이터셋·수치 미확인)*.

## 관련 링크
- 개념: [클래스 불균형](../../concepts/overview.md), [이종 그래프](../../concepts/taxonomy.md)

---
[← 카테고리](index.md)
