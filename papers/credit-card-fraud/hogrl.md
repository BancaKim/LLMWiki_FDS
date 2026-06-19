---
type: Research Paper
title: "HOGRL: Effective High-order Graph Representation Learning for Credit Card Fraud Detection"
description: 고차 거래 그래프에서 차수별 순수 표현을 학습해 다중 홉 위장 거래를 탐지. MoE 어텐션으로 차수 중요도 자동 가중, 오버스무딩 완화.
resource: https://arxiv.org/abs/2503.01556
tags: [credit-card, high-order, mixture-of-experts, over-smoothing]
venue: IJCAI 2024
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# HOGRL: Effective High-order Graph Representation Learning for Credit Card Fraud Detection

[← 카테고리](index.md) · 원문: [IJCAI 2024](https://www.ijcai.org/proceedings/2024/839) · [arXiv:2503.01556](https://arxiv.org/abs/2503.01556)

- **발표처/연도**: IJCAI 2024 (pp. 7581–7589)

## 문제 (Problem)
사기범은 여러 정상 사용자를 거치는 **다단계 간접 거래** 로 위장합니다. 기존 GNN은 깊은 다층 집계에서
**오버스무딩(over-smoothing)** 이 발생해 이런 다중 홉 위장 패턴을 학습하기 어렵습니다.

## 방법 (Method)
**고차 거래 그래프(high-order transaction graph)** 를 구성한 뒤 각 차수(order)의 **순수
표현(pure representation)** 을 직접 학습해 다중 홉 간접 거래를 식별합니다. **Mixture-of-Experts(MoE)
어텐션** 으로 차수별 중요도를 자동 결정해 공동 최적화합니다.

## 핵심 기여 (Contributions)
- 차수별 순수 표현 학습으로 **오버스무딩 없이** 다중 홉 위장 포착
- **MoE 어텐션** 으로 차수 중요도 자동 가중
- 고차 GNN 대비 **AUC +1.9%, F1 +3.6%, GMean +2.9% 이상** 개선

## 결과·데이터셋 (Results)
고차 GNN 대비 일관된 향상. (코드: [AI4Risk/antifraud](https://github.com/AI4Risk/antifraud) 계열)

## 관련 링크
- 개념: [오버스무딩](../../concepts/glossary.md), [고차 그래프 구조](../../concepts/taxonomy.md)

---
[← 카테고리](index.md)
