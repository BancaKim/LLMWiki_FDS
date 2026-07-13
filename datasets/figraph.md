---
type: Dataset
title: FiGraph
description: 중국 상장기업 기반 동적 이종 그래프 재무사기 데이터셋. 9개 연도 스냅샷(2014–2022), 노드 730,408 / 엣지 1,040,997, 노드 5종·엣지 4종.
resource: https://github.com/XiaoguangWang23/FiGraph
tags: [dataset, corporate-fraud, dynamic, heterogeneous, financial]
timestamp: 2026-06-19T00:00:00Z
---

# FiGraph

[← 데이터셋 카탈로그](index.md)

## 개요
중국 **상장기업 재무사기(financial-statement fraud)** 탐지를 위한 **동적 이종 그래프** 데이터셋.
연도별 스냅샷으로 기업 간 관계의 시간적 진화를 담습니다.

## 구조
- **스냅샷**: 9개 (**2014–2022**, 연 단위).
- **규모**: 노드 **730,408** / 엣지 **1,040,997**.
- **노드 타입 5종**: 타깃 = 상장기업(사기/정상 라벨) + 인물·관련 개체 등. 배경 노드는 라벨·속성 없음.
- **엣지 타입 4종**: 투자·공급망 등 (같은 노드쌍에 복수 관계 공존 가능).

## 특징
- **동적 + 이종** — 시간 스냅샷마다 노드·엣지 변화, 다중 타입 관계.
- **극심한 불균형** + 배경 노드 다수 → 준지도/현실적 세팅.

## 이 데이터셋을 쓰는 논문
- [FFD-DHG](../papers/credit-card-fraud/ffd-dhg.md) (Intelligent Computing 2026)

> 관련 개념: [그래프 종류(동적·이종)](../concepts/graph-types.md)

---
[← 데이터셋 카탈로그](index.md)
