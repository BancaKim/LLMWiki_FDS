---
type: Research Paper
title: "Advanced Financial Fraud Detection Using GNN-CL Model"
description: GNN+CNN+LSTM 하이브리드 금융 사기 탐지. MLP 유사도로 이웃 노이즈 제거, 강화학습으로 중심 노드 가중 조정.
resource: https://arxiv.org/abs/2407.06529
tags: [credit-card, hybrid, cnn, lstm, reinforcement-learning]
authors: Yu Cheng, Junjie Guo, Shiqing Long, You Wu, Mengfang Sun, Rong Zhang
venue: arXiv 2024
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# Advanced Financial Fraud Detection Using GNN-CL Model

[← 카테고리](index.md) · 원문: [arXiv:2407.06529](https://arxiv.org/abs/2407.06529)

- **저자**: Yu Cheng, Junjie Guo, Shiqing Long, You Wu, Mengfang Sun, Rong Zhang
- **발표처/연도**: arXiv 2024

## 문제 (Problem)
복잡한 거래 패턴을 다각도로 분석해 탐지 정확도·강건성을 높이고, **이웃 노이즈** 로 인한
오탐(false positive)을 줄여야 합니다.

## 방법 (Method)
**GNN + CNN + LSTM** 을 결합한 하이브리드. **MLP로 노드 유사도를 추정** 해 이웃 노이즈를 걸러내고,
**강화학습(RL) 전략** 으로 중심 노드 가중치를 동적 조정해 특징 약화(feature weakening)에 대응합니다.

## 핵심 기여 (Contributions)
- GNN(구조)·CNN(국소 패턴)·LSTM(시계열) **다중 모달 결합**
- MLP 기반 유사도 필터링으로 이웃 노이즈 제거
- RL 기반 중심 노드 가중 조정

## 결과·데이터셋 (Results)
[Yelp](../../datasets/yelpchi.md) 데이터에서 기존 기법 대비 우수한 성능 보고.

## 관련 링크
- 같은 흐름(RL+GNN): [Dynamic Fraud Detection](../robustness-explainability/rl-gnn-dynamic.md)

---
[← 카테고리](index.md)
