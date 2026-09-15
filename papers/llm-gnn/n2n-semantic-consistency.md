---
type: Research Paper
title: "N2N: Node-to-Neighborhood Semantic Consistency — Text-Topology Alignment for TAGs Anomaly Detection"
description: TAG 이상탐지를 '노드-이웃 의미 일관성' 문제로 정식화 — 텍스트 의미 불일치 또는 위상 이탈로 이상을 정의하고 텍스트-위상 정렬로 탐지.
resource: https://arxiv.org/abs/2606.30009
tags: [text-attributed-graph, anomaly, text-topology-alignment, semantic-consistency, llm]
authors: Bochen Lin, Jianxiang Yu, Jiayi Wu, Lin Qi, Huang Lu, Xiang Li
venue: arXiv 2026
year: 2026
timestamp: 2026-09-15T00:00:00Z
---

# N2N: Node-to-Neighborhood Semantic Consistency — Text-Topology Alignment for TAGs Anomaly Detection

[← 카테고리](index.md) · 원문: [arXiv:2606.30009](https://arxiv.org/abs/2606.30009)

- **저자**: Bochen Lin, Jianxiang Yu, Jiayi Wu, Lin Qi, Huang Lu, Xiang Li
- **발표처/연도**: arXiv 2026 (2026-06-29 공개)

## 문제 (Problem)
텍스트 속성 그래프(TAG) 이상탐지에서, GNN 기반은 **텍스트 의미** 를 놓치고 LLM+그래프 기반은 이웃 간
**위상 관계** 를 충분히 이해하지 못합니다. 두 방식 모두 **텍스트 의미와 위상 관계의 대응** 을 간과해,
이웃과 의미가 불일치하는 노드를 놓칩니다.

## 방법 (Method)
**N2N** — TAG 이상탐지를 **노드-이웃 의미 일관성(node-to-neighborhood semantic consistency)** 문제로
정식화. 이상은 노드와 이웃 간 ① **텍스트 의미 불일치(semantic mismatch)** 또는 ② **위상 이탈
(topological deviation)** 에서 발생한다고 보고, **텍스트-위상 정렬(text-topology alignment)** 로 탐지.

## 핵심 기여 (Contributions)
- TAG 이상을 **노드-이웃 의미 일관성** 으로 정식화(텍스트+위상 대응)
- 텍스트 의미 불일치 / 위상 이탈 이중 관점
- GNN-only·LLM+graph 각각의 한계를 보완

## 결과·데이터셋 (Results)
TAG 이상탐지 벤치마크에서 효과 보고 *(구체 수치 미확인)*.

## 관련 링크
- 개념: [LLM × GNN, TAG](../../concepts/glossary.md)
- 같은 흐름: [CAMERA](../heterophily-spectral/camera.md), [ProTAGAD](protagad.md), [MLED](mled.md)

---
[← 카테고리](index.md)
