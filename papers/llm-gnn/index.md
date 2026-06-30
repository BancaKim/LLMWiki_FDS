---
type: Index
title: 🤖 LLM × GNN
description: 대규모 언어모델(LLM)과 그래프 신경망(GNN)을 결합해 텍스트 의미정보를 사기 탐지에 활용하는 논문 7편. 4편이 탑티어 학회 필독.
tags: [llm, gnn, text-attributed-graph, fusion, must-read]
timestamp: 2026-06-19T00:00:00Z
---

# 🤖 LLM × GNN

[← 논문 모음](../index.md) · [번들 루트](../../index.md)

노드의 풍부한 **텍스트**(프로필·설명문)를 LLM으로 활용하는 흐름. 두 방향이 있습니다.
- **LLM-enhanced GNN**: LLM으로 텍스트 특징을 뽑아 GNN 입력을 강화 (FLAG, MLED, FraudCoT)
- **Graph-enhanced LLM**: 그래프 정보를 프롬프트/토큰으로 LLM에 주입 (DGP, LGSPF)

> **범례**: ⭐ = 탑티어 학회 게재 **필독(MUST-READ)**.

| ⭐ | 논문 | 연도/발표처 | 방향/핵심 | concept |
|:--:|------|------------|-----------|---------|
| ⭐ | FLAG | **KDD 2025** | LLM-enhanced GNN | [flag.md](flag.md) |
| ⭐ | DGP | **AAAI 2026** | Graph-enhanced LLM | [dgp.md](dgp.md) |
| ⭐ | MLED | **ACM MM 2025** | LLM-enhanced GNN | [mled.md](mled.md) |
| ⭐ | MH-LGC | **AAAI 2026** | LLM 유도 대조학습 + 하이퍼그래프 | [mh-lgc.md](mh-lgc.md) |
|   | FraudCoT | arXiv 2026 | CoT 증류 LLM-GNN 공동학습 | [fraudcot.md](fraudcot.md) |
|   | LGSPF | arXiv 2026 | soft prompt LLM-GNN | [lgspf.md](lgspf.md) |
|   | Graph-LLM XAI Framework | arXiv 2023± | 멀티모달 + 서술 생성 | [graph-llm-xai.md](graph-llm-xai.md) |

> 관련 개념: [LLM × GNN 용어](../../concepts/glossary.md) ·
> 관련 데이터셋(텍스트 보존): [YelpChi](../../datasets/yelpchi.md), [Amazon](../../datasets/amazon.md)

---
[← 이전: 신용카드·거래 사기](../credit-card-fraud/index.md) · [다음: AML·암호화폐 →](../aml-crypto/index.md)
