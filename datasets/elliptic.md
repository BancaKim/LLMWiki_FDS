---
type: Dataset
title: Elliptic / Elliptic++
description: 비트코인 트랜잭션 그래프 기반 자금세탁(AML) 탐지의 고전 벤치마크. Elliptic++는 actor(주소)와 transaction을 함께 다루는 확장판.
resource: https://www.kaggle.com/datasets/ellipticco/elliptic-data-set
tags: [dataset, aml, bitcoin, crypto, benchmark]
timestamp: 2026-06-18T00:00:00Z
---

# Elliptic / Elliptic++

[← 데이터셋 카탈로그](index.md)

## 개요
**Elliptic** 은 비트코인 트랜잭션 네트워크 기반의 **자금세탁(AML)** 탐지 데이터셋으로, AML GNN
연구의 **고전 벤치마크**입니다. **Elliptic++** 는 트랜잭션뿐 아니라 **actor(주소/지갑)** 그래프를
함께 제공하는 확장판입니다.

## 그래프 구조
- 노드: 비트코인 트랜잭션 (~20만 노드). 라벨 = **licit / illicit / unknown**.
- 엣지: 트랜잭션 간 자금 흐름(출력→입력).
- 시간(time step) 정보 포함 → 시계열·동적 AML 연구.

## 특징
- **다수의 unknown 라벨** → 준지도·자기지도 연구에 적합.
- 시간 분할(temporal split) 평가가 표준(미래 시점 일반화).
- Elliptic++는 actor-tx 이중 그래프로 더 풍부한 관계 제공.

## 이 데이터셋을 쓰는 논문
- [SAGE-FIN](../papers/aml-crypto/sage-fin.md) — Elliptic++ 의 bipartite edge-and-node attributed
  네트워크에서 검증.
- 다수의 AML GNN ([TeMP-TraG](../papers/aml-crypto/temp-trag.md) 계열).

> 관련: [AML·암호화폐 논문](../papers/aml-crypto/index.md) · [IBM AML 데이터셋](ibm-aml.md)

---
[← 데이터셋 카탈로그](index.md)
