---
type: Concept
title: 분류 체계 (Taxonomy)
description: GNN × FDS 연구를 나누는 축 — 주제 카테고리, 학습 방식, 그래프 구조, 핵심 기법, 응용 도메인.
tags: [taxonomy, classification, gnn, fds]
timestamp: 2026-06-18T00:00:00Z
---

# 분류 체계 (Taxonomy)

[← 개념 목록](index.md) · [번들 루트](../index.md)

## 1차 축 — 주제별 카테고리 (이 번들의 디렉터리 구조)

```
GNN × FDS
├── 📊 서베이·리뷰            분야 조망 / 분류 체계 제시
├── 💳 신용카드·거래 사기      카드·트랜잭션 단위 탐지 (핵심 응용)
├── 🤖 LLM × GNN             텍스트 의미정보 + 그래프 구조 융합
├── 🏦 AML·암호화폐           자금세탁·불법계좌 (시계열·대규모 그래프)
├── 🌐 이질성·스펙트럼         heterophily / spectral 메시지 패싱 개선
└── 🛡️ 강건성·설명가능성       적대적 공격·동적 학습·XAI
```
→ [papers/index.md](../papers/index.md) 에서 각 카테고리로 이동.

## 보조 축 1 — 학습 방식 (Supervision)

| 방식 | 설명 | 예시 |
|------|------|------|
| 지도 (Supervised) | 라벨된 사기/정상 학습 | 대부분의 카드사기 GNN |
| 준지도 (Semi-supervised) | 소량 라벨 + 다량 비라벨 | SAGE-FIN, SEC-GFD |
| 자기/비지도 (Self/Unsupervised) | 라벨 없이 이상 탐지 | HUGE |
| 지속학습 (Continual) | 새 데이터 적응, 망각 방지 | AML continual learning 리뷰 |
| In-context / Zero-shot | 파운데이션 모델·프롬프트 | DGP |

## 보조 축 2 — 그래프 구조

| 구조 | 설명 | 예시 |
|------|------|------|
| 동질 (Homogeneous) | 단일 노드/엣지 타입 | 기본 GCN/GAT |
| 이종 (Heterogeneous) | 다중 노드·엣지 타입 | HGNN, STA-GT, SEFraud |
| 멀티그래프 (Multigraph) | 노드쌍 간 다중 평행 엣지 | DIAM |
| 다관계 (Multi-relation) | 여러 관계 유형 동시 | YelpChi/Amazon 세팅 |
| 시간 (Temporal/Dynamic) | 시간에 따라 변함 | CaT-GNN, TeMP-TraG, STA-GT |
| 고차/하이퍼 (High-order) | 다중 홉·하이퍼엣지 | HOGRL |

## 보조 축 3 — 핵심 기법 (Technique)

| 기법 | 핵심 아이디어 | 예시 |
|------|---------------|------|
| 메시지 패싱 개선 | 이질성·불균형 대응 집계 | PMP, SEC-GFD |
| 스펙트럼/필터링 | 주파수 영역 분석 | SEC-GFD |
| Graph Transformer | 어텐션 장거리 의존성 | FraudGT, STA-GT |
| 인과·불변학습 | 환경 변화 강건 | CaT-GNN |
| 대조학습 | 정상/이상 표현 분리 | node-subgraph contrastive |
| LLM 융합 | 텍스트 의미 + 구조 | FLAG, DGP, MLED |
| 강화학습 (RL) | 동적 정책·가중치 | RL-GNN, GNN-CL |
| 설명가능 (XAI) | 마스크·인과·서술 생성 | SEFraud, SAGE-FIN, Graph-LLM |

## 보조 축 4 — 응용 도메인

신용카드 · 거래 트랜잭션 · 자금세탁(AML) · 암호화폐 · 리뷰/평판 · 가짜뉴스 ·
보험/의료 사기 · 프로모션 어뷰징 · 봇 탐지 · 라이드헤일링.

## 카테고리 vs. 보조축 매핑 (대표 논문)

| 논문 | 주제 | 학습 | 구조 | 핵심기법 |
|------|------|------|------|----------|
| [CaT-GNN](../papers/credit-card-fraud/cat-gnn.md) | 카드·거래 | 지도 | 시간 | 인과·불변학습 |
| [HOGRL](../papers/credit-card-fraud/hogrl.md) | 카드·거래 | 지도 | 고차 | MoE 어텐션 |
| [FraudGT](../papers/credit-card-fraud/fraudgt.md) | 카드·거래 | 지도 | 이종 | Graph Transformer |
| [STA-GT](../papers/credit-card-fraud/sta-gt.md) | 카드·거래 | 지도 | 이종·시간 | Graph Transformer |
| [FLAG](../papers/llm-gnn/flag.md)/[DGP](../papers/llm-gnn/dgp.md)/[MLED](../papers/llm-gnn/mled.md) | LLM×GNN | 지도/프롬프트 | 다관계 | LLM 융합 |
| [DIAM](../papers/aml-crypto/diam.md) | AML·암호화폐 | 지도 | 멀티그래프 | Edge2Seq + 불일치 |
| [TeMP-TraG](../papers/aml-crypto/temp-trag.md) | AML·암호화폐 | 지도 | 시간 멀티그래프 | 시간 가중 메시지 |
| [HUGE](../papers/heterophily-spectral/huge.md) | 이질성 | 비지도 | 다관계 | 이질성 지표(HALO) |
| [PMP](../papers/heterophily-spectral/pmp.md) | 이질성 | 지도 | 다관계 | 분리 메시지 패싱 |
| [SEC-GFD](../papers/heterophily-spectral/sec-gfd.md) | 이질성 | 준지도 | 다관계 | 스펙트럼 필터링 |
| [MonTi](../papers/robustness-explainability/monti.md) | 강건성 | (공격) | 다관계 | 그래프 주입 공격 |
| [SEFraud](../papers/robustness-explainability/sefraud.md) | 설명가능성 | 지도 | 이종 | 마스크 학습 |

---
[← 이전: 개요](overview.md) · [다음: 데이터셋 개요 →](datasets-overview.md)
