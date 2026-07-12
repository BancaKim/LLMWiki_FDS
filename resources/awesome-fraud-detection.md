---
type: Resource
title: "AI4Risk / awesome-fraud-detection — GNN 사기 탐지 큐레이션 목록"
description: GNN 금융 사기 탐지 논문·코드를 정리한 awesome list. 이 위키가 참고한 리뷰 논문(2411.05815)에 기반.
resource: https://github.com/AI4Risk/awesome-fraud-detection
tags: [resource, curation, awesome-list, ai4risk, survey]
timestamp: 2026-06-19T00:00:00Z
---

# AI4Risk / awesome-fraud-detection — GNN 사기 탐지 큐레이션 목록

[← 리소스 목록](index.md) · 원본: [github.com/AI4Risk/awesome-fraud-detection](https://github.com/AI4Risk/awesome-fraud-detection)

**GNN 기반 금융 사기 탐지 논문·코드**를 정리한 awesome list입니다. 이 위키가 출발점으로 삼은
리뷰 논문 **[GNN for Financial Fraud Detection: A Review](../papers/surveys/gnn-financial-fraud-review.md)**
(Frontiers of Computer Science, 2024)에 기반합니다.

## 구성 (2개 섹션)
1. **LLM-enhanced Graph-based Fraud Detection** (2025–2026)
2. **Graph-based Fraud Detection** (2017–2026)

→ 이 위키의 [🤖 LLM × GNN](../papers/llm-gnn/index.md) 및 나머지 그래프 사기 카테고리와 대응됩니다.

## 이 위키와 겹치는 대표 논문
- ⭐ [FLAG](../papers/llm-gnn/flag.md) (KDD 2025) · ⭐ [SEFraud](../papers/robustness-explainability/sefraud.md) (KDD 2024)
- ⭐ [PMP](../papers/heterophily-spectral/pmp.md) (ICLR 2024, 코드 포함) · ⭐ [DIAM](../papers/aml-crypto/diam.md) (CIKM 2024)
- ⭐ [Grad](../papers/credit-card-fraud/grad.md) (WWW 2025) · ⭐ [HOGRL](../papers/credit-card-fraud/hogrl.md) (IJCAI 2024)

## 목록에서 반영한 논문 (이 위키에 추가됨)
- ⭐ [CARE-GNN](../papers/heterophily-spectral/care-gnn.md) (CIKM 2020) — 위장 사기범 대응의 고전, YelpChi/Amazon 벤치마크 출처
- ⭐ [PC-GNN](../papers/heterophily-spectral/pc-gnn.md) (WWW 2021) — 불균형 그래프 학습 pick-and-choose
- ⭐ [DGA-GNN](../papers/heterophily-spectral/dga-gnn.md) (AAAI 2024) · ⭐ [GAAP](../papers/heterophily-spectral/gaap.md) (AAAI 2025)

### 아직 미반영(참고용) 후보
- **POCL** (AAAI 2024, [AI4Risk/POCL](https://github.com/AI4Risk/POCL)) — 보험 사기 대비 대조학습 사전학습+온라인 갱신.
  그래프/GNN 핵심 여부가 불명확해 **보류**(게재 세부 확인 후 재평가).
- **ConsisGAD** (ICLR 2024), **LEX-GNN** (CIKM 2024) 등 — 필요 시 [분류 체계](../concepts/taxonomy.md)에 맞춰 추가.

## 커버 학회
NeurIPS · ICML · ICLR · AAAI · IJCAI · KDD · WWW · ICDM · CIKM · TKDE 등 — 이 위키의
[⭐ AI 탑티어 기준](../CLAUDE.md)과 대체로 일치.

## 관련 링크
- 코드 프레임워크: [AI4Risk/antifraud](ai4risk-antifraud.md)
- 기반 리뷰: [GNN for Financial Fraud Detection: A Review](../papers/surveys/gnn-financial-fraud-review.md)

---
[← 리소스 목록](index.md)
