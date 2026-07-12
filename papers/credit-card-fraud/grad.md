---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "Grad: Guided Relation Diffusion Generation for Graph Augmentation in Graph Fraud Detection"
description: '적응형 위장(Adaptive Camouflage)'에 대응해 지도 그래프 대조학습 + guided relation diffusion으로 동질(homophilic) 관계를 생성·증강하는 그래프 사기 탐지.
resource: https://arxiv.org/abs/2512.18133
tags: [credit-card, graph-augmentation, diffusion, contrastive-learning, camouflage, must-read]
venue: WWW 2025
year: 2025
timestamp: 2026-06-19T00:00:00Z
---

# ⭐ Grad: Guided Relation Diffusion Generation for Graph Augmentation in Graph Fraud Detection

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **WWW (TheWebConf) 2025**

[← 카테고리](index.md) · 원문: [arXiv:2512.18133](https://arxiv.org/abs/2512.18133) · [WWW 2025 (ACM)](https://dl.acm.org/doi/10.1145/3696410.3714520)

- **발표처/연도**: ACM Web Conference (WWW) 2025
- **코드**: [Muyiiiii/WWW25-Grad](https://github.com/Muyiiiii/WWW25-Grad) · [AI4Risk/antifraud](https://github.com/AI4Risk/antifraud)

## 문제 (Problem)
사기범이 정상 사용자와 특성이 일치하도록 행동 데이터를 모방하는 **적응형 위장(Adaptive Camouflage)**
은 사기-정상 차이를 좁혀 기존 그래프 사기 탐지(GFD) 모델의 효율을 떨어뜨립니다.

## 방법 (Method)
**Grad** — ① **지도 그래프 대조학습(supervised graph contrastive learning)** 모듈로 사기-정상 차이를
강화하고, ② **guided relation diffusion generator** 로 보조적인 **동질(homophilic) 관계를 처음부터
생성** 하여 그래프를 증강합니다.

## 핵심 기여 (Contributions)
- **적응형 위장** 문제 정식화 및 대응
- 지도 그래프 대조학습으로 사기-정상 판별력 강화
- **guided relation diffusion** 기반 동질 관계 생성 그래프 증강

## 결과·데이터셋 (Results)
WeChat Pay 실데이터 2종 + 공개 데이터 3종에서 SOTA 능가. 최대 **AUC +11.10%, AP +43.95%** 향상.

## 관련 링크
- 개념: [위장(camouflage), 대조학습, 이질성](../../concepts/glossary.md)
- 같은 흐름(생성·증강): [HUGE](../heterophily-spectral/huge.md) · 리소스: [AI4Risk/antifraud](../../resources/ai4risk-antifraud.md)

---
[← 카테고리](index.md)
