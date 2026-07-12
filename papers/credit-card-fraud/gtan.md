---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "GTAN: Semi-supervised Credit Card Fraud Detection via Attribute-Driven Graph Representation"
description: 시간 거래 그래프에 Gated Temporal Attention Network(GTAN)로 메시지를 전파하고 거래 간 risk propagation으로 사기 패턴을 모델링하는 준지도 GNN. AI4Risk/antifraud의 대표 baseline.
resource: https://arxiv.org/abs/2412.18287
tags: [credit-card, temporal, attention, semi-supervised, risk-propagation, must-read]
venue: AAAI 2023
year: 2023
timestamp: 2026-06-19T00:00:00Z
---

# ⭐ GTAN: Semi-supervised Credit Card Fraud Detection via Attribute-Driven Graph Representation

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **AAAI 2023** (기반 논문)

[← 카테고리](index.md) · 원문: [arXiv:2412.18287](https://arxiv.org/abs/2412.18287) · [AAAI 2023](https://ojs.aaai.org/index.php/AAAI/article/view/26702)

- **발표처/연도**: AAAI 2023 *(2개년 직전 기반 논문 — 이후 RGTAN·HOGRL 등의 토대)*
- **코드**: [AI4Risk/antifraud](https://github.com/AI4Risk/antifraud) — 이 위키의 [리소스](../../resources/ai4risk-antifraud.md) 참고

## 문제 (Problem)
신용카드 사기 탐지는 **라벨이 매우 부족**(준지도)한 환경에서 거래 간 관계와 시간 정보를 함께
활용해야 합니다.

## 방법 (Method)
거래 기록으로 **시간 거래 그래프(temporal transaction graph)** — 시간 거래(노드)와 상호작용(엣지) —
를 구성하고, **Gated Temporal Attention Network(GTAN)** 로 노드 간 메시지를 전파해 거래 표현을
학습합니다. 거래 간 **risk propagation(위험 전파)** 으로 사기 패턴을 모델링합니다.

## 핵심 기여 (Contributions)
- **속성 기반(attribute-driven)** 시간 거래 그래프 표현
- **Gated Temporal Attention** 메시지 전파 + risk propagation
- **소량 라벨만으로도** 우수한 준지도 사기 탐지

## 결과·데이터셋 (Results)
실제 거래 데이터 + [YelpChi](../../datasets/yelpchi.md)/[Amazon](../../datasets/amazon.md)에서 SOTA
baseline 능가. 소량 라벨 준지도 설정에서 특히 강함.

## 관련 링크
- 개념: [준지도학습, 시간 그래프](../../concepts/glossary.md)
- 발전형: [RGTAN](rgtan.md)(TKDE 2025, risk-aware 확장) · 같은 그룹: [HOGRL](hogrl.md)
- 리소스: [AI4Risk/antifraud](../../resources/ai4risk-antifraud.md)

---
[← 카테고리](index.md)
