---
type: Concept
title: 용어집 (Glossary)
description: GNN × FDS 논문에 반복 등장하는 핵심 개념과 약어 사전 — 그래프/GNN 기본, FDS 도전 개념, 학습 방법론, LLM×GNN, 평가·운영, 도메인 약어.
tags: [glossary, terminology, gnn, fds, llm]
timestamp: 2026-06-18T00:00:00Z
---

# 용어집 (Glossary)

[← 개념 목록](index.md) · [번들 루트](../index.md)

## 그래프·GNN 기본

| 용어 | 설명 |
|------|------|
| **GNN (Graph Neural Network)** | 그래프 구조 위에서 노드/엣지/그래프 표현을 학습하는 신경망 |
| **메시지 패싱 (Message Passing)** | 이웃의 메시지를 집계해 표현을 갱신하는 GNN의 핵심 연산 |
| **GCN / GraphSAGE / GAT** | 대표 GNN 백본. GAT는 어텐션으로 이웃 가중치를 학습 |
| **임베딩 (Embedding)** | 노드/엣지를 표현하는 저차원 벡터 |
| **홉 (Hop)** | 그래프상 거리. L-홉 이웃 = L번 엣지로 도달 가능 |
| **Graph Transformer** | (준)전역 어텐션으로 장거리 노드 상호작용 학습 |
| **하이퍼그래프 (Hypergraph)** | 한 엣지가 3개 이상 노드를 동시에 연결 |

## FDS 핵심 도전 개념

| 용어 | 설명 |
|------|------|
| **이질성 (Heterophily)** | 연결된 노드가 **서로 다른 클래스**인 성질 (사기↔정상) |
| **동질성 (Homophily)** | 연결된 노드가 비슷한 클래스. 기본 GNN의 가정 |
| **위장 (Camouflage)** | 사기 노드가 정상과 연결/모방해 탐지를 피함 |
| **공모 (Collusion)** | 다수 사기 계정이 협력(갱단)해 탐지 회피 |
| **클래스 불균형 (Class Imbalance)** | 사기 표본이 극소수(<1%)여서 학습이 다수에 치우침 |
| **오버스무딩 (Over-smoothing)** | 층이 깊어질수록 노드 표현이 비슷해져 변별력 상실 |
| **그래프 주입 공격 (Graph Injection Attack)** | 가짜 노드/엣지로 GNN 탐지기를 오작동시키는 공격 |

## 학습·방법론

| 용어 | 설명 |
|------|------|
| **준지도학습 (Semi-supervised)** | 소량 라벨 + 다량 비라벨 |
| **자기지도/비지도 (Self/Unsupervised)** | 라벨 없이 이상 학습 |
| **지속학습 (Continual Learning)** | 새 데이터 적응 + 망각 방지 |
| **인과 불변학습 (Causal Invariant Learning)** | 변하지 않는 인과 신호로 강건성 확보 |
| **대조학습 (Contrastive Learning)** | 양/음 표본 표현 거리 조절 |
| **스펙트럼 필터링 (Spectral Filtering)** | 그래프 라플라시안 주파수 영역 필터링 |
| **In-context Learning** | 파라미터 갱신 없이 예시(프롬프트)로 추론 |
| **Zero/Few-shot** | 새 도메인을 0개/소수 예시로 일반화 |

## LLM × GNN

| 용어 | 설명 |
|------|------|
| **LLM (Large Language Model)** | 텍스트 의미 추출·요약·서술 생성에 활용 |
| **TAG (Text-Attributed Graph)** | 노드/엣지에 텍스트 속성이 붙은 그래프 |
| **LLM-enhanced GNN** | LLM으로 텍스트 특징을 뽑아 GNN 입력 강화 (FLAG, MLED) |
| **Graph-enhanced LLM** | 그래프 정보를 프롬프트로 LLM에 주입 (DGP, GraphGPT) |
| **프롬프트 튜닝 (Prompt Tuning)** | 소수 파라미터만 학습 |
| **이중 입도 (Dual-Granularity)** | 타깃 노드는 상세히, 이웃은 요약 (DGP) |

## 평가·운영

| 용어 | 설명 |
|------|------|
| **AUC / AUPRC / F1 / GMean** | 평가지표 — [데이터셋 개요](datasets-overview.md) 참고 |
| **Throughput / Latency** | 처리량 / 지연. 실시간 FDS의 핵심 (FraudGT) |
| **XAI (Explainable AI)** | 예측 근거 제시 — 규제·심사 대응 |
| **Post-hoc 설명** | 학습 후 별도 설명기로 근거 추출 |
| **자기설명 (Self-Explainable)** | 모델이 예측과 동시에 내장 설명 생성 (SEFraud) |

## 도메인 약어

| 약어 | 풀이 |
|------|------|
| **FDS** | Fraud Detection System (이상거래·사기 탐지 시스템) |
| **AML** | Anti-Money Laundering (자금세탁 방지) |
| **GFD / GAD** | Graph Fraud Detection / Graph Anomaly Detection |
| **GFM** | Graph Foundation Model |
| **MoE** | Mixture-of-Experts |
| **RGCN** | Relational GCN |
| **RL** | Reinforcement Learning |

---
[← 이전: 데이터셋 개요](datasets-overview.md) · [다음: 동향·과제 →](trends-and-challenges.md)
