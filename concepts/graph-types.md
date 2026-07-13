---
type: Concept
title: 그래프 종류와 GNN 백본 (Graph Types & GNN Backbones)
description: FDS에서 쓰는 그래프 구조(Homogeneous·Heterogeneous·Hypergraph·Dynamic)와 각 구조에 맞는 GNN 백본(GCN·GraphSAGE·GAT·R-GCN·HAN·HGT·HGNN·HyperGCN) 설명 및 논문별 구조 색인.
tags: [graph-types, heterogeneous, hypergraph, dynamic, gnn-backbone]
timestamp: 2026-06-19T00:00:00Z
---

# 그래프 종류와 GNN 백본 (Graph Types & GNN Backbones)

[← 개념 목록](index.md) · [번들 루트](../index.md)

사기 탐지 논문을 읽을 때 **어떤 그래프 구조를 왜 썼고, 어떤 GNN 백본을 왜 골랐는가** 가 핵심입니다.
이 문서는 그 기준을 정리하고, 위키 논문을 **구조별로 색인** 합니다.

## 1. 그래프 종류 (Graph Types)

### ① Homogeneous Graph (동질 그래프)
- **정의**: 노드/엣지 타입이 **한 종류**. 예: 거래-거래 그래프.
- **왜 FDS에서**: 단순·확장성 좋음. 단일 관계만 있을 때.
- **한계**: 사용자·상점·기기 등 **이질적 개체 관계**를 표현 못함.
- 예: [OES-GNN](../papers/credit-card-fraud/oes-gnn.md), [GNN-CL](../papers/credit-card-fraud/gnn-cl.md)(부분적)

### ② Heterogeneous Graph (이종 그래프)
- **정의**: **여러 노드 타입 + 여러 엣지(관계) 타입**. 예: 사용자·상점·거래(노드) / "결제"·"환불"·"동일기기"(엣지).
- **왜 FDS에서**: 금융 사기는 **다양한 개체의 상호작용** 속에서 드러남 → 이종 구조가 자연스럽고
  표현력이 큼. YelpChi/Amazon의 **다관계(multi-relation)** 세팅도 이 범주.
- **한계**: 관계별 파라미터 증가, 설계 복잡.
- 예: [HGNN+Graph Attention](../papers/credit-card-fraud/hgnn-graph-attention.md),
  [SEFraud](../papers/robustness-explainability/sefraud.md), [STA-GT](../papers/credit-card-fraud/sta-gt.md),
  [Alipay 악성계정 HGNN](../papers/credit-card-fraud/hgnn-malicious-account.md),
  [HG Auto-Encoder](../papers/credit-card-fraud/hg-autoencoder.md),
  다관계: [PMP](../papers/heterophily-spectral/pmp.md)·[SEC-GFD](../papers/heterophily-spectral/sec-gfd.md)·[HUGE](../papers/heterophily-spectral/huge.md)·[CARE-GNN](../papers/heterophily-spectral/care-gnn.md)·[PC-GNN](../papers/heterophily-spectral/pc-gnn.md)

### ③ Hypergraph (하이퍼그래프)
- **정의**: 하나의 **하이퍼엣지가 3개 이상 노드**를 동시에 연결 → **고차(group) 관계** 표현.
- **왜 FDS에서**: 사기 갱단·공모처럼 **여러 개체가 동시에 얽힌 집단 패턴**을 자연스럽게 모델링.
  단순 쌍(pairwise) 엣지로는 놓치는 고차 상호작용 포착.
- **한계**: 하이퍼엣지 구성·연산 비용.
- 예: [MH-LGC](../papers/llm-gnn/mh-lgc.md)(다중뷰 시간 하이퍼그래프)

### ④ Dynamic / Temporal Graph (동적·시간 그래프)
- **정의**: 노드·엣지·특징이 **시간에 따라 변함**. 스냅샷 시퀀스 또는 연속 시간 이벤트.
- **왜 FDS에서**: 거래는 **시간 순서**가 있고 사기 패턴은 **진화**함 → 시간 정보가 결정적.
- **한계**: 시간 모델링·업데이트 비용, 개념 변화(concept drift) 대응 필요.
- 예: [CaT-GNN](../papers/credit-card-fraud/cat-gnn.md)·[TeMP-TraG](../papers/aml-crypto/temp-trag.md)·[GTAN](../papers/credit-card-fraud/gtan.md)·[RGTAN](../papers/credit-card-fraud/rgtan.md)·[STA-GT](../papers/credit-card-fraud/sta-gt.md)·[FFD-DHG](../papers/credit-card-fraud/ffd-dhg.md)·[Dynamic HG Contrastive](../papers/credit-card-fraud/dynamic-hg-contrastive.md)

> 참고: **Multigraph**(노드쌍 간 다중 평행 엣지, 예 [DIAM](../papers/aml-crypto/diam.md))와
> **High-order graph**(다중 홉, 예 [HOGRL](../papers/credit-card-fraud/hogrl.md))도 이종/고차 구조의 변형.

## 2. GNN 백본 (GNN Backbones)

| 백본 | 대상 구조 | 핵심 | FDS에서 선택 이유 |
|------|-----------|------|-------------------|
| **GCN** | 동질 | 스펙트럼 기반 이웃 평균 집계 | 단순 baseline |
| **GraphSAGE** | 동질 | 이웃 샘플링 + 귀납적 집계 | 대규모·귀납(신규 노드) 대응 |
| **GAT** | 동질/이종 | 어텐션으로 이웃 가중 | 위장 이웃 가중 조절, 관계 중요도 학습 |
| **R-GCN** | 이종 | **관계별(relation-specific) 가중치** | 여러 관계 유형을 구분 집계 |
| **HAN** | 이종 | **메타패스 + 노드/시맨틱 이중 어텐션** | 메타패스 의미 반영 |
| **HGT** | 이종 | **타입 인식 트랜스포머 어텐션** | 노드/엣지 타입별 어텐션, 대규모 이종 |
| **HGNN / HyperGCN / Hypergraph-NN** | 하이퍼 | 하이퍼엣지 기반 고차 집계 | 집단·공모 등 고차 관계 |
| **Temporal/Dynamic GNN** | 동적 | 시간 인코딩·게이트·메모리 | 시간 의존성·진화 패턴 |

> FDS 논문은 보통 위 백본에 **이질성·불균형·위장·시간** 대응 모듈을 얹습니다. 자세한 용어는
> [용어집](glossary.md), 축별 분류는 [분류 체계](taxonomy.md) 참고.

## 3. 논문 × 그래프 구조 색인 (사용자 요청 구조)

| 그룹 | 논문 |
|------|------|
| **Heterogeneous 기반** | [HGNN+Graph Attention](../papers/credit-card-fraud/hgnn-graph-attention.md) · [HG Auto-Encoder](../papers/credit-card-fraud/hg-autoencoder.md) · [Alipay 악성계정 HGNN](../papers/credit-card-fraud/hgnn-malicious-account.md) · [SEFraud](../papers/robustness-explainability/sefraud.md) · [STA-GT](../papers/credit-card-fraud/sta-gt.md) |
| **Dynamic Heterogeneous** | [FFD-DHG](../papers/credit-card-fraud/ffd-dhg.md) · [Dynamic HG Contrastive](../papers/credit-card-fraud/dynamic-hg-contrastive.md) · [GTAN](../papers/credit-card-fraud/gtan.md)/[RGTAN](../papers/credit-card-fraud/rgtan.md)(시간) |
| **Hypergraph** | [MH-LGC](../papers/llm-gnn/mh-lgc.md) |
| **Fraud Graph 특성(이질성)** | [SEC-GFD](../papers/heterophily-spectral/sec-gfd.md) · [HUGE](../papers/heterophily-spectral/huge.md) · [PMP](../papers/heterophily-spectral/pmp.md) |

---
[← 개념 목록](index.md) · [분류 체계 →](taxonomy.md)
