---
type: Research Paper
title: "HGAE: Heterogeneous Graph Auto-Encoder for Credit Card Fraud Detection"
description: 카드소지자·상점·거래 이종 그래프 위에서 attention 인코더 + 그래프 오토인코더로, 정상 거래만 학습해 재구성 오차로 사기를 탐지(불균형 대응).
resource: https://arxiv.org/abs/2410.08121
tags: [heterogeneous, autoencoder, credit-card, anomaly, imbalance, gat]
authors: Moirangthem Tiken Singh, Rabinder Kumar Prasad, Gurumayum Robert Michael, et al.
venue: arXiv 2024
year: 2024
timestamp: 2026-06-19T00:00:00Z
---

# HGAE: Heterogeneous Graph Auto-Encoder for Credit Card Fraud Detection

[← 카테고리](index.md) · 그래프 구조 개념: [graph-types](../../concepts/graph-types.md)

## 1. 기본 정보
- **제목**: Heterogeneous Graph Auto-Encoder for CreditCard Fraud Detection (**HGAE**)
- **저자**: Moirangthem Tiken Singh, Rabinder Kumar Prasad, Gurumayum Robert Michael 외 (Dibrugarh University, India)
- **연도/발표처**: **arXiv 2024** (arXiv:2410.08121) *(이후 IJCA 저널 게재 보고 — 정식 확인 권장, 미확인)*
- **링크**: [arXiv:2410.08121](https://arxiv.org/abs/2410.08121)

## 2. 연구 배경
- **문제**: 심한 **클래스 불균형** 하의 신용카드 사기 탐지.
- **기존 한계**: tabular ML·동질 그래프는 금융 개체 간 **풍부한 관계 구조**를 놓침.
- **왜 그래프**: 카드소지자–상점–거래 관계를 이종 그래프로 표현하면 표현력↑. **오토인코더**는 정상
  거래만 학습해 **재구성 오차**로 사기를 표시 → 불균형에 강건.

## 3. 데이터셋
- **공개(public) 신용카드 거래 데이터** (실거래 기록: 카드번호·상점명·거래ID 포함).
- **노드 종류**: **카드소지자(카드번호)·상점(merchant)·거래(transaction)**.
- **엣지 종류**: 카드소지자–거래, 상점–거래 (거래가 소지자와 상점을 연결).
- **정확한 데이터셋명/노드·엣지 수**: **(미확인)** — 일부 2차 출처의 "IEEE-CIS"는 다른 논문과 혼동으로 보임.

## 4. 그래프 종류
- **Heterogeneous Graph**.
- **선택 이유**: 카드소지자/상점/거래라는 **서로 다른 개체 타입**과 그 관계를 표현하기 위해(동질 그래프
  대비 풍부).

## 5. 모델 구조 (Pipeline)
```
거래 기록(Raw)
↓ 이종 그래프 구성(카드소지자/상점/거래)
↓ attention 기반 GNN 메시지 패싱(인코더)
↓ 그래프 오토인코더: 인코더→잠재표현→디코더 (정상 거래로 학습)
↓ 재구성 오차 → 이상/사기 점수
↓ 분류 → Fraud Score
```

## 6. 사용한 GNN
- **GAT 계열 attention 인코더** 를 **그래프 오토인코더(graph auto-encoder)** 에 결합.
  attention은 이종 관계 가중, 오토인코더는 불균형-강건 이상탐지를 위해 선택.
- **비교 백본**: **GraphSAGE**, FI-GRL. (보고: AUC-PR 0.89, F1 0.81)

## 관련 링크
- 개념: [그래프 종류·GNN 백본](../../concepts/graph-types.md), [클래스 불균형](../../concepts/overview.md)
- 같은 흐름(이종): [GEM](hgnn-malicious-account.md), [HGNN+Graph Attention](hgnn-graph-attention.md)

---
[← 카테고리](index.md)
