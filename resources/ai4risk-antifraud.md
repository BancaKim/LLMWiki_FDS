---
type: Resource
title: "AI4Risk / antifraud — 금융 사기 탐지 코드 프레임워크"
description: 금융 사기 탐지 모델(GTAN·RGTAN·HOGRL·Grad·STAGN·STAN·MCNN)을 구현한 오픈소스 프레임워크. 이 위키 여러 논문의 공식/참조 구현.
resource: https://github.com/AI4Risk/antifraud
tags: [resource, code, framework, ai4risk, credit-card, benchmark]
timestamp: 2026-06-19T00:00:00Z
---

# AI4Risk / antifraud — 금융 사기 탐지 코드 프레임워크

[← 리소스 목록](index.md) · 원본: [github.com/AI4Risk/antifraud](https://github.com/AI4Risk/antifraud)

**"A Financial Fraud Detection Framework"** — 여러 사기 탐지 모델을 한 코드베이스에서 구현·비교하는
오픈소스 프레임워크입니다. `models/ · data/ · config/ · feature_engineering/ · methods/` 로 구성됩니다.
이 위키 주제와 가장 밀접한 **코드 리소스** 이며, 저자 그룹은 [GNN 금융 사기 리뷰](../papers/surveys/gnn-financial-fraud-review.md)
저자들(Dawei Cheng 등)과 동일 계열입니다.

## 구현 모델 ↔ 이 위키 논문 매핑

| 모델 | 논문 / 발표처 | 이 위키 concept |
|------|---------------|-----------------|
| **HOGRL** | Effective High-order Graph Representation Learning (IJCAI 2024) | ⭐ [hogrl.md](../papers/credit-card-fraud/hogrl.md) |
| **GTAN** | Semi-supervised CC Fraud Detection via Attribute-driven Graph Repr. (AAAI 2023) | ⭐ [gtan.md](../papers/credit-card-fraud/gtan.md) |
| **RGTAN** | Risk-aware Graph Representation (IEEE TKDE 2025) | ⭐ [rgtan.md](../papers/credit-card-fraud/rgtan.md) |
| **Grad** | Guided Relation Diffusion Generation (WWW 2025) | ⭐ [grad.md](../papers/credit-card-fraud/grad.md) |
| STAGN | GNN for Fraud Detection via Spatial-temporal Attention (TKDE 2020) | (미수록 — 2020 기반) |
| STAN | Spatio-temporal Attention NN for CC Fraud (AAAI 2020) | (미수록 — 2020, 비-GNN) |
| MCNN | CC Fraud Detection via CNN (ICONIP 2016) | (미수록 — 2016, 비-GNN) |

> ⭐ 4종(HOGRL·GTAN·RGTAN·Grad)은 이 위키에 concept으로 수록되어 있습니다. STAGN/STAN/MCNN은
> 2016–2020 기반 모델이라 "최근 2개년" 범위 밖이라 미수록(필요 시 기반 논문으로 추가 가능).

## 지원 데이터셋

| 데이터셋 | 이 위키 concept |
|----------|-----------------|
| **YelpChi** | [yelpchi.md](../datasets/yelpchi.md) |
| **Amazon** | [amazon.md](../datasets/amazon.md) |
| **S-FFSD** (Simulated & small Financial Fraud Semi-supervised Dataset) | [ffsd.md](../datasets/ffsd.md) |

## 활용 팁
- 이 위키에서 논문을 읽고 **바로 재현/실험** 하고 싶을 때 antifraud의 대응 모델 구현을 사용하세요.
- 새 모델을 우리 위키에 추가할 때, antifraud에 구현이 있으면 논문 concept의 `코드` 필드에 링크하세요.

## 관련 링크
- 큐레이션 목록: [AI4Risk/awesome-fraud-detection](awesome-fraud-detection.md)
- 기반 리뷰: [GNN for Financial Fraud Detection: A Review](../papers/surveys/gnn-financial-fraud-review.md)

---
[← 리소스 목록](index.md)
