---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "Can LLMs Find Fraudsters? Multi-level LLM Enhanced Graph Fraud Detection (MLED)"
description: LLM으로 외부 지식을 추출해 type-level·relation-level 두 강화기로 그래프 사기 탐지를 보강하는 일반화 프레임워크. 4개 데이터셋에서 SOTA.
resource: https://arxiv.org/abs/2507.11997
tags: [llm, gnn, multi-level, type-level, relation-level, plug-in]
authors: Tairan Huang, Yili Wang, Qiutong Li, Changlong He, Jianliang Gao
venue: ACM Multimedia 2025
year: 2025
timestamp: 2026-06-18T00:00:00Z
---

# ⭐ Can LLMs Find Fraudsters? Multi-level LLM Enhanced Graph Fraud Detection (MLED)

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **ACM Multimedia 2025**

[← 카테고리](index.md) · 원문: [arXiv:2507.11997](https://arxiv.org/abs/2507.11997)

- **저자**: Tairan Huang, Yili Wang, Qiutong Li, Changlong He, Jianliang Gao
- **발표처/연도**: ACM Multimedia 2025 (33rd ACM MM)

## 문제 (Problem)
기존 그래프 사기 탐지는 **전처리된 노드 임베딩과 사전 정의된 그래프 구조** 에 의존해, 원문 텍스트에
담긴 **풍부한 의미 단서** 를 무시합니다.

## 방법 (Method)
**MLED (Multi-level LLM Enhanced graph fraud Detection)** 는 LLM으로 텍스트의 **외부 지식** 을 추출해
그래프 사기 탐지를 보강합니다. LLM과 그래프 구조를 두 구성요소로 통합합니다.
- **type-level enhancer**: 노드 타입 수준 강화
- **relation-level enhancer**: 관계 수준 강화

기존 GNN 위에 얹을 수 있는 **일반화(plug-in) 프레임워크** 입니다.

## 핵심 기여 (Contributions)
- type-level + relation-level **다층 LLM 강화**
- 기존 그래프 사기 탐지기에 적용 가능한 **일반화 프레임워크**
- 기존 기법이 놓친 **원문 텍스트 의미** 활용

## 결과·데이터셋 (Results)
**[Amazon](../../datasets/amazon.md), [YelpChi](../../datasets/yelpchi.md),
[T-Finance, T-Social](../../datasets/t-finance-t-social.md)** 4개 데이터셋에서 SOTA 달성.

## 관련 링크
- 개념: [LLM-enhanced GNN](../../concepts/glossary.md)
- 같은 흐름: [FLAG](flag.md), [DGP](dgp.md)

---
[← 카테고리](index.md)
