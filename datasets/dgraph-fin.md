---
type: Dataset
title: DGraph-Fin
description: 실제 핀테크 금융 대출 네트워크 기반의 대규모 동적 그래프 이상탐지 데이터셋(~300만 노드). 금융 사기/연체 탐지 평가에 사용.
resource: https://dgraph.xinye.com/
tags: [dataset, financial, loan, large-scale, dynamic, benchmark]
timestamp: 2026-06-18T00:00:00Z
---

# DGraph-Fin

[← 데이터셋 카탈로그](index.md)

## 개요
실제 핀테크(금융) 대출 플랫폼에서 수집된 **대규모 동적 그래프** 데이터셋. DGraph 벤치마크의
금융(Fin) 버전으로, 약 **300만 노드** 규모의 사용자-사용자 관계 그래프에서 금융 사기/연체 위험을
탐지합니다.

## 특징
- **대규모**: 노드 수백만, 엣지 수백만 — 실시간·확장성 연구에 적합.
- **극심한 불균형**: 사기/위험 노드 비율이 매우 낮음.
- **동적(temporal) 정보** 포함 — 시간에 따른 관계 변화.
- 배경 노드(background node)가 다수 포함되어 현실적인 노이즈 반영.

## 쓰임새
신용카드·거래 사기 및 금융 위험 탐지의 **대규모 실증** 평가. 확장성 있는 GNN/Graph Transformer
([FraudGT](../papers/credit-card-fraud/fraudgt.md), [STA-GT](../papers/credit-card-fraud/sta-gt.md)
계열)와 불균형 대응 기법의 검증에 활용됩니다.

> 관련 개념: [확장성·불균형](../concepts/overview.md)

---
[← 데이터셋 카탈로그](index.md)
