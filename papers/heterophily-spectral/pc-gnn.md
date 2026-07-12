---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "PC-GNN: Pick and Choose — A GNN-based Imbalanced Learning Approach for Fraud Detection"
description: 라벨 불균형 그래프 사기 탐지를 위한 pick(라벨 균형 샘플러로 서브그래프 구성) & choose(이웃 샘플러로 이웃 선택·집계) 접근.
resource: https://dl.acm.org/doi/10.1145/3442381.3449989
tags: [class-imbalance, sampling, multi-relation, foundational, must-read]
venue: WWW 2021
year: 2021
timestamp: 2026-06-19T00:00:00Z
---

# ⭐ PC-GNN: Pick and Choose — A GNN-based Imbalanced Learning Approach for Fraud Detection

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **WWW (TheWebConf) 2021** (기반 논문)

[← 카테고리](index.md) · 원문: [WWW 2021 (ACM)](https://dl.acm.org/doi/10.1145/3442381.3449989) · 코드: [PonderLY/PC-GNN](https://github.com/PonderLY/PC-GNN)

- **저자**: Yang Liu, Xiang Ao, Zidi Qin, Jianfeng Chi, Jinghua Feng, Hao Yang, Qing He
- **발표처/연도**: WWW 2021 *(불균형 그래프 사기 탐지의 대표 기반 논문)*

## 문제 (Problem)
그래프 사기 탐지는 관계 정보가 풍부하지만, **노드 라벨 분포가 심하게 치우친(imbalanced)** 금융 사기
같은 영역에서 GNN 성능이 크게 저하됩니다.

## 방법 (Method)
**PC-GNN (Pick and Choose GNN)** — 불균형 지도학습을 위한 2단계:
① **Pick**: 고안한 **라벨 균형 샘플러(label-balanced sampler)** 로 노드·엣지를 선택해 미니배치용
서브그래프를 구성,
② **Choose**: 각 노드의 **이웃 후보를 이웃 샘플러로 선택** 하고 여러 관계의 정보를 집계해 최종 표현을
얻습니다(소수 클래스 이웃 오버샘플링).

## 핵심 기여 (Contributions)
- **라벨 균형 샘플링** 으로 불균형 완화
- 이웃 선택 샘플러로 소수(사기) 이웃 정보 강화
- 다관계 집계와 결합

## 결과·데이터셋 (Results)
벤치마크([YelpChi](../../datasets/yelpchi.md)/[Amazon](../../datasets/amazon.md)) 및 실제 사기 탐지
과제에서 SOTA baseline 능가.

## 관련 링크
- 개념: [클래스 불균형](../../concepts/overview.md)
- 관련: [CARE-GNN](care-gnn.md), [PMP](pmp.md)(메시지 분리로 불균형·이질성 대응)

---
[← 카테고리](index.md)
