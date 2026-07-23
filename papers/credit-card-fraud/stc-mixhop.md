---
type: Research Paper
title: "STC-MixHop: Multi-Scale Graph Learning with Temporal Consistency for Financial Fraud Detection under Non-Stationary Conditions"
description: 비정상(non-stationary) 동적 거래망의 희소 이상·시간 드리프트에 대응. MixHop 다중스케일 확산 + 시공간 어텐션 + 자기지도 사전학습. PaySim 시간순 분할 평가.
resource: https://arxiv.org/abs/2603.14592
tags: [dynamic, temporal, multi-scale, mixhop, self-supervised, transaction-fraud, non-stationary]
authors: Yiming Lei, Qiannan Shen, Junhao Song
venue: arXiv 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# STC-MixHop: Multi-Scale Graph Learning with Temporal Consistency for Financial Fraud Detection

[← 카테고리](index.md) · 원문: [arXiv:2603.14592](https://arxiv.org/abs/2603.14592)

- **저자**: Yiming Lei, Qiannan Shen, Junhao Song
- **발표처/연도**: arXiv 2026 (2026-03 공개)

## 문제 (Problem)
거래망의 사기 탐지는 **희소 이상·동적 패턴·심한 불균형** 에 더해 **시간 드리프트(temporal drift,
non-stationary)** 를 다뤄야 합니다. 의심 거래는 고립돼 있지 않고 계좌·중개자·시간 시퀀스로 연결되므로
속성 기반/무작위 분할 파이프라인으로는 부족합니다.

## 방법 (Method)
**STC-MixHop** — 공간 다중해상도 전파 + 경량 시간 일관성 모델링. ① **MixHop 기반 다중스케일 이웃
확산 인코더**(구조 패턴), ② **시공간 어텐션 모듈**(현재·직전 스냅샷 결합으로 표현 안정화), ③ **시간
인식 자기지도 사전학습**(비라벨 거래 상호작용 활용).

## 핵심 기여 (Contributions)
- MixHop **다중스케일 확산** 으로 구조 패턴 학습
- **시공간 어텐션** 으로 스냅샷 간 표현 안정화(드리프트 대응)
- 비라벨 상호작용 **자기지도 사전학습**

## 결과·데이터셋 (Results)
주로 **PaySim**(엄격한 시간순 분할) + Porto Seguro·FEMA(교차도메인 검증). *(구체 수치 미확인)*

## 구조 상세
- **그래프 종류**: **Dynamic(temporal) Graph** — 스냅샷 시퀀스, 비정상 조건.
- **GNN 백본**: **MixHop**(다중홉/다중스케일) + 시공간 어텐션 — 시간 드리프트·다중스케일 구조 포착.

## 관련 링크
- 개념: [그래프 종류(동적), 개념 변화(drift)](../../concepts/graph-types.md), [동향·과제](../../concepts/trends-and-challenges.md)
- 같은 흐름(동적): [CaT-GNN](cat-gnn.md), [FFD-DHG](ffd-dhg.md), [TeMP-TraG](../aml-crypto/temp-trag.md)

---
[← 카테고리](index.md)
