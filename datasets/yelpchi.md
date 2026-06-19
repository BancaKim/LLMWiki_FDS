---
type: Dataset
title: YelpChi
description: Yelp 음식점·호텔 리뷰의 가짜 리뷰(spam) 탐지 데이터셋. 3개 관계를 가진 다관계 그래프로 GNN 사기탐지의 사실상 표준 벤치마크.
resource: https://github.com/safe-graph/DGFraud
tags: [dataset, review-fraud, multi-relation, heterophily, benchmark]
timestamp: 2026-06-18T00:00:00Z
---

# YelpChi

[← 데이터셋 카탈로그](index.md)

## 개요
Yelp의 음식점·호텔 리뷰를 대상으로 **가짜 리뷰(filtered/spam reviews)** 를 탐지하는 데이터셋.
GNN 기반 사기탐지(특히 이질성·다관계 연구)의 **사실상 표준 벤치마크**입니다.

## 그래프 구조 (3관계 다관계 그래프)
- 노드: 리뷰(review). 라벨 = spam / legitimate.
- 관계(엣지):
  - **R-U-R**: 같은 사용자가 작성한 리뷰들
  - **R-S-R**: 같은 상점에 대해 같은 별점(star)으로 작성된 리뷰들
  - **R-T-R**: 같은 상점에 같은 달(month)에 작성된 리뷰들

## 특징
- **강한 이질성(heterophily)**: 사기 리뷰가 정상 리뷰와 많이 연결되어 위장.
- **클래스 불균형**: spam 비율이 상대적으로 낮음.
- **원문 텍스트 보존** 버전이 있어 LLM × GNN 연구에도 활용 가능.

## 이 데이터셋을 쓰는 논문
- [CaT-GNN](../papers/credit-card-fraud/cat-gnn.md), [GNN-CL](../papers/credit-card-fraud/gnn-cl.md)
- [PMP](../papers/heterophily-spectral/pmp.md), [SEC-GFD](../papers/heterophily-spectral/sec-gfd.md)
- [SEFraud](../papers/robustness-explainability/sefraud.md), [MLED](../papers/llm-gnn/mled.md)

> 관련 개념: [이질성](../concepts/glossary.md) · [평가지표](../concepts/datasets-overview.md)

---
[← 데이터셋 카탈로그](index.md) · [짝 데이터셋: Amazon →](amazon.md)
