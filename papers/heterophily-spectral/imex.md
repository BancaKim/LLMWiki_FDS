---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "IMEX: Integrated Mixture of Neighborhood and Community Experts for Graph-Based Fraud Detection"
description: 이웃 수준(neighborhood)과 커뮤니티 수준(community) 전문가를 통합하는 Mixture-of-Experts로 지역·집단 사기 패턴을 함께 포착하는 그래프 사기 탐지.
resource: https://doi.org/10.1145/3774904.3792122
tags: [mixture-of-experts, community, neighborhood, multi-relation, must-read]
authors: Zhizhi Yu, Di Jin, Dongxiao He, Wenhuan Lu, Jianguo Wei
venue: WWW 2026
year: 2026
timestamp: 2026-09-15T00:00:00Z
---

# ⭐ IMEX: Integrated Mixture of Neighborhood and Community Experts for Graph-Based Fraud Detection

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **WWW (TheWebConf) 2026**

[← 카테고리](index.md) · 원문: [WWW 2026 (ACM DOI)](https://doi.org/10.1145/3774904.3792122)

- **저자**: Zhizhi Yu, Di Jin, Dongxiao He, Wenhuan Lu, Jianguo Wei
- **발표처/연도**: ACM Web Conference (WWW) 2026

## 문제 (Problem)
그래프 사기 탐지에서 사기 신호는 **지역 이웃(neighborhood)** 뿐 아니라 **커뮤니티(community) 수준** 의
집단 패턴으로도 드러나, 단일 시야의 집계로는 두 규모를 함께 포착하기 어렵습니다.

## 방법 (Method)
**IMEX** — **이웃 전문가(neighborhood experts) + 커뮤니티 전문가(community experts)** 를 통합한
**Mixture-of-Experts(MoE)** 프레임워크로, 서로 다른 규모의 사기 단서를 전문가별로 모델링하고 통합합니다.
*(세부 게이팅·전문가 구성은 부분 미확인 — 원문 확인 권장.)*

## 핵심 기여 (Contributions)
- 이웃 수준 + **커뮤니티 수준** 을 결합한 **통합 MoE** 프레임워크
- 지역·집단 규모의 사기 패턴을 함께 포착
- WWW 2026 게재

## 결과·데이터셋 (Results)
그래프 사기 벤치마크에서 SOTA 보고 *(구체 데이터셋·수치 미확인)*.

## 구조 상세
- **그래프 종류**: 다관계·커뮤니티 구조 활용.
- **GNN 백본**: **MoE**(neighborhood/community 전문가) — 다중 규모 집계.

## 관련 링크
- 개념: [그래프 종류·GNN 백본](../../concepts/graph-types.md)
- 같은 흐름(MoE/집계): [DGA-GNN](dga-gnn.md), [GAAP](gaap.md), [CAMERA](camera.md)

---
[← 카테고리](index.md)
