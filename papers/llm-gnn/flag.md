---
type: Research Paper
title: "FLAG: Fraud Detection with LLM-enhanced Graph Neural Network"
description: LLM으로 노드의 '판별 텍스트(discriminative text)'를 추출해 이웃 위장(camouflage)에 대응하는 LLM-enhanced GNN. 이중 skip-GNN + 어텐션 융합.
resource: https://dl.acm.org/doi/10.1145/3711896.3737220
tags: [llm, gnn, camouflage, text-attributed-graph, discriminative-text]
venue: KDD 2025
year: 2025
timestamp: 2026-06-18T00:00:00Z
---

# FLAG: Fraud Detection with LLM-enhanced Graph Neural Network

[← 카테고리](index.md) · 원문: [ACM DL 10.1145/3711896.3737220](https://dl.acm.org/doi/10.1145/3711896.3737220) · [PDF](http://www.shichuan.org/doc/200.pdf)

- **발표처/연도**: KDD 2025 (31st ACM SIGKDD)

## 문제 (Problem)
그래프 기반 사기 탐지는 엔티티 간 관계를 모델링하지만 **풍부한 텍스트 데이터**(프로필, 거래 설명)를
종종 무시합니다. 두 난제: ① **이웃 위장(neighborhood camouflage)** — 사기범이 정상 구조 속에 숨음,
② 큰 텍스트 그래프에 대한 **LLM 입력 크기 제약**.

## 방법 (Method)
LLM으로 각 노드의 원문에서 **판별 텍스트(discriminative text)** 를 추출한 뒤, 원문과 판별 텍스트를
동결(frozen) 언어모델로 각각 임베딩합니다. 두 임베딩을 **파라미터 공유 skip-GNN** 두 개로 독립
처리하고, **어텐션 층** 이 원문 vs. 판별 텍스트 표현의 기여도를 동적으로 가중합니다.

## 핵심 기여 (Contributions)
- LLM 기반 **판별 텍스트 추출** 로 이웃 위장에 대응
- 원문·판별 텍스트에 대한 **이중 파라미터 공유 skip-GNN**
- 두 표현의 어텐션 융합 + LLM 입력 크기 제약 완화

## 결과·데이터셋 (Results)
표준 그래프 사기 벤치마크([YelpChi](../../datasets/yelpchi.md)/[Amazon](../../datasets/amazon.md) 계열,
*정확한 데이터셋 일부 미확인*)에서 GNN 베이스라인 대비 개선 보고.

## 관련 링크
- 개념: [위장(camouflage)](../../concepts/overview.md), [LLM-enhanced GNN](../../concepts/glossary.md)
- 같은 흐름: [MLED](mled.md)(다층 LLM 강화), [DGP](dgp.md)(Graph-enhanced LLM)

---
[← 카테고리](index.md)
