---
type: Research Paper
title: "ProTAGAD: A Foundation Model for TAG Anomaly Detection with Decoupled Topological and Textual Prototypes"
description: 텍스트-위상 표현을 분리 학습하는 프로토타입 기반 TAG 이상탐지 파운데이션 모델. 텍스트 이상 프로토타입과 위상 정상 프로토타입을 결정 단계에서만 결합해 교차모달 간섭(BAB) 회피.
resource: https://arxiv.org/abs/2608.10699
tags: [text-attributed-graph, foundation-model, prototype, anomaly, decoupled]
authors: Ziyan Wang, Liwen Wu, Cheng Xie, Song Gao, Zhenli He, Xin Jin
venue: arXiv 2026
year: 2026
timestamp: 2026-09-15T00:00:00Z
---

# ProTAGAD: A Foundation Model for TAG Anomaly Detection with Decoupled Topological and Textual Prototypes

[← 카테고리](index.md) · 원문: [arXiv:2608.10699](https://arxiv.org/abs/2608.10699)

- **저자**: Ziyan Wang, Liwen Wu, Cheng Xie, Song Gao, Zhenli He, Xin Jin
- **발표처/연도**: arXiv 2026 (2026-08-11 공개) — *현재 위키 기준 가장 최신*

## 문제 (Problem)
TAG 이상탐지는 위상 패턴과 텍스트 의미를 함께 활용해야 하는데, 기존 GNN 이상탐지기는 **전역
메시지 패싱** 으로 구조 근접성과 텍스트 의미를 무분별하게 융합합니다. 이 **깊은 교차모달 결합** 이
노이즈를 증폭해 정상-이상 경계가 흐려지는 **BAB(Blurred-Anomaly-Boundary)** 문제를 낳습니다.

## 방법 (Method)
**ProTAGAD** — **프로토타입 기반 파운데이션 모델**. 텍스트와 위상 표현학습을 **분리(decouple)** 하여,
전이 가능한 **텍스트 이상 프로토타입(textual anomaly prototypes)** 과 **위상 정상 프로토타입(topological
normality prototypes)** 을 은닉 표현 교환 없이 각각 학습하고, **결정 단계에서만** 두 이상 점수를
결합합니다. → 교차모달 간섭을 피하면서 두 모달의 상보적 이상 증거를 보존.

## 핵심 기여 (Contributions)
- 텍스트/위상 **분리 프로토타입** 으로 BAB 문제 완화
- 결정 단계 후기 융합(late fusion)으로 교차모달 간섭 회피
- TAG 이상탐지용 **파운데이션 모델** (전이 가능)

## 결과·데이터셋 (Results)
TAG 이상탐지 벤치마크에서 효과 보고 *(구체 수치 미확인)*.

## 관련 링크
- 개념: [LLM × GNN, TAG, 파운데이션](../../concepts/glossary.md), [동향·과제](../../concepts/trends-and-challenges.md)
- 같은 흐름: [N2N](n2n-semantic-consistency.md), [CAMERA](../heterophily-spectral/camera.md)

---
[← 카테고리](index.md)
