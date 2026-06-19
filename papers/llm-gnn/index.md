---
type: Index
title: 🤖 LLM × GNN
description: 대규모 언어모델(LLM)과 그래프 신경망(GNN)을 결합해 텍스트 의미정보를 사기 탐지에 활용하는 논문 4편.
tags: [llm, gnn, text-attributed-graph, fusion]
timestamp: 2026-06-18T00:00:00Z
---

# 🤖 LLM × GNN

[← 논문 모음](../index.md) · [번들 루트](../../index.md)

노드의 풍부한 **텍스트**(프로필·설명문)를 LLM으로 활용하는 흐름. 두 방향이 있습니다.
- **LLM-enhanced GNN**: LLM으로 텍스트 특징을 뽑아 GNN 입력을 강화 (FLAG, MLED)
- **Graph-enhanced LLM**: 그래프 정보를 프롬프트로 LLM에 주입 (DGP)

| 논문 | 연도 | 방향 | concept |
|------|:----:|------|---------|
| FLAG | 2025 | LLM-enhanced GNN | [flag.md](flag.md) |
| DGP | 2025 | Graph-enhanced LLM | [dgp.md](dgp.md) |
| MLED | 2025 | LLM-enhanced GNN | [mled.md](mled.md) |
| Graph-LLM XAI Framework | 2023± | 멀티모달 + 서술 생성 | [graph-llm-xai.md](graph-llm-xai.md) |

> 관련 개념: [LLM × GNN 용어](../../concepts/glossary.md) ·
> 관련 데이터셋(텍스트 보존): [YelpChi](../../datasets/yelpchi.md), [Amazon](../../datasets/amazon.md)

---
[← 이전: 신용카드·거래 사기](../credit-card-fraud/index.md) · [다음: AML·암호화폐 →](../aml-crypto/index.md)
