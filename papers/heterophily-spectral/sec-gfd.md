---
type: Research Paper
title: "Revisiting Graph-Based Fraud Detection in Sight of Heterophily and Spectrum (SEC-GFD)"
description: 스펙트럼 영역에서 혼합 주파수 대역 필터링으로 이질성을 다루고, 지역 환경 제약으로 라벨 활용을 높인 준지도 사기 탐지 GNN.
resource: https://arxiv.org/abs/2312.06441
tags: [heterophily, spectral, semi-supervised, frequency-bands]
authors: Fan Xu, Nan Wang, Hao Wu, Xuezhi Wen, Xibin Zhao
venue: AAAI 2024
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# Revisiting Graph-Based Fraud Detection in Sight of Heterophily and Spectrum (SEC-GFD)

[← 카테고리](index.md) · 원문: [arXiv:2312.06441](https://arxiv.org/abs/2312.06441)

- **저자**: Fan Xu, Nan Wang, Hao Wu, Xuezhi Wen, Xibin Zhao
- **발표처/연도**: AAAI 2024

> ⚠️ 일부 목록에서 본 arXiv ID를 "GHRN"으로 표기하기도 하나, **GHRN은 별개 논문**
> (WWW 2023, "Addressing Heterophily in Graph Anomaly Detection: A Perspective of Graph Spectrum").
> 본 문서는 arXiv:2312.06441 = **SEC-GFD** 를 정리합니다.

## 문제 (Problem)
GFD는 준지도 이진 노드 분류이지만, 사기 그래프는 본질적으로 **이질적(heterophilic)** 이라
동질성 가정 GNN의 성능이 떨어집니다. 클래스 불균형과 라벨 활용 부족이 문제를 가중합니다.

## 방법 (Method)
**SEC-GFD** 는 준지도 GNN 사기 탐지기로 두 모듈을 둡니다. ① **하이브리드 필터링 모듈**: 스펙트럼
관점에서 스펙트럼 에너지 분포와 이질성의 상관에 기반해 스펙트럼을 **혼합 주파수 대역(mixed-frequency
bands)** 으로 분할해 이질성에 대응. ② **지역 환경 제약 모듈**: 라벨 활용 문제를 보완.

## 핵심 기여 (Contributions)
- 이질성과 연계된 **스펙트럼 혼합 주파수 대역 필터링**
- 희소 라벨 활용을 높이는 **지역 환경 제약 모듈**
- 스펙트럼 에너지 분포와 이질성의 관계 분석

## 결과·데이터셋 (Results)
4개 실제 사기 데이터에서 경쟁 그래프 탐지기 능가 (예: [Amazon](../../datasets/amazon.md) AUC ≈ 96.21%,
[YelpChi](../../datasets/yelpchi.md) ≈ 90.58%).

## 관련 링크
- 개념: [스펙트럼 필터링, 이질성](../../concepts/glossary.md)
- 코드: [github.com/Sunxkissed/SEC-GFD](https://github.com/Sunxkissed/SEC-GFD)
- 같은 흐름: [PMP](pmp.md), [HUGE](huge.md)

---
[← 카테고리](index.md)
