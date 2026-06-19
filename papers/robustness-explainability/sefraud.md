---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "SEFraud: Graph-based Self-Explainable Fraud Detection via Interpretative Mask Learning"
description: 학습 가능한 특징·엣지 마스크로 예측과 설명을 동시에 내놓는 자기설명 이종 그래프 트랜스포머. ICBC 실배포, 추론 약 10배 가속.
resource: https://arxiv.org/abs/2406.11389
tags: [explainability, self-explainable, mask-learning, heterogeneous, triplet-loss, deployed]
authors: Kaidi Li, Tianmeng Yang, Min Zhou, et al.
venue: KDD 2024
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# ⭐ SEFraud: Graph-based Self-Explainable Fraud Detection via Interpretative Mask Learning

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **KDD 2024**

[← 카테고리](index.md) · 원문: [arXiv:2406.11389](https://arxiv.org/abs/2406.11389)

- **저자**: Kaidi Li, Tianmeng Yang, Min Zhou 외
- **발표처/연도**: KDD 2024 (30th ACM SIGKDD)

## 문제 (Problem)
사기 탐지의 정확도 연구는 많지만 **해석가능성** 은 소홀히 다뤄집니다. 사후(post-hoc) 설명기(예:
GNNExplainer)는 모델 자체 예측을 개선하지 못하고 **연산 비용** 이 커 실서비스에 부적합합니다.

## 방법 (Method)
**SEFraud** 는 탐지와 설명을 함께 수행하는 자기설명(self-explainable) 프레임워크. 맞춤형 **이종 그래프
트랜스포머** 에 학습 가능한 **특징 마스크(feature mask)** 와 **엣지 마스크(edge mask)** 를 두어 이종
거래에 대한 표현을 학습하고, 새로운 **triplet loss** 로 마스크 학습을 강화해 **내장(non-post-hoc)
설명** 을 제공합니다.

## 핵심 기여 (Contributions)
- 학습 가능한 특징·엣지 마스크로 **내재적 설명**(자기설명)
- 새로운 triplet loss를 갖춘 **맞춤형 이종 그래프 트랜스포머**
- 사후 설명기 대비 **추론 약 10배 가속**, 실서비스 배포

## 결과·데이터셋 (Results)
[YelpChi](../../datasets/yelpchi.md), [Amazon](../../datasets/amazon.md), ICBC 금융 데이터에서 평가.
차순위 베이스라인 대비 **AUC ≈ +8.6%, Recall ≈ +8.5%**, 추론 약 10배 빠름. **ICBC 실배포**.

## 관련 링크
- 개념: [자기설명, XAI, post-hoc](../../concepts/glossary.md)
- 같은 흐름(설명가능): [SAGE-FIN](../aml-crypto/sage-fin.md), [Graph-LLM XAI](../llm-gnn/graph-llm-xai.md)

---
[← 카테고리](index.md)
