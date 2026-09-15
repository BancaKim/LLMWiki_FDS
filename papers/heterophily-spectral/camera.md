---
type: Research Paper
title: "CAMERA: Adapting to Semantic Camouflage in Unsupervised Text-Attributed Graph Fraud Detection"
description: 사기범이 정상 사용자의 텍스트 응답을 모방하는 '의미 위장(semantic camouflage)'에 대응하는 비지도 TAG 사기 탐지. ego-decoupled MoE + 문맥 게이팅.
resource: https://arxiv.org/abs/2605.20032
tags: [unsupervised, text-attributed-graph, semantic-camouflage, mixture-of-experts, heterophily]
venue: arXiv 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# CAMERA: Adapting to Semantic Camouflage in Unsupervised Text-Attributed Graph Fraud Detection

[← 카테고리](index.md) · 원문: [arXiv:2605.20032](https://arxiv.org/abs/2605.20032)

- **발표처/연도**: arXiv 2026 (2026-05 공개)

## 문제 (Problem)
텍스트 속성 그래프 사기 탐지(TAGFD)에서, 사기범이 **정상 사용자의 텍스트 응답을 의도적으로 모방** 해
악의를 숨기는 **의미 위장(semantic camouflage)** 이 구조·속성 단서 기반 가정을 무너뜨립니다.

## 방법 (Method)
**CAMERA** — **ego-decoupled mixture-of-experts(MoE)** 구조로 각 전문가가 서로 다른 사기 단서 유형을
모델링하고, **문맥 인식 게이팅(context-informed gating)** 이 ego 노드 표현과 지역 이웃 문맥을 함께
고려해 적응적으로 통합합니다. **비지도(unsupervised)** 세팅.

## 핵심 기여 (Contributions)
- **의미 위장** 하의 비지도 TAGFD를 최초로 정식화
- 사기 단서별 전문가의 **ego-decoupled MoE**
- ego 표현 + 이웃 문맥의 **문맥 게이팅** 적응 통합

## 결과·데이터셋 (Results)
비지도 TAG 사기 벤치마크에서 효과 보고 *(구체 데이터셋·수치 미확인)*.

## 구조 상세
- **그래프 종류**: 텍스트 속성 그래프(TAG), **비지도·이질성/위장 대응**.
- **GNN 백본**: ego-decoupled **MoE** 기반 집계 + 문맥 게이팅.

## 관련 링크
- 개념: [위장(camouflage), 이질성](../../concepts/overview.md), [그래프 종류](../../concepts/graph-types.md)
- 같은 흐름: [HUGE](huge.md)(비지도), [CARE-GNN](care-gnn.md)(위장), [L2IR](../llm-gnn/l2ir.md)(의도 기반)

---
[← 카테고리](index.md)
