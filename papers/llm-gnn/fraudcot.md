---
type: Research Paper
title: "FraudCoT: Autonomous Chain-of-Thought Distillation for Graph-Based Fraud Detection"
description: 텍스트 속성 그래프(TAG)에서 자율적·그래프 인식 CoT 추론을 증류해 LLM-GNN을 공동 학습하는 사기 탐지 프레임워크.
resource: https://arxiv.org/abs/2601.22949
tags: [llm, gnn, chain-of-thought, distillation, text-attributed-graph]
venue: arXiv 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# FraudCoT: Autonomous Chain-of-Thought Distillation for Graph-Based Fraud Detection

[← 카테고리](index.md) · 원문: [arXiv:2601.22949](https://arxiv.org/abs/2601.22949)

- **발표처/연도**: arXiv 2026 (2026-01-30 공개)

## 문제 (Problem)
텍스트 속성 그래프(TAG) 기반 사기 탐지는 **풍부한 텍스트 의미 + 관계 의존성**을 함께 모델링해야
합니다. 기존 LLM-enhanced GNN은 **사전 정의된 프롬프트**와 **분리된(decoupled) 학습 파이프라인**에
묶여 추론 자율성이 떨어지고 의미-구조 정렬이 약합니다.

## 방법 (Method)
**FraudCoT** — 자율적·**그래프 인식 Chain-of-Thought(CoT)** 추론과 확장 가능한 **LLM-GNN 공동
학습(co-training)** 을 통합한 프레임워크. **fraud-aware selective CoT distillation** 으로 다양한 추론
경로를 생성해 의미-구조 이해를 강화하고, 증류된 CoT를 **노드 텍스트에 통합** 하여 GNN에 다중 홉
의미·구조 단서를 풍부하게 제공합니다.

## 핵심 기여 (Contributions)
- 사기 인식 **선택적 CoT 증류**로 자율적 추론 경로 생성
- 증류 CoT를 노드 텍스트에 주입 → GNN에 다중 홉 의미·구조 단서 강화
- 확장 가능한 LLM-GNN 공동 학습으로 의미-구조 정렬 개선

## 결과·데이터셋 (Results)
TAG 사기 벤치마크에서 효과 보고 *(구체 수치 미확인)*.

## 관련 링크
- 개념: [LLM-enhanced GNN, TAG](../../concepts/glossary.md)
- 같은 흐름: [FLAG](flag.md), [MLED](mled.md), [DGP](dgp.md), [LGSPF](lgspf.md)

---
[← 카테고리](index.md)
