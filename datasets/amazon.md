---
type: Dataset
title: Amazon
description: Amazon 악기(Musical Instruments) 카테고리 리뷰의 사기 사용자(reviewer) 탐지 데이터셋. 3개 관계의 다관계 그래프로 YelpChi와 짝으로 자주 사용.
resource: https://github.com/safe-graph/DGFraud
tags: [dataset, review-fraud, multi-relation, heterophily, benchmark]
timestamp: 2026-06-18T00:00:00Z
---

# Amazon

[← 데이터셋 카탈로그](index.md)

## 개요
Amazon **악기(Musical Instruments) 카테고리** 리뷰에서 **사기 사용자(reviewer)** 를 탐지하는
데이터셋. [YelpChi](yelpchi.md) 와 **짝(pair)** 으로 거의 모든 다관계·이질성 논문에 함께 등장합니다.

## 그래프 구조 (3관계 다관계 그래프)
- 노드: 사용자(user/reviewer). 라벨 = benign / fraudulent (리뷰 ≤20% 도움 투표 등 기준).
- 관계(엣지):
  - **U-P-U**: 같은 상품에 리뷰한 사용자들
  - **U-S-U**: 일주일 내 같은 별점을 준 사용자들
  - **U-V-U**: TF-IDF 상위 5% 유사 텍스트를 가진 사용자들

## 특징
- 사용자 단위 노드(리뷰 단위인 YelpChi와 대비).
- 다관계·이질성·불균형 실험의 표준.

## 이 데이터셋을 쓰는 논문
- [CaT-GNN](../papers/credit-card-fraud/cat-gnn.md), [PMP](../papers/heterophily-spectral/pmp.md),
  [SEC-GFD](../papers/heterophily-spectral/sec-gfd.md), [SEFraud](../papers/robustness-explainability/sefraud.md),
  [MLED](../papers/llm-gnn/mled.md)

---
[← 데이터셋 카탈로그](index.md) · [짝 데이터셋: YelpChi →](yelpchi.md)
