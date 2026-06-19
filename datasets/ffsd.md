---
type: Dataset
title: FFSD / S-FFSD
description: 거래(transaction) 단위 금융 사기 탐지 데이터셋. S-FFSD는 준지도(semi-supervised) 세팅을 위한 부분 라벨 버전.
tags: [dataset, transaction-fraud, semi-supervised, financial]
timestamp: 2026-06-18T00:00:00Z
---

# FFSD / S-FFSD

[← 데이터셋 카탈로그](index.md)

## 개요
**FFSD (Financial Fraud Semi-supervised Dataset)** 는 거래(transaction) 단위 금융 사기 탐지를 위한
데이터셋입니다. **S-FFSD** 는 일부만 라벨된 **준지도(semi-supervised)** 세팅 버전으로,
실제 운영에서 라벨이 부족한 상황을 모사합니다.

## 특징
- 거래를 노드로, 카드/상점/시간 등의 속성을 가진 그래프로 구성.
- **부분 라벨**(준지도) — 라벨 희소성 연구에 적합.
- 시간(temporal) 속성을 활용한 거래 패턴 모델링에 사용.

## 이 데이터셋을 쓰는 논문
- [CaT-GNN](../papers/credit-card-fraud/cat-gnn.md) — YelpChi·Amazon과 함께 FFSD에서 평가
  (보고 AUC ≈ 0.8281).

> 관련 개념: [준지도학습](../concepts/glossary.md)

---
[← 데이터셋 카탈로그](index.md)
