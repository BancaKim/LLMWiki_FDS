---
type: Research Paper
title: "CaT-GNN: Enhancing Credit Card Fraud Detection via Causal Temporal Graph Neural Networks"
description: 인과 불변학습을 거래 그래프에 적용해 강건성·해석가능성을 높인 신용카드 사기 탐지 GNN. Causal-Inspector / Causal-Intervener 모듈.
resource: https://arxiv.org/abs/2402.14708
tags: [credit-card, temporal, causal, invariant-learning]
authors: Yifan Duan, Guibin Zhang, Shilong Wang, Xiaojiang Peng, et al.
venue: arXiv 2024
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# CaT-GNN: Enhancing Credit Card Fraud Detection via Causal Temporal Graph Neural Networks

[← 카테고리](index.md) · 원문: [arXiv:2402.14708](https://arxiv.org/abs/2402.14708)

- **저자**: Yifan Duan, Guibin Zhang, Shilong Wang, Xiaojiang Peng, Ziqi Wang, Junyuan Mao, Hao Wu, Xinke Jiang, Kun Wang
- **발표처/연도**: arXiv 2024 (v1 2월, v2 11월) *(정식 게재 학회 미확인)*

## 문제 (Problem)
기존 GNN 탐지기는 노드의 지역 그래프 구조가 예측에 미치는 **인과 효과**를 간과해 강건성·해석가능성이
떨어집니다.

## 방법 (Method)
**인과 불변학습(causal invariant learning)** 을 거래 그래프에 적용. 탐지를 *발견 단계* 와 *개입 단계*
로 분해하며 두 핵심 모듈을 둡니다.
- **Causal-Inspector**: 시간 어텐션 가중치를 재활용해 **추가 파라미터 없이** 인과 노드와 환경
  노드를 구분.
- **Causal-Intervener**: 환경 노드에 인과적 **mixup 증강** 을 수행해 강건성·해석가능성 향상.

## 핵심 기여 (Contributions)
- 신용카드 사기 탐지에 **인과 불변학습** 도입
- 파라미터 없이 인과/환경 노드를 분리하는 Causal-Inspector
- 환경 노드 mixup 기반 Causal-Intervener

## 결과·데이터셋 (Results)
[YelpChi](../../datasets/yelpchi.md), [Amazon](../../datasets/amazon.md)(공개) + [FFSD](../../datasets/ffsd.md)(사내).
세 데이터 모두 최고 AUC 보고 (≈ **0.9035 / 0.9706 / 0.8281**).

## 관련 링크
- 개념: [위장·공모 대응](../../concepts/overview.md), [인과 불변학습](../../concepts/glossary.md)
- 같은 흐름(시간·인과): [TeMP-TraG](../aml-crypto/temp-trag.md)

---
[← 카테고리](index.md)
