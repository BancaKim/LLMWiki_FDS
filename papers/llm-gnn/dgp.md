---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "DGP: A Dual-Granularity Prompting Framework for Fraud Detection with Graph-Enhanced LLMs"
description: 타깃 노드는 상세히, 이웃은 요약하는 이중 입도(dual-granularity) 프롬프트로 토큰 예산 내에서 그래프 정보를 LLM에 주입. AUPRC 최대 +6.8%.
resource: https://arxiv.org/abs/2507.21653
tags: [llm, graph-enhanced-llm, prompting, dual-granularity, token-budget]
authors: Yuan Li, Jun Hu, Bryan Hooi, Bingsheng He, Cheng Chen
venue: AAAI 2026
year: 2025
timestamp: 2026-06-18T00:00:00Z
---

# ⭐ DGP: A Dual-Granularity Prompting Framework for Fraud Detection with Graph-Enhanced LLMs

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **AAAI 2026**

[← 카테고리](index.md) · 원문: [arXiv:2507.21653](https://arxiv.org/abs/2507.21653) · [AAAI](https://ojs.aaai.org/index.php/AAAI/article/view/38541)

- **저자**: Yuan Li, Jun Hu, Bryan Hooi, Bingsheng He, Cheng Chen
- **발표처/연도**: AAAI 2026 *(AAAI 2025 vs 2026 미확정 — 2026으로 표기)*

## 문제 (Problem)
텍스트 전용 프롬프트는 이질적 사기 그래프에서 어려움을 겪습니다. 다중 홉 관계가 지수적으로 늘어
**길고 무관한 이웃 텍스트** 가 프롬프트를 채워 타깃 노드의 핵심 신호를 묻어버립니다.

## 방법 (Method)
**이중 입도 프롬프트(dual-granularity prompting)**: 타깃 노드는 **세밀한(fine-grained)** 텍스트로
보존하고, 이웃 정보는 **거친(coarse-grained)** 프롬프트로 요약합니다. **모달리티별 요약** —
텍스트 필드는 2단계 의미 추상화(bi-level semantic abstraction), 수치 특징은 통계 집계(statistical
aggregation) — 로 장황한 이웃 내용을 토큰 예산 내 간결한 프롬프트로 압축합니다.

## 핵심 기여 (Contributions)
- **이중 입도 프롬프트** (타깃 상세 + 이웃 요약)
- **모달리티별 요약** (텍스트: 의미 추상화 / 수치: 통계 집계)
- **토큰 예산 인식** 설계로 Graph-enhanced LLM 사기 탐지 실현

## 결과·데이터셋 (Results)
공개·산업 데이터셋에서 SOTA 대비 **AUPRC 최대 +6.8%** *(구체 데이터셋명 미확인)*.

## 관련 링크
- 개념: [Graph-enhanced LLM, 이중 입도](../../concepts/glossary.md), [LLM 비용·토큰 한계](../../concepts/trends-and-challenges.md)
- 같은 흐름: [FLAG](flag.md), [MLED](mled.md)

---
[← 카테고리](index.md)
