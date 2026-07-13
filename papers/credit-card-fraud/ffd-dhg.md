---
type: Research Paper
title: "FFD-DHG: Financial Fraud Detection Based on Dynamic Heterogeneous Graph Representation Learning"
description: 상장기업 재무사기 탐지. 연도별 스냅샷의 동적 이종 그래프에 이웃 차이(difference) 집계 + RL 특징융합 + 시간 인코딩으로 위장·시간의존성 대응. FiGraph 데이터.
resource: https://doi.org/10.34133/icomputing.0257
tags: [dynamic, heterogeneous, corporate-fraud, temporal, reinforcement-learning, figraph]
authors: Chenxu Wang, Mengqin Wang, Ruofan Wang, Xiaoguang Wang
venue: Intelligent Computing (SPJ) 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# FFD-DHG: Financial Fraud Detection Based on Dynamic Heterogeneous Graph Representation Learning

[← 카테고리](index.md) · 그래프 구조 개념: [graph-types](../../concepts/graph-types.md)

## 1. 기본 정보
- **제목**: FFD-DHG: Financial Fraud Detection Based on Dynamic Heterogeneous Graph Representation Learning
- **저자**: Chenxu Wang, Mengqin Wang, Ruofan Wang, Xiaoguang Wang
- **연도/발표처**: **2026 · Intelligent Computing** (Science Partner Journal, AAAS) *(도메인 저널 — ⭐ 아님)*
- **링크**: [DOI 10.34133/icomputing.0257](https://doi.org/10.34133/icomputing.0257)

## 2. 연구 배경
- **문제**: 상장기업의 **재무제표 사기(corporate/financial-statement fraud)** 탐지.
- **기존 한계**: 단일·정적 데이터 의존, **동적 기업 간 관계**와 시간에 걸친 협력행위 미포착,
  **사기 위장(정상 기업과의 관계 형성)** 및 시간 의존성 모델링 부재.
- **왜 그래프**: 기업 간 **다중 타입 관계가 시간에 따라 진화** → 동적 이종 그래프가 필요.

## 3. 데이터셋
- **실데이터·공개** — 중국 상장기업 기반 **[FiGraph](../../datasets/figraph.md)** (GitHub 공개).
- **노드 종류**: **5종** (타깃 = 상장기업[사기/정상 라벨], 인물, 관련 개체 등). **엣지 종류**: **4종**
  (투자·공급망 등, 같은 노드쌍에 복수 관계 공존 가능).
- **규모**: **노드 730,408 / 엣지 1,040,997**, **9개 스냅샷(2014–2022)**. 배경 노드는 라벨·속성 없음.

## 4. 그래프 종류
- **Dynamic + Heterogeneous Graph**.
- **선택 이유**: 기업 간 관계가 **다중 타입(이종)** 이며 **연도 스냅샷마다 변함(동적)**, 사기는 시간적
  진화 + 위장으로 드러나기 때문.

## 5. 모델 구조 (Pipeline)
```
다중소스 기업 데이터(Raw)
↓ 시간 스냅샷별 동적 이종 그래프 구성
↓ 스냅샷별 fraud-aware 그래프 합성곱 인코더: 이웃 "차이(difference)" 정보 집계(위장 대응)
↓ 강화학습(RL) 기반 특징 융합: 필터링 임계값 적응 조정(노이즈 감소)
↓ 시간 모듈: 슬라이딩 윈도우 + 시간 인코딩(교차시점 문맥 유사성)
↓ 노드 임베딩 → 분류 → Fraud Score
```

## 6. 사용한 GNN
- **이종 GNN(HGNN)** — GCN 스타일 **fraud-aware 그래프 합성곱**(이웃 차이 집계)에 attention,
  **RL 특징 융합 + 시간 인코딩** 결합. HAN/HGT 등 구체 백본 채택 여부는 **(미확인)**.
- **선택 이유**: 위장·시간 진화·이종 관계를 동시에 다루기 위해.

## 관련 링크
- 개념: [그래프 종류(동적·이종)](../../concepts/graph-types.md) · 데이터셋: [FiGraph](../../datasets/figraph.md)
- 같은 흐름(동적·이종): [Dynamic HG Contrastive](dynamic-hg-contrastive.md), [GEM](hgnn-malicious-account.md)

---
[← 카테고리](index.md)
