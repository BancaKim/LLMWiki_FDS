---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "Targeting Borderline Fraudsters: Multi-View Hypergraph Fraud Detection with LLM-Guided Contrastive Learning (MH-LGC)"
description: 단일 거래뷰의 한계로 위장하는 '경계선 사기범'을 잡기 위해 시간 하이퍼뷰(THAN)와 미세조정 불필요 LLM-Guided Contrastive(LGC) 의미뷰를 결합.
resource: https://ojs.aaai.org/index.php/AAAI/article/view/38588
tags: [llm, hypergraph, contrastive-learning, temporal, borderline-fraud, must-read]
venue: AAAI 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# ⭐ Targeting Borderline Fraudsters: Multi-View Hypergraph Fraud Detection with LLM-Guided Contrastive Learning (MH-LGC)

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **AAAI 2026**

[← 카테고리](index.md) · 원문: [AAAI 2026 (OJS)](https://ojs.aaai.org/index.php/AAAI/article/view/38588)

- **발표처/연도**: AAAI 2026

## 문제 (Problem)
거래 네트워크 기반 그래프 사기 탐지(GFD)에서, 기존 GNN은 **단일 거래뷰(single transaction view)** 의
제한된 시야 때문에 정교한 사기범이 약한 신호로 위장한 **경계선 사기범(borderline fraudsters)** 을
놓칩니다. 또한 ① 지역 집계로 **멀리 떨어진 사기범 간 고차 거래 패턴** 포착이 어렵고, ② 거래의 **풍부한
의미 단서**를 간과합니다.

## 방법 (Method)
**MH-LGC** — 다중뷰 하이퍼그래프 + LLM 유도 대조학습. ① 거래뷰의 보완으로 **두 개의 시간
하이퍼뷰(temporal hyper-views)** 를 도입하고 **Temporal Hypergraph Attention Network(THAN)** 로 세
뷰를 통합. ② **미세조정 불필요(fine-tuning-free) LLM-Guided Contrastive learning(LGC)** 로 의미뷰를
추가, LLM과 GNN을 결합하면서 LLM 연산 부담을 줄이는 새로운 패러다임을 제시합니다.

## 핵심 기여 (Contributions)
- 단일 거래뷰 한계를 넘는 **다중 시간 하이퍼뷰 + THAN** 통합
- **미세조정 불필요 LGC** 의미뷰로 LLM-GNN 결합(연산 부담↓)
- 경계선 사기범 탐지 성능 향상

## 결과·데이터셋 (Results)
3개 실제 데이터셋에서 **12개 SOTA 베이스라인 능가**, **AUC +1.10%~5.70%** 향상.

## 관련 링크
- 개념: [위장(camouflage), 하이퍼그래프, 대조학습](../../concepts/glossary.md)
- 같은 흐름: [DGP](dgp.md), [LGSPF](lgspf.md), [FraudCoT](fraudcot.md)

---
[← 카테고리](index.md)
