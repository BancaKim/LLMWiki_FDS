---
type: Research Paper
title: "Graph Feature Preprocessor: Real-time Subgraph-based Feature Extraction for Financial Crime Detection"
description: 거래 스트림에서 자금세탁 전형 부분그래프 패턴(fan-in/out·scatter-gather·순환)을 실시간 마이닝해 GBDT 입력 특징으로 만드는 IBM 라이브러리. GNN 대비 더 높은 소수 클래스 F1과 처리량. AI-Hub 국내 금융 합성데이터의 공식 베이스라인이 사용.
resource: https://arxiv.org/abs/2402.08593
tags: [aml, graph-features, subgraph-mining, gbdt, lightgbm, xgboost, streaming, real-time, gnn-baseline]
authors: Jovan Blanuša, Maximo Cravero Baraja, Andreea Anghel, Luc von Niederhäusern, Erik Altman, Haris Pozidis, Kubilay Atasu
venue: ICAIF 2024
year: 2024
timestamp: 2026-09-28T00:00:00Z
---

# Graph Feature Preprocessor (GFP): Real-time Subgraph-based Feature Extraction for Financial Crime Detection

[← 카테고리](index.md) · 원문: [arXiv 2402.08593](https://arxiv.org/abs/2402.08593) ·
[ACM DL 10.1145/3677052.3698674](https://dl.acm.org/doi/10.1145/3677052.3698674)

- **저자**: Jovan Blanuša, Maximo Cravero Baraja, Andreea Anghel, Luc von Niederhäusern, Erik Altman,
  Haris Pozidis, Kubilay Atasu (IBM Research)
- **발표처/연도**: 🏅 **ICAIF 2024** (5th ACM Int'l Conf. on AI in Finance) — 응용 AI 학회(준-탑티어, ⭐ 아님)
- **구현**: IBM **Snap ML** 의 `GraphFeaturePreprocessor` (scikit-learn 호환)

> 📌 **이 위키에 넣은 이유**: GNN 자체는 아니지만 **"그래프 × FDS" 의 강력한 비-GNN 기준선**이며 논문에서
> GNN(GIN·PNA 등)과 직접 비교합니다. 또한 국내 [AI-Hub 금융거래 이상판별 합성데이터](../../datasets/aihub-financial-anomaly-synthetic.md)
> 의 **공식 베이스라인 모델**이 이 GFP 를 사용합니다.

## 문제 (Problem)
자금세탁은 **여러 계좌에 걸친 거래 패턴**(모으기·흩뿌리기·순환 송금)으로 드러나 단일 거래 특징만으로는
탐지가 어렵습니다. GNN 은 이런 관계를 학습할 수 있지만 **실시간 스트림 처리량·지연** 요구를 맞추기 어렵고
GPU 비용이 큽니다.

## 방법 (Method)
- **동적 인메모리 그래프**를 유지하며 들어오는 거래 스트림에서 **부분그래프 패턴을 실시간 마이닝** (멀티코어 CPU 병렬).
- 마이닝하는 전형 패턴: **fan-in / fan-out**, **degree-in / degree-out**, **scatter-gather**,
  **temporal cycle**(시간 순서가 맞는 순환), **길이 제한 simple cycle**.
- 각 거래에 "이 거래가 속한 패턴 수" 등의 **그래프 특징**을 붙여 원래 거래 특징과 결합 →
  **GBDT(LightGBM·XGBoost)** 로 거래 단위 불법 여부 분류.

## 핵심 기여 (Contributions)
- 금융범죄용 **실시간·스트리밍 부분그래프 특징 추출 라이브러리** 공개(Snap ML).
- "그래프 특징 + GBDT" 파이프라인이 **표준 GNN 보다 높은 소수 클래스 F1** 을 달성함을 보임.
- 멀티코어 CPU 에서의 **종단 간 처리량**이 V100 GPU 위 GNN 기준선보다 높음 → 실무 배치에 유리.

## 결과·데이터셋 (Results)
- 데이터: [IBM Transactions for AML](../../datasets/ibm-aml.md)(HI/LI 버전) + 피싱 데이터셋(세부 *(미확인)*).
- fan-in/fan-out 기반 특징만으로 기본 거래 특징 대비 **소수 클래스 F1 +30% 이상**, cycle·scatter-gather 등
  다중 홉 패턴 추가 시 **최대 +4%** 추가 향상.
- GNN 기준선(GIN, 엣지 업데이트 GIN, PNA) 대비: 가장 강한 **PNA 보다 F1 최대 +8%(HI), +11.8%(LI)**
  (XGBoost 파이프라인 기준).
- 처리량: 멀티코어 CPU 솔루션이 **V100 GPU 의 GNN 기준선보다 높은 종단 간 처리량**, 낮은 지연.

## 관련 링크
- 이 방법을 공식 베이스라인으로 쓰는 데이터셋: [AI-Hub 금융거래 이상판별 합성데이터](../../datasets/aihub-financial-anomaly-synthetic.md)
  (GFP → SMOTE → LightGBM, Minority F1 평가)
- 같은 IBM 계열 금융 그래프 연구: [FraudGT](../credit-card-fraud/fraudgt.md) (ICAIF 2024, Graph Transformer)
- 개념: [확장성·실시간성](../../concepts/overview.md) · [그래프 종류(동적)](../../concepts/graph-types.md)

---
[← 카테고리](index.md)
