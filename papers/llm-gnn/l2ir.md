---
type: Research Paper
title: "L2IR: Revealing Latent Intent in Graph Fraud Detection"
description: LLM으로 각 사용자의 행동 의미를 분석해 '연결의 잠재 의도(latent intent)'를 추론, 노드 특징에 주입해 깊이 위장된 사기 노드를 드러내는 LLM 구동 프레임워크. 적응적 자기학습.
resource: https://arxiv.org/abs/2605.26040
tags: [llm, gnn, latent-intent, camouflage, self-training, text-attributed-graph]
authors: Jinsheng Guo, et al.
venue: arXiv 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# L2IR: Revealing Latent Intent in Graph Fraud Detection

[← 카테고리](index.md) · 원문: [arXiv:2605.26040](https://arxiv.org/abs/2605.26040)

- **저자**: Jinsheng Guo 외
- **발표처/연도**: arXiv 2026 (2026-05-25 공개, cs.AI)

## 문제 (Problem)
사기범이 **정상 사용자와 다수의 연결을 위조** 하면 이웃 집계 과정에서 사기 신호가 희석되어 탐지가
어렵습니다. 또한 기존 LLM 기반 접근은 **의심스러운 연결의 의도(intent)** 를 충분히 탐구하지 못합니다.

## 방법 (Method)
**L2IR (LLM-driven Latent Intent Revealing)** — LLM으로 각 사용자의 **행동 의미(behavioral semantics)**
를 분석해 개별 **연결의 의도를 추론** 하고, 이 의도 정보를 **노드 특징에 주입** 해 깊이 위장된 사기
노드를 드러냅니다. **적응적 자기학습(adaptive self-training)** 으로 이전 단계의 신뢰 신호를 보강해 소수
라벨 하 강건성을 높입니다.

## 핵심 기여 (Contributions)
- **연결 의도(latent intent)** 를 LLM으로 추론해 노드 특징에 통합
- 위장으로 희석된 사기 신호 복원
- 적응적 자기학습으로 **소수 라벨** 강건성 향상

## 결과·데이터셋 (Results)
GNN 기반 탐지기 대비 **AUPRC 최대 +8.27%** 향상.

## 구조 상세
- **그래프 종류**: 텍스트 속성 그래프(TAG) — LLM이 의미/의도를 제공.
- **GNN 백본**: LLM-enhanced GNN(의도 특징 주입) + 자기학습.

## 관련 링크
- 개념: [LLM-enhanced GNN, 위장](../../concepts/glossary.md)
- 같은 흐름: [FLAG](flag.md), [MLED](mled.md), [FraudCoT](fraudcot.md) · 위장/비지도: [CAMERA](../heterophily-spectral/camera.md)

---
[← 카테고리](index.md)
