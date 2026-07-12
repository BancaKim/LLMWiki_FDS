---
type: Research Paper
must_read: true
venue_tier: top-tier journal
title: "RGTAN: Enhancing Attribute-driven Fraud Detection with Risk-aware Graph Representation"
description: GTAN을 확장한 Risk-aware Gated Temporal Attention Network. 이웃 risk-aware 표현학습과 GTGA로 다중 홉 위험 구조를 포착. 실제 카드사 배포.
resource: https://ieeexplore.ieee.org/document/10896835
tags: [credit-card, temporal, risk-aware, attention, deployed, must-read]
venue: IEEE TKDE 2025
year: 2025
timestamp: 2026-06-19T00:00:00Z
---

# ⭐ RGTAN: Enhancing Attribute-driven Fraud Detection with Risk-aware Graph Representation

> ⭐ **필독 (MUST-READ)** · 탑티어 저널 게재: **IEEE TKDE 2025**

[← 카테고리](index.md) · 원문: [IEEE TKDE 2025](https://ieeexplore.ieee.org/document/10896835)

- **발표처/연도**: IEEE Transactions on Knowledge and Data Engineering (TKDE) 2025
  *(TKDE는 CLAUDE.md 기준 탑 AI 저널 → ⭐)*
- **코드**: [AI4Risk/antifraud](https://github.com/AI4Risk/antifraud) → [리소스](../../resources/ai4risk-antifraud.md)

## 문제 (Problem)
[GTAN](gtan.md)의 시간 거래 그래프 표현을 계승하되, **다중 홉 위험 구조(multi-hop risk structure)**
인식과 remittance(송금) 표현 학습을 강화해 사기 탐지 성능을 높이려 합니다.

## 방법 (Method)
**RGTAN (Risk-aware Gated Temporal Attention Network)**. 시간 거래 그래프 위에서 ① **이웃 risk-aware
표현학습(neighbor risk-aware representation learning) 계층** 으로 다중 홉 위험 구조 인식을 강화하고,
② **Gated Temporal Graph Attention(GTGA)** 메커니즘으로 노드 간 메시지를 전파하며 송금 표현을 적응적
으로 학습합니다. 거래 간 risk propagation으로 사기 패턴을 모델링합니다.

## 핵심 기여 (Contributions)
- GTAN 대비 **이웃 risk-aware 표현학습** 으로 다중 홉 위험 구조 포착
- **GTGA** 게이트 시간 그래프 어텐션
- 실제 대형 카드사에 **배포(deployed)**

## 결과·데이터셋 (Results)
실제 카드 거래 데이터 + 2개 공개 데이터에서 SOTA. [YelpChi](../../datasets/yelpchi.md) 기준
**AUC 0.9498, F1-Macro 0.8492, AP 0.8241** 보고. 세계적 카드 발급사에 실배포.

## 관련 링크
- 개념: [시간 그래프, risk propagation](../../concepts/glossary.md)
- 기반: [GTAN](gtan.md)(AAAI 2023) · 같은 그룹: [HOGRL](hogrl.md), [GNN 리뷰](../surveys/gnn-financial-fraud-review.md)
- 리소스: [AI4Risk/antifraud](../../resources/ai4risk-antifraud.md)

---
[← 카테고리](index.md)
