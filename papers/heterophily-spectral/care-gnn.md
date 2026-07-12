---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "CARE-GNN: Enhancing Graph Neural Network-based Fraud Detectors against Camouflaged Fraudsters"
description: 사기범의 특징·관계 위장(camouflage)에 대응하는 다관계 GNN. 라벨 인식 유사도 + 강화학습 이웃 선택 + 관계별 집계의 3모듈. YelpChi/Amazon 벤치마크의 원류.
resource: https://github.com/YingtongDou/CARE-GNN
tags: [camouflage, multi-relation, reinforcement-learning, foundational, must-read]
venue: CIKM 2020
year: 2020
timestamp: 2026-06-19T00:00:00Z
---

# ⭐ CARE-GNN: Enhancing Graph Neural Network-based Fraud Detectors against Camouflaged Fraudsters

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **CIKM 2020** (기반 논문)

[← 카테고리](index.md) · 원문/코드: [YingtongDou/CARE-GNN](https://github.com/YingtongDou/CARE-GNN) (CIKM 2020)

- **저자**: Yingtong Dou, Zhiwei Liu, Li Sun, Yutong Deng, Hao Peng, Philip S. Yu
- **발표처/연도**: CIKM 2020 *(그래프 사기 탐지의 대표적 기반 논문 — 이후 다수 연구의 baseline)*

## 문제 (Problem)
사기범은 정상 사용자와 유사하게 보이도록 **특징 위장(feature camouflage)** 과 **관계 위장(relation
camouflage)** 을 수행하여 GNN 집계 과정에서 탐지기 성능을 떨어뜨립니다.

## 방법 (Method)
**CARE-GNN (CAmouflage-REsistant GNN)** — 다관계 그래프 위에서 위장에 강건한 3개 모듈:
① **라벨 인식 유사도 측정(label-aware similarity)** 으로 이웃의 신뢰도를 평가,
② **강화학습(RL)** 으로 관계별 최적 이웃 필터링 임계값을 탐색,
③ **관계 인식 이웃 집계(relation-aware aggregation)** 로 최종 표현을 학습.

## 핵심 기여 (Contributions)
- **특징·관계 위장** 문제를 명시적으로 정식화
- 라벨 인식 유사도 + **RL 기반 적응형 이웃 선택**
- 관계별 집계로 위장 이웃의 영향 억제
- **YelpChi·Amazon** 다관계 벤치마크 세팅을 널리 확산

## 결과·데이터셋 (Results)
[YelpChi](../../datasets/yelpchi.md), [Amazon](../../datasets/amazon.md)에서 당시 SOTA. 이후 그래프 사기
탐지 연구의 표준 baseline이 됨.

## 관련 링크
- 개념: [위장(camouflage), 이질성](../../concepts/overview.md)
- 후속/관련: [PC-GNN](pc-gnn.md), [PMP](pmp.md), [SEC-GFD](sec-gfd.md) · 리소스: [awesome-fraud-detection](../../resources/awesome-fraud-detection.md)

---
[← 카테고리](index.md)
