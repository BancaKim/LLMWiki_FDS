---
type: Research Paper
title: "Let Relations Speak: An End-to-End LLM-GNN Soft Prompt Framework for Fraud Detection (LGSPF)"
description: 텍스트 의존을 없애는 soft prompt와 다관계 위상을 graph token으로 번역하는 병렬 GNN 인코더로 LLM-GNN을 종단간 정렬하는 사기 탐지.
resource: https://arxiv.org/abs/2605.28524
tags: [llm, gnn, soft-prompt, multi-relation, end-to-end]
venue: arXiv 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# Let Relations Speak: An End-to-End LLM-GNN Soft Prompt Framework for Fraud Detection (LGSPF)

[← 카테고리](index.md) · 원문: [arXiv:2605.28524](https://arxiv.org/abs/2605.28524)

- **발표처/연도**: arXiv 2026 (2026-05-27 공개)

## 문제 (Problem)
LLM은 사기 탐지에 강하지만 대부분 **풍부한 텍스트 속성에 의존** 합니다. 사기 도메인은 텍스트가
부족하고, **하드 프롬프트로 그래프 구조를 텍스트화** 하면 **특징 왜곡(feature distortion)** 이 쉽게
발생합니다. 또한 사기는 **다관계(multi-relational) 복잡성** 이 커서 기존 방법이 깊은 의미를 포착하기
어렵습니다.

## 방법 (Method)
**LGSPF (LLM-GNN Soft Prompt Framework)** — **soft prompt** 로 그래프 구조와 의미 공간을 연결해
**텍스트 의존을 제거** 하고, **병렬 GNN 인코더** 가 다관계 위상을 **graph token** 으로 번역해 LLM이
세밀하게 사기를 이해하도록 합니다. **종단간(end-to-end) 최적화** 로 LLM-GNN 간 깊은 의미 정렬을
강화합니다.

## 핵심 기여 (Contributions)
- 텍스트 부족 문제를 푸는 **soft prompt** 기반 구조-의미 연결(하드 프롬프트 왜곡 회피)
- 다관계 위상을 **graph token** 으로 변환하는 병렬 GNN 인코더
- 종단간 최적화로 LLM-GNN 의미 정렬 강화

## 결과·데이터셋 (Results)
다양한 사기 탐지 벤치마크에서 **SOTA** 달성 보고 *(구체 데이터셋·수치 미확인)*.

## 관련 링크
- 개념: [Graph-enhanced LLM, 다관계](../../concepts/glossary.md)
- 같은 흐름: [DGP](dgp.md), [FraudCoT](fraudcot.md), [MH-LGC](mh-lgc.md)

---
[← 카테고리](index.md)
