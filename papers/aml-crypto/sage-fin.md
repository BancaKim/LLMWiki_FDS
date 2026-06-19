---
type: Research Paper
title: "Detecting Fraud in Financial Networks: A Semi-Supervised GNN Approach with Granger-Causal Explanations (SAGE-FIN)"
description: 약한 라벨로 사기를 탐지하고 Granger 인과로 설명을 제공하는 준지도 GNN. Elliptic++ 금융 네트워크에서 검증.
resource: https://arxiv.org/abs/2507.01980
tags: [aml, semi-supervised, granger-causality, explainability, weak-labels]
authors: Linh Nguyen, Marcel Boersma, Erman Acar
venue: arXiv 2025
year: 2025
timestamp: 2026-06-18T00:00:00Z
---

# Detecting Fraud in Financial Networks: A Semi-Supervised GNN Approach with Granger-Causal Explanations (SAGE-FIN)

[← 카테고리](index.md) · 원문: [arXiv:2507.01980](https://arxiv.org/abs/2507.01980)

- **저자**: Linh Nguyen, Marcel Boersma, Erman Acar (University of Amsterdam / KPMG)
- **발표처/연도**: arXiv 2025 *(정식 발표처 미확인)*

## 문제 (Problem)
금융 사기 탐지는 **희소·약한 라벨**(획득 비용이 큼)과 비즈니스·규제가 요구하는 **설명가능성** 을
동시에 만족해야 합니다. 블랙박스 GNN은 투명성이 부족합니다.

## 방법 (Method)
**SAGE-FIN** 은 금융 상호작용 네트워크용 준지도 GNN으로, 약하게 라벨링되거나 비라벨인 데이터에서
사기 항목을 표시합니다. 네트워크 구조에 대한 사전 가정 없이, **Granger 인과(Granger causality)** 로
관련 항목을 강조하는 **설명** 을 생성합니다.

## 핵심 기여 (Contributions)
- 약한/희소 라벨에서 학습하는 **준지도 GNN**
- **Granger 인과 설명** 메커니즘 (규제 설명가능성 충족)
- 금융 상호작용 네트워크에 대한 구조적 사전가정 불필요

## 결과·데이터셋 (Results)
실제 **Bipartite Edge-And-Node Attributed** 금융 네트워크([Elliptic++](../../datasets/elliptic.md))에서
검증, 표시 항목에 대한 Granger 인과 설명 생성.

## 관련 링크
- 개념: [준지도학습, 설명가능성](../../concepts/glossary.md)
- 같은 흐름(설명가능): [SEFraud](../robustness-explainability/sefraud.md), [Graph-LLM XAI](../llm-gnn/graph-llm-xai.md)

---
[← 카테고리](index.md)
