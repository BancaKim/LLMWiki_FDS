---
type: Research Paper
title: "Graph Neural Network with One-side Edge Sampling for Fraud Detection"
description: 학습 시간을 줄이고 오버스무딩·오버피팅을 완화하는 One-Side Edge Sampling(OES) 기반 GNN 사기 탐지.
resource: https://arxiv.org/abs/2601.06800
tags: [credit-card, edge-sampling, efficiency, over-smoothing, scalability]
venue: arXiv 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# Graph Neural Network with One-side Edge Sampling for Fraud Detection

[← 카테고리](index.md) · 원문: [arXiv:2601.06800](https://arxiv.org/abs/2601.06800)

- **발표처/연도**: arXiv 2026 (2026-01-11 공개)

## 문제 (Problem)
GNN은 금융 사기 탐지에 유능하지만, **대용량 데이터 학습 시 느리고 연산 비용이 큽니다.** 복잡한 사기
패턴을 잡으려 **깊은 구조**를 쌓으면 **오버피팅(over-fitting)·오버스무딩(over-smoothing)** 문제가
발생합니다.

## 방법 (Method)
**One-Side Edge Sampling (OES)** — 엣지를 한쪽 방향으로 샘플링하여 **학습 시간을 단축**하고
오버스무딩·오버피팅의 영향을 완화하는 접근을 제안합니다.

## 핵심 기여 (Contributions)
- **OES 엣지 샘플링** 으로 GNN 학습 효율 개선
- 깊은 GNN의 **오버스무딩·오버피팅 완화**
- 대용량 금융 그래프에서의 실용적 확장성 지향

## 결과·데이터셋 (Results)
학습 시간 단축 및 일반화 개선 보고 *(구체 데이터셋·수치 미확인)*.

## 관련 링크
- 개념: [오버스무딩·확장성](../../concepts/glossary.md)
- 같은 흐름(고차/효율): [HOGRL](hogrl.md), [DIAM](../aml-crypto/diam.md)

---
[← 카테고리](index.md)
