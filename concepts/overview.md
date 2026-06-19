---
type: Concept
title: 개요 — 왜 GNN을 FDS에 쓰는가
description: FDS와 그래프의 만남, GNN 작동 원리, 그리고 FDS에서 마주하는 3대 도전과제(이질성·불균형·위장).
tags: [overview, gnn, fds, heterophily, class-imbalance, camouflage]
timestamp: 2026-06-18T00:00:00Z
---

# 개요 — 왜 GNN을 FDS에 쓰는가

[← 개념 목록](index.md) · [번들 루트](../index.md)

## 1. FDS와 그래프의 만남

**FDS(Fraud Detection System)** 는 금융·플랫폼 환경에서 부정 거래·계정·행위를 탐지합니다.
대표 적용 영역: **신용카드/거래 사기, 자금세탁(AML), 암호화폐 불법계좌, 리뷰/평판 사기,
보험·의료 사기, 프로모션 어뷰징, 가짜뉴스, 봇 탐지** 등.

이들의 공통점은 **"개별 거래만 보면 정상처럼 보인다"** 는 것입니다. 사기는 **관계의 패턴** —
누가 누구와, 어떤 기기로, 어떤 상점에서, 언제 거래했는가 — 속에서 드러납니다. 그래서
거래·계정·기기·상점을 **노드(node)**, 상호작용을 **엣지(edge)** 로 보는 **그래프** 표현이
자연스럽고, 그 위에서 표현학습을 하는 **GNN** 이 강력한 도구가 됩니다.

## 2. GNN의 작동 원리 (요약)

GNN은 **메시지 패싱(message passing)** 으로 각 노드가 이웃 정보를 반복 집계(aggregate)하여
표현(embedding)을 갱신합니다. L번 반복하면 L-홉 이웃의 구조·특징이 한 노드에 응축됩니다.
대표 백본은 **GCN, GraphSAGE, GAT(Graph Attention)** 이며, FDS에서는 그 위에 이질성·불균형·시간성을
다루는 모듈을 얹습니다. 자세한 용어는 [용어집](glossary.md) 참고.

## 3. FDS에서 GNN이 마주하는 3대 도전과제

### ① 이질성 (Heterophily)
일반 GNN은 **"연결된 노드는 비슷하다"(homophily)** 를 가정합니다. 그러나 사기범은 정상 사용자와
일부러 연결해 자신을 **위장(camouflage)** 하므로 사기 그래프는 종종 **이질적(heterophilic)** 입니다.
단순 평균 집계는 사기 신호를 정상 이웃 신호로 **희석(over-smoothing)** 시킵니다.
→ 대응: [PMP](../papers/heterophily-spectral/pmp.md), [SEC-GFD](../papers/heterophily-spectral/sec-gfd.md),
[HUGE](../papers/heterophily-spectral/huge.md).

### ② 클래스 불균형 (Class Imbalance)
사기 표본은 흔히 전체의 1% 미만입니다. 손실·그래디언트가 정상(benign) 다수에 지배되어 모델이
"전부 정상"으로 학습되기 쉽습니다.
→ 대응: SMOTE/cost-sensitive([HGNN+Attention](../papers/credit-card-fraud/hgnn-graph-attention.md)),
랭킹 손실, 준지도·자기지도 학습.

### ③ 위장과 공모 (Camouflage & Collusion)
사기는 점점 **갱단(fraud gang)** 형태로 조직화되어 탐지를 회피하고, 때로는 **그래프 주입 공격**
으로 GNN 탐지기를 능동적으로 교란합니다.
→ 대응: [MonTi](../papers/robustness-explainability/monti.md)(공격 모델),
[CaT-GNN](../papers/credit-card-fraud/cat-gnn.md)(인과·불변학습).

## 4. 추가로 부상한 도전과제

| 과제 | 설명 | 관련 흐름 |
|------|------|-----------|
| **시간성(Temporal)** | 거래는 시간 순서가 있고 사기 패턴은 변함 | CaT-GNN, STA-GT, TeMP-TraG |
| **확장성(Scalability)** | 수억 노드·엣지의 실시간 처리 | DIAM, FraudGT(throughput) |
| **설명가능성(Explainability)** | 규제·심사 대응 근거 제시 | SEFraud, SAGE-FIN, Graph-LLM |
| **일반화(Generalization)** | 새 도메인·새 사기 zero/few-shot 대응 | 파운데이션·지속학습 |
| **텍스트 활용(Semantics)** | 프로필·설명문 등 텍스트 미활용 | LLM × GNN (FLAG, DGP, MLED) |

---
[← 개념 목록](index.md) · [다음: 분류 체계 →](taxonomy.md)
