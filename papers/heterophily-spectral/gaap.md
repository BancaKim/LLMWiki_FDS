---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "GAAP: Global Attribute-Association Pattern Aggregation for Graph Fraud Detection"
description: 사기/정상을 구분하는 속성·연관 패턴을 적응적 비닝 + 이웃 메시지 패싱으로 도출하고, 단일 패턴과 전역 패턴을 전역 집계하는 그래프 사기 탐지.
resource: https://ojs.aaai.org/index.php/AAAI/article/view/33264
tags: [attribute-association, global-aggregation, binning, multi-relation, must-read]
venue: AAAI 2025
year: 2025
timestamp: 2026-06-19T00:00:00Z
---

# ⭐ GAAP: Global Attribute-Association Pattern Aggregation for Graph Fraud Detection

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **AAAI 2025**

[← 카테고리](index.md) · 원문: [AAAI 2025](https://ojs.aaai.org/index.php/AAAI/article/view/33264)

- **저자**: Mingjiang Duan, Da He, Tongya Zheng, Lingxiang Jia, Mingli Song, Xinyu Wang, Zunlei Feng
- **발표처/연도**: AAAI 2025 (pp. 11616–11624)

## 문제 (Problem)
사기와 정상 행위를 구분하는 **속성(attribute) 패턴과 연관(association) 패턴** 을 효과적으로 포착해야
하나, 잘못된 속성 융합과 지역적 시야가 한계입니다.

## 방법 (Method)
**GAAP** — 속성 특징을 **적응적으로 bin 으로 분할** 해 잘못된 속성 융합을 제거하고, **그래프 이웃 메시지
패싱** 으로 연관 패턴을 결합하여 **속성-연관 패턴(attribute-association pattern) 특징** 을 도출합니다.
학습된 패턴으로 **단일 패턴 ↔ 그래프 전체 패턴** 사이의 사기 패턴을 **전역 집계(global aggregation)**
합니다.

## 핵심 기여 (Contributions)
- 적응적 속성 비닝으로 **잘못된 속성 융합 제거**
- 이웃 메시지 패싱으로 **속성-연관 패턴** 도출
- 단일↔전역 패턴의 **전역 집계**

## 결과·데이터셋 (Results)
7개 데이터셋에서 **24개 방법과 비교** 해 SOTA 달성.

## 관련 링크
- 개념: [메시지 패싱, 이질성](../../concepts/glossary.md)
- 같은 그룹/흐름: [DGA-GNN](dga-gnn.md), [HOGRL](../credit-card-fraud/hogrl.md)

---
[← 카테고리](index.md)
