---
type: Research Paper
title: "FraudGT: A Simple, Effective, and Efficient Graph Transformer for Financial Fraud Detection"
description: 금융 거래용 Graph Transformer. 엣지 기반 메시지 게이트와 엣지 속성 어텐션 바이어스로 정확도와 실시간 처리량을 동시 달성.
resource: https://dl.acm.org/doi/10.1145/3677052.3698648
tags: [credit-card, graph-transformer, throughput, edge-attributes]
authors: Junhong Lin, Xiaojie Guo, Yada Zhu, Samuel Mitchell, Erik Altman, Julian Shun
venue: ICAIF 2024
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# FraudGT: A Simple, Effective, and Efficient Graph Transformer for Financial Fraud Detection

[← 카테고리](index.md) · 원문: [ACM DL 10.1145/3677052.3698648](https://dl.acm.org/doi/10.1145/3677052.3698648)

- **저자**: Junhong Lin, Xiaojie Guo, Yada Zhu, Samuel Mitchell, Erik Altman, Julian Shun (MIT / IBM)
- **발표처/연도**: ICAIF 2024 (5th ACM Int'l Conf. on AI in Finance)

## 문제 (Problem)
대규모 금융 거래 그래프에서 정확도와 **실시간 처리량/지연(throughput/latency)** 을 동시에 만족하는
탐지기가 필요합니다.

## 방법 (Method)
금융 거래용 **Graph Transformer**. **엣지 기반 메시지 패싱 게이트** 와 **엣지 속성 기반 어텐션
바이어스** 로 거래의 핵심 특징을 변별하고 정상/사기를 구분합니다.

## 핵심 기여 (Contributions)
- 단순하지만 효과적인 **금융 특화 Graph Transformer** 설계
- 엣지 속성을 어텐션 바이어스로 직접 활용
- 정확도와 처리 효율을 동시 달성

## 결과·데이터셋 (Results)
대규모 금융 데이터(예: [IBM Transactions for AML](../../datasets/ibm-aml.md))에서 F1 **8–17%** 향상,
평균 **2.4× 처리량** 및 지연 감소.

## 관련 링크
- 개념: [Graph Transformer](../../concepts/glossary.md), [확장성](../../concepts/overview.md)
- 같은 흐름(Graph Transformer): [STA-GT](sta-gt.md)

---
[← 카테고리](index.md)
