---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "DGA-GNN: Dynamic Grouping Aggregation GNN for Fraud Detection"
description: 속성의 비가산성과 이웃 메시지 구분성을 다루기 위해 결정트리 비닝 인코딩 + 피드백 동적 그룹화 + 계층적 집계를 사용하는 사기 탐지 GNN.
resource: https://ojs.aaai.org/index.php/AAAI/article/view/29067
tags: [aggregation, dynamic-grouping, decision-tree-binning, multi-relation, must-read]
venue: AAAI 2024
year: 2024
timestamp: 2026-06-19T00:00:00Z
---

# ⭐ DGA-GNN: Dynamic Grouping Aggregation GNN for Fraud Detection

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **AAAI 2024**

[← 카테고리](index.md) · 원문: [AAAI 2024](https://ojs.aaai.org/index.php/AAAI/article/view/29067) · 코드: [AtwoodDuan/DGA-GNN](https://github.com/AtwoodDuan/DGA-GNN)

- **저자**: Mingjiang Duan, Tongya Zheng, Yang Gao, Gang Wang, Zunlei Feng, Xinyu Wang
- **발표처/연도**: AAAI 2024 (Main Track)

## 문제 (Problem)
사기 그래프는 ① 일부 속성의 **비가산성(non-additivity)** — 단순 합산 집계가 무의미한 특징 — 과
② 이웃 노드 **그룹별 메시지의 구분성(distinguishability)** 이라는 두 특성을 가집니다.

## 방법 (Method)
**DGA-GNN (Dynamic Grouping Aggregation GNN)** — ① **결정트리 비닝 인코딩(decision tree binning)** 으로
비가산 속성을 bin 벡터로 변환해 GNN 집계와 정합시키고 무의미한 특징 생성을 방지, ② **피드백 동적
그룹화(feedback dynamic grouping)** 로 그래프 노드를 두 그룹으로 분류하고 **계층적 집계(hierarchical
aggregation)** 를 수행합니다.

## 핵심 기여 (Contributions)
- 비가산 속성용 **결정트리 비닝 인코딩**
- **피드백 동적 그룹화 + 계층적 집계**
- 5개 데이터셋에서 SOTA 대비 **3%~16%** 향상

## 결과·데이터셋 (Results)
5개 데이터셋([YelpChi](../../datasets/yelpchi.md)/[Amazon](../../datasets/amazon.md) 등)에서 SOTA 대비
3~16% 개선.

## 관련 링크
- 개념: [메시지 패싱, 이질성](../../concepts/glossary.md)
- 같은 그룹/흐름: [GAAP](gaap.md)(속성-연관 패턴 집계), [HOGRL](../credit-card-fraud/hogrl.md)

---
[← 카테고리](index.md)
