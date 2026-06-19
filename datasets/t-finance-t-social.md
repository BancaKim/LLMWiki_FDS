---
type: Dataset
title: T-Finance / T-Social
description: 노드 단위 그래프 이상탐지 표준 벤치마크. T-Finance는 금융 거래 네트워크, T-Social은 대규모 소셜 네트워크 이상탐지용.
resource: https://github.com/squareRoot3/Rethinking-Anomaly-Detection
tags: [dataset, anomaly-detection, financial, social, large-scale, benchmark]
timestamp: 2026-06-18T00:00:00Z
---

# T-Finance / T-Social

[← 데이터셋 카탈로그](index.md)

## 개요
노드 단위 **그래프 이상탐지(Graph Anomaly Detection)** 의 표준 벤치마크 한 쌍.
"Rethinking Graph Neural Networks for Anomaly Detection"(BWGNN, ICML 2022)에서 정리·공개되어
널리 쓰입니다.

| 데이터셋 | 도메인 | 규모(대략) | 노드 의미 |
|----------|--------|-----------|-----------|
| **T-Finance** | 금융 거래 | ~39K 노드 | 거래 계정. 이상 = 사기/세탁 의심 계정 |
| **T-Social** | 소셜 네트워크 | ~5.7M 노드 | 사용자. 이상 = 어뷰징/봇 계정 (대규모 확장성 평가) |

## 특징
- **T-Finance**: 중간 규모, 금융 이상탐지의 표준.
- **T-Social**: 수백만 노드로 **확장성(scalability)** 평가에 사용.
- 두 데이터 모두 이질성·불균형이 두드러져 메시지 패싱 연구에 적합.

## 이 데이터셋을 쓰는 논문
- [MLED](../papers/llm-gnn/mled.md) (Amazon·YelpChi·T-Finance·T-Social 4종)
- 다수의 이질성·스펙트럼 GNN ([PMP](../papers/heterophily-spectral/pmp.md),
  [SEC-GFD](../papers/heterophily-spectral/sec-gfd.md) 계열)

---
[← 데이터셋 카탈로그](index.md)
