---
type: Research Paper
title: "GAD in the Wild: Benchmarking Graph Anomaly Detection under Realistic Deployment Challenges"
description: 백만 단위 그래프·극심한 이상 희소성·결측 노드 속성 등 실제 배포 난제 아래에서 그래프 이상탐지를 평가하는 다차원 벤치마크.
resource: https://arxiv.org/abs/2605.07133
tags: [benchmark, graph-anomaly-detection, deployment, scalability, imbalance, robustness]
venue: arXiv 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# GAD in the Wild: Benchmarking Graph Anomaly Detection under Realistic Deployment Challenges

[← 카테고리](index.md) · 원문: [arXiv:2605.07133](https://arxiv.org/abs/2605.07133)

- **발표처/연도**: arXiv 2026 (2026-05-08 공개)

## 문제 (Problem)
그래프 이상탐지(GAD)는 금융 사기 탐지의 핵심이지만, 기존 벤치마크는 **소규모·정제·균형 잡힌** 그래프에
치우쳐 **학술 평가와 실제 배포 사이 간극** 이 큽니다.

## 방법 (Method)
세 가지 배포 난제 — **① 백만 단위 대규모 그래프, ② 극심한 이상 희소성, ③ 결측 노드 속성** — 아래에서
GAD 모델을 체계적으로 평가하는 **다차원 벤치마크**. 5개의 다양한 그래프(그 중 **노드 370만+ 의 산업
규모 데이터 2종** 포함)에서 통제된 벤치마크 변형군을 도출합니다.

## 핵심 기여 (Contributions)
- 실제 배포 난제(대규모·희소·결측)를 반영한 **다차원 GAD 벤치마크**
- 산업 규모(370만+ 노드) 데이터 포함, 통제된 변형으로 공정 비교
- 학술-실무 평가 간극 축소

## 결과·데이터셋 (Results)
5개 그래프 기반의 벤치마크 변형군에서 GAD 모델들의 배포 강건성을 비교 *(세부 결과는 원문 참조)*.

## 관련 링크
- 개념: [확장성·불균형](../../concepts/overview.md) · [평가지표·데이터셋](../../concepts/datasets-overview.md)
- 관련 데이터셋: [DGraph-Fin](../../datasets/dgraph-fin.md), [T-Finance/T-Social](../../datasets/t-finance-t-social.md)

> 💡 모델 제안이 아니라 **벤치마크·평가** 기여 — 실서비스 FDS의 강건성·확장성 점검에 유용.

---
[← 카테고리](index.md)
