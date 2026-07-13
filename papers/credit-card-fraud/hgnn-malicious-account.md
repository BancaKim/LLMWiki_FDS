---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "GEM: Heterogeneous Graph Neural Networks for Malicious Account Detection (Alipay)"
description: Alipay 악성 등록계정 탐지를 위한 계정-디바이스 이종 그래프 GNN. 기기 재사용(device aggregation)·짧은 시간 집중 활동(activity aggregation)을 이종 구조로 포착. 약 8M 노드/10M 엣지 산업 데이터.
resource: https://arxiv.org/abs/2002.12307
tags: [heterogeneous, malicious-account, industrial, alipay, attention, foundational, must-read]
authors: Ziqi Liu, Chaochao Chen, Xinxing Yang, Jun Zhou, Xiaolong Li, Le Song
venue: CIKM 2018
year: 2018
timestamp: 2026-06-19T00:00:00Z
---

# ⭐ GEM: Heterogeneous Graph Neural Networks for Malicious Account Detection (Alipay)

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **CIKM 2018** (기반 논문 · 이종 그래프 FDS의 원류)

[← 카테고리](index.md) · 그래프 구조 개념: [graph-types](../../concepts/graph-types.md)

## 1. 기본 정보
- **제목**: Heterogeneous Graph Neural Networks for Malicious Account Detection (모델명 **GEM**)
- **저자**: Ziqi Liu, Chaochao Chen, Xinxing Yang, Jun Zhou, Xiaolong Li, Le Song (Ant Financial / Alipay)
- **연도/발표처**: **CIKM 2018** (27th ACM CIKM)
- **링크**: [arXiv:2002.12307](https://arxiv.org/abs/2002.12307) · DOI 10.1145/3269206.3272010

## 2. 연구 배경
- **문제**: Alipay의 **악성 등록계정(malicious registered account)** 을 대규모로 탐지.
- **기존 한계**: 규칙엔진·수작업 특징 기반 GBDT·node2vec·동질 GCN은 그래프 구조를 무시하거나
  **여러 디바이스/미디어 노드 타입**을 다루지 못함.
- **왜 그래프**: 공격자는 자원이 제한적이라 **같은 기기를 재사용(device aggregation)** 하고
  **짧은 시간 창에 몰아서 활동(activity aggregation)** 함 → 이 약점이 **위상적 집중**으로 드러나므로
  그래프가 자연스러운 표현.

## 3. 데이터셋
- **산업/실데이터(비공개, Alipay 사내)**.
- **노드 종류**: 계정 + 여러 **디바이스/미디어 식별자 타입**(전화번호·MAC·IMEI·SIM 등).
- **엣지 종류**: 시간 창(time window)별로 분할된 **계정↔디바이스 연결**.
- **규모**: **노드 ≈ 8M, 엣지 ≈ 10M** (arXiv 버전 기준). 학습 라벨 1.7M / 테스트 0.2M, 4주 연속 데이터.

## 4. 그래프 종류
- **Heterogeneous Graph** (+ 암묵적 **시간/활동 창** 차원).
- **선택 이유**: 디바이스 타입마다 의미가 다르고, 공격자의 자원 재사용은 **타입별 연결을 시간에 걸쳐**
  모델링할 때만 변별력이 생김.

## 5. 모델 구조 (Pipeline)
```
계정 활동 로그(Raw)
↓ 그래프 구성: p개 디바이스 타입 × D개 시간창의 계정-디바이스 이종 그래프
↓ 특징: 시간창별 활동 카운트
↓ GEM 레이어: 디바이스 타입별 sum aggregator + 타입 간 attention(타입 중요도 학습)
↓ 계정 임베딩
↓ 이진 분류(악성/정상) → Fraud Score
```

## 6. 사용한 GNN
- **맞춤형 이종 GNN(GEM)** — GCN 스타일 전파를 **타입별 sum aggregator + 노드/디바이스 타입 간
  attention** 으로 일반화. (HAN/HGT 이전 세대이며, attention으로 각 디바이스-타입 서브네트워크의
  상대 중요도를 학습.)
- **비교 백본**: 동질 **GCN**, GBDT+node2vec, GBDT+graph.

## 관련 링크
- 개념: [그래프 종류·GNN 백본](../../concepts/graph-types.md), [이종 그래프](../../concepts/taxonomy.md)
- 같은 흐름(이종): [HGNN+Graph Attention](hgnn-graph-attention.md), [HG Auto-Encoder](hg-autoencoder.md), [FFD-DHG](ffd-dhg.md)

---
[← 카테고리](index.md)
