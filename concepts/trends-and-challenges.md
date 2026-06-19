---
type: Concept
title: 동향·과제 (Trends & Challenges)
description: 2024–2026 GNN × FDS 연구의 6대 트렌드와 남은 미해결 과제(open problems).
tags: [trends, challenges, open-problems, future-work]
timestamp: 2026-06-18T00:00:00Z
---

# 동향·과제 (Trends & Challenges)

[← 개념 목록](index.md) · [번들 루트](../index.md)

## 📈 2024–2026 6대 트렌드

### 1. 이질성·스펙트럼 기반 메시지 패싱
사기 그래프의 **이질성(heterophily)** 을 정면으로 다루는 흐름. 이웃을 클래스별로 분리 집계하거나
(스펙트럼) 주파수 영역에서 신호를 분리합니다.
→ [PMP](../papers/heterophily-spectral/pmp.md), [SEC-GFD](../papers/heterophily-spectral/sec-gfd.md),
[HUGE](../papers/heterophily-spectral/huge.md)

### 2. LLM × GNN 융합
노드의 **풍부한 텍스트**(프로필·설명문)를 LLM으로 활용. *LLM-enhanced GNN*(텍스트 특징 강화)과
*Graph-enhanced LLM*(그래프를 프롬프트로) 두 방향.
→ [FLAG](../papers/llm-gnn/flag.md), [DGP](../papers/llm-gnn/dgp.md), [MLED](../papers/llm-gnn/mled.md)

### 3. Graph Transformer
메시지 패싱의 한계를 넘어 **장거리 의존성·엣지 속성**을 어텐션으로 포착. 실시간 처리량까지 고려.
→ [FraudGT](../papers/credit-card-fraud/fraudgt.md), [STA-GT](../papers/credit-card-fraud/sta-gt.md)

### 4. 시간·인과 모델링
거래의 **시간 순서**와 **인과 구조**를 명시적으로 모델링해 강건성·해석가능성 향상.
→ [CaT-GNN](../papers/credit-card-fraud/cat-gnn.md), [TeMP-TraG](../papers/aml-crypto/temp-trag.md)

### 5. 강건성·설명가능성 (XAI)
**적대적 공격**(사기 갱단의 그래프 주입)에 대한 방어 연구와, 규제·심사를 위한 **설명가능** 탐지.
→ [MonTi](../papers/robustness-explainability/monti.md), [SEFraud](../papers/robustness-explainability/sefraud.md),
[SAGE-FIN](../papers/aml-crypto/sage-fin.md)

### 6. 파운데이션·지속학습
**zero/few-shot** 일반화를 노리는 Graph Foundation Model과, 진화하는 사기에 적응하는
**continual learning**.
→ [AML 지속학습 리뷰](../papers/surveys/continual-graph-learning-aml-review.md)

## 🧩 남은 미해결 과제 (Open Problems)

| 과제 | 설명 |
|------|------|
| **일반화 갭** | 한 데이터셋·도메인에서 좋은 모델이 다른 곳에서 무너짐. 진정한 cross-domain 일반화는 미해결 |
| **실시간·대규모** | 수억 노드 그래프에서 ms 단위 추론 + 동적 갱신의 동시 달성 |
| **개념 변화 (Concept Drift)** | 사기 수법이 계속 진화 → 지속학습·온라인 적응 필요 |
| **공격-방어 군비경쟁** | 그래프 주입·회피 공격과 방어의 상호 진화. 강건성 보장 어려움 |
| **설명가능성 ↔ 성능** | 규제가 요구하는 설명과 탐지 성능의 균형, post-hoc의 비용 |
| **프라이버시·연합학습** | 기관 간 데이터 공유 제약 하의 협력 탐지 (federated GNN) |
| **라벨 부족** | 신뢰할 수 있는 사기 라벨 확보 비용 → 준지도·자기지도 중요 |
| **LLM 비용·토큰 한계** | 대규모 그래프 텍스트를 LLM에 넣는 토큰 예산·지연·비용 |
| **평가 표준화** | 데이터셋 버전·전처리·지표 불일치로 공정 비교 어려움 |

## 🔭 유망한 방향

- **Graph Foundation Model for Fraud** — 사전학습 후 zero/few-shot 전이
- **멀티모달 융합** — 텍스트(LLM) + 구조(GNN) + 시계열의 통합
- **인과·불변학습** — 분포 변화에 강건한 탐지
- **연합·프라이버시 보존 GNN** — 기관 간 협력 탐지
- **자기설명 모델** — 성능과 해석을 동시에

---
[← 이전: 용어집](glossary.md) · [개념 목록](index.md) · [논문 모음 →](../papers/index.md)
