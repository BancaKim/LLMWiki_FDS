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

## 구조 상세 (그래프 종류·파이프라인·GNN)
- **그래프 종류**: **동질(단일 노드 타입)·이질성 인식·비지도** — 노드 타입 이종이 아니라 **라벨 없는
  이질성 추정(HALO)** 이 핵심.
- **데이터**: **6개 공개 데이터셋**(Amazon·Facebook·Reddit·YelpChi·AmazonFull·YelpChiFull). 노드·엣지 수 *(미확인)*.
- **파이프라인**: `속성 그래프(무라벨) → 이질성 추정(HALO) → MLP-GNN 결합 → 랭킹 손실 + 비대칭 정렬 손실 → 사기 점수 랭킹`.
- **GNN 백본**: **MLP + GNN 결합**(MLP는 over-smoothing 회피, GNN은 구조 포착). 기저 GNN은 GCN 계열 추정 *(미확인)*.

## 관련 링크
- 개념: [이질성, 비지도학습](../../concepts/glossary.md) · [그래프 종류·GNN 백본](../../concepts/graph-types.md)
- 코드: [github.com/CampanulaBells/HUGE-GAD](https://github.com/CampanulaBells/HUGE-GAD)
- 같은 흐름: [PMP](pmp.md), [SEC-GFD](sec-gfd.md)

---
[← 카테고리](index.md)
