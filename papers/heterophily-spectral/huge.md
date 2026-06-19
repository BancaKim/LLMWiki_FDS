---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "A Label-Free Heterophily-Guided Approach for Unsupervised Graph Fraud Detection (HUGE)"
description: 라벨 없는 이질성 지표 HALO를 도입한 비지도 그래프 사기 탐지. MLP-GNN 결합 + 랭킹/비대칭 정렬 손실. 6개 데이터셋에서 우위.
resource: https://arxiv.org/abs/2502.13308
tags: [heterophily, unsupervised, label-free, halo, ranking-loss]
authors: Junjun Pan, Yixin Liu, Xin Zheng, Yizhen Zheng, Alan Wee-Chung Liew, Fuyi Li, Shirui Pan
venue: AAAI 2025
year: 2025
timestamp: 2026-06-18T00:00:00Z
---

# ⭐ A Label-Free Heterophily-Guided Approach for Unsupervised Graph Fraud Detection (HUGE)

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **AAAI 2025**

[← 카테고리](index.md) · 원문: [arXiv:2502.13308](https://arxiv.org/abs/2502.13308)

- **저자**: Junjun Pan, Yixin Liu, Xin Zheng, Yizhen Zheng, Alan Wee-Chung Liew, Fuyi Li, Shirui Pan
- **발표처/연도**: AAAI 2025

## 문제 (Problem)
지도학습 기반 그래프 사기 탐지(GFD)는 라벨에 의존해 **비지도 환경** 에서 쓰기 어렵습니다. 라벨 없이
복잡·다양한 **이질성 패턴** 을 포착하기는 어렵습니다.

## 방법 (Method)
**HUGE (Heterophily-guided Unsupervised Graph fraud dEtection)**. ① **이질성 추정 모듈**: 라벨 없는
새로운 이질성 지표 **HALO** 로 GFD의 핵심 그래프 속성을 포착. ② **정렬 기반 탐지 모듈**: MLP–GNN
결합 구조를 **랭킹 손실**(예측 사기 점수를 HALO의 상대 순서에 정렬)과 **비대칭 정렬 손실**(구조
정보로 feature-smoothing 완화)로 학습.

## 핵심 기여 (Contributions)
- 비지도 GFD를 위한 **라벨 없는 이질성 지표 HALO**
- 랭킹 + 비대칭 정렬 손실의 **MLP-GNN 결합** 구조
- 사기 라벨이 전혀 필요 없는 **완전 비지도** 파이프라인

## 결과·데이터셋 (Results)
6개 데이터셋에서 일관되게 경쟁모델 능가.

## 관련 링크
- 개념: [이질성, 비지도학습](../../concepts/glossary.md)
- 코드: [github.com/CampanulaBells/HUGE-GAD](https://github.com/CampanulaBells/HUGE-GAD)
- 같은 흐름: [PMP](pmp.md), [SEC-GFD](sec-gfd.md)

---
[← 카테고리](index.md)
