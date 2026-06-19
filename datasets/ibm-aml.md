---
type: Dataset
title: IBM Transactions for Anti-Money Laundering (AMLworld)
description: IBM이 공개한 현실적 합성 금융거래 데이터셋. 대규모 거래 그래프에서 자금세탁 패턴을 라벨과 함께 제공.
resource: https://www.kaggle.com/datasets/ealtman2019/ibm-transactions-for-anti-money-laundering-aml
tags: [dataset, aml, synthetic, large-scale, benchmark]
timestamp: 2026-06-18T00:00:00Z
---

# IBM Transactions for AML (AMLworld)

[← 데이터셋 카탈로그](index.md)

## 개요
IBM이 공개한 **현실적 합성(synthetic)** 금융거래 데이터셋. 실제 데이터의 프라이버시 제약 없이
대규모 거래 그래프에서 **자금세탁(AML) 패턴**을 라벨과 함께 학습·평가할 수 있습니다.

## 특징
- **대규모·합성**: 수백만~수천만 건 거래. 다양한 난이도(HI/LI 등) 버전 제공.
- 자금세탁 **motif/패턴**(layering, fan-in/out 등)을 의도적으로 주입.
- 엣지(거래) 속성이 풍부 → 엣지 기반 메시지 패싱·Graph Transformer에 적합.

## 이 데이터셋을 쓰는 논문
- [FraudGT](../papers/credit-card-fraud/fraudgt.md) — 대규모 금융 그래프에서 throughput/latency
  포함 평가.
- AML 합성 데이터 연구 전반.

> 관련: [AML·암호화폐 논문](../papers/aml-crypto/index.md) · [Elliptic 데이터셋](elliptic.md)

---
[← 데이터셋 카탈로그](index.md)
