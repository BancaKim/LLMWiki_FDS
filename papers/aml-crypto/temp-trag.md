---
type: Research Paper
title: "TeMP-TraG: Edge-based Temporal Message Passing in Transaction Graphs"
description: 메시지 패싱에 시간 가중을 넣어 최신 거래를 우선 집계하는 AML용 GNN 플러그인. 4개 SOTA GNN을 평균 6.19% 개선.
resource: https://arxiv.org/abs/2503.16901
tags: [aml, temporal, message-passing, multigraph, plug-in]
authors: Steve Gounoue, Ashutosh Sao, Simon Gottschalk
venue: arXiv 2025
year: 2025
timestamp: 2026-06-18T00:00:00Z
---

# TeMP-TraG: Edge-based Temporal Message Passing in Transaction Graphs

[← 카테고리](index.md) · 원문: [arXiv:2503.16901](https://arxiv.org/abs/2503.16901)

- **저자**: Steve Gounoue, Ashutosh Sao, Simon Gottschalk (Leibniz Universität Hannover / L3S)
- **발표처/연도**: arXiv 2025 *(정식 발표처 미확인)*

## 문제 (Problem)
금융/거래 그래프는 자금세탁·사기를 드러낼 수 있지만, 효과적 분류를 위해서는 **풍부한 엣지 특징,
멀티그래프 구조, 시간 동역학** 을 다뤄야 합니다. 기존 GNN 메시지 패싱은 거래의 **타이밍** 을 대체로
무시합니다.

## 방법 (Method)
**TeMP-TraG** 는 메시지 패싱에 시간 동역학을 통합하는 메커니즘으로, **시간 가중(temporal weighting)**
으로 노드에서 메시지를 집계할 때 **더 최신 거래를 우선** 합니다. 기존 메시지 패싱 GNN을 보강하는
**플러그인** 으로 설계되어 시간 민감(엣지 기반) 패턴을 더 잘 포착합니다.

## 핵심 기여 (Contributions)
- 메시지 패싱 내부의 **시간 가중** 메커니즘 (최신 엣지/거래 강조)
- 여러 GNN 백본에 적용 가능한 **일반 보강(augmentation)**
- 멀티그래프의 **풍부한 엣지 특징** 처리

## 결과·데이터셋 (Results)
4개 SOTA GNN을 평균 **6.19% 개선**. *(구체 데이터셋명 미확인)*

## 관련 링크
- 개념: [시간성(Temporal)](../../concepts/overview.md), [멀티그래프](../../concepts/taxonomy.md)
- 같은 흐름(시간): [CaT-GNN](../credit-card-fraud/cat-gnn.md), [STA-GT](../credit-card-fraud/sta-gt.md)

---
[← 카테고리](index.md)
