---
type: Dataset
title: IEEE-CIS Fraud Detection
description: Kaggle 공개 신용카드/전자결제 거래 사기 데이터셋. 거래·신원(identity) 테이블로 구성되며, 이종 그래프(사용자·거래·상점·기기) 구성의 원천으로 자주 사용.
resource: https://www.kaggle.com/c/ieee-fraud-detection
tags: [dataset, credit-card, transaction-fraud, heterogeneous, public]
timestamp: 2026-06-19T00:00:00Z
---

# IEEE-CIS Fraud Detection

[← 데이터셋 카탈로그](index.md)

## 개요
IEEE Computational Intelligence Society와 Vesta가 공개한 **전자결제/신용카드 거래 사기** 데이터셋
(Kaggle 대회 기원). 대규모 실거래 기반으로, 최근 **이종 그래프** 사기 탐지 연구의 그래프 구성 원천으로
널리 쓰입니다.

## 구조
- 원본은 **transaction 테이블 + identity 테이블**(수백 개 익명화 특징).
- 그래프 구성 시 흔한 **노드 타입**: 사용자(카드)·거래·상점(merchant)·기기(device).
- **엣지**: 거래가 사용자-상점-기기 등을 연결(연구별로 상이). **시간(TransactionDT)** 정보 포함 → 시간
  인식 엣지·동적 그래프 구성 가능.
- 강한 **클래스 불균형**(사기 소수).

## 이 데이터셋을 쓰는 논문
- [HGNN + Graph Attention](../papers/credit-card-fraud/hgnn-graph-attention.md) (IEEE AINIT 2025)
- [Dynamic HG Contrastive / TH-GCL](../papers/credit-card-fraud/dynamic-hg-contrastive.md) (IEEE Access 2025)

> 관련 개념: [그래프 종류(이종·동적)](../concepts/graph-types.md) · [클래스 불균형](../concepts/overview.md)

---
[← 데이터셋 카탈로그](index.md)
