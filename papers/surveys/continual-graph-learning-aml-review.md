---
type: Research Paper
title: "Advances in Continual Graph Learning for Anti-Money Laundering Systems: A Comprehensive Review"
description: GNN 기반 AML을 위한 지속학습(continual learning) 기법을 replay/regularization/architecture로 분류한 리뷰.
resource: https://arxiv.org/abs/2503.24259
tags: [survey, aml, continual-learning, gnn, catastrophic-forgetting]
authors: Bruno Deprez, Wei Wei, Wouter Verbeke, Bart Baesens, Kevin Mets, Tim Verdonck
venue: arXiv 2025 / WIREs Computational Statistics
year: 2025
timestamp: 2026-06-18T00:00:00Z
---

# Advances in Continual Graph Learning for Anti-Money Laundering Systems: A Comprehensive Review

[← 서베이 목록](index.md) · 원문: [arXiv:2503.24259](https://arxiv.org/abs/2503.24259)

- **저자**: Bruno Deprez, Wei Wei, Wouter Verbeke, Bart Baesens, Kevin Mets, Tim Verdonck
- **발표처/연도**: arXiv 2025 — *WIREs Computational Statistics* (Wiley) 게재

## 문제 (Problem)
AML 시스템은 방대한 거래 스트림을 끊임없이 모니터링해야 하지만 자금세탁 수법은 계속 진화합니다.
일반 모델은 새 데이터로 미세조정하면 **파국적 망각(catastrophic forgetting)** 이 발생해 동적
환경에서 효과가 떨어집니다.

## 방법 (Method)
GNN 프레임워크 내 **지속학습(continual learning)** 기법을 **재현(replay) / 정규화(regularization) /
구조(architecture)** 기반 전략으로 분류하고, 합성·실제 AML 데이터에서 하이퍼파라미터 영향을 실험
분석합니다.

## 핵심 기여 (Contributions)
- GNN 기반 AML을 위한 지속학습 기법의 **3분류 체계**
- 하이퍼파라미터 영향에 대한 심층 실험 연구
- 극심한 불균형·진화하는 패턴에서 지속학습의 적응성·강건성 효과 입증

## 결과·데이터셋 (Results)
합성·실제 AML 데이터 *(구체 명칭 일부 미확인)*. 지속학습이 적응성·강건성을 개선.

## 관련 링크
- 개념: [동향·과제 — 파운데이션·지속학습](../../concepts/trends-and-challenges.md)
- 데이터셋: [Elliptic](../../datasets/elliptic.md), [IBM AML](../../datasets/ibm-aml.md)
- 같은 도메인: [AML·암호화폐 논문](../aml-crypto/index.md)

> 💡 **AML + 운영(MLOps)** 관점에서 모델을 어떻게 지속 업데이트할지 고민한다면 필독.

---
[← 서베이 목록](index.md)
