---
type: Research Paper
title: "GFD-GC: A Novel Graph Fraud Detector via Grouped Attribute Completion and Confidence-Aware Contrastive Learning"
description: 불완전 노드 속성과 극심한 불균형에 대응 — 이종 이웃 구조를 모사한 그룹 단위 집계로 속성 완성, 신뢰도 인식 지도 대조학습으로 고신뢰 pseudo-fraud 증강.
resource: https://arxiv.org/abs/2607.11107
tags: [attribute-completion, contrastive-learning, imbalance, confidence-aware, gnn]
venue: arXiv 2026
year: 2026
timestamp: 2026-09-15T00:00:00Z
---

# GFD-GC: A Novel Graph Fraud Detector via Grouped Attribute Completion and Confidence-Aware Contrastive Learning

[← 카테고리](index.md) · 원문: [arXiv:2607.11107](https://arxiv.org/abs/2607.11107)

- **발표처/연도**: arXiv 2026 (2026-07-13 공개)

## 문제 (Problem)
GNN 기반 사기 탐지의 실전 성능은 **불완전한 노드 속성(incomplete attributes)** 과 **극심한 클래스
불균형** 으로 크게 저하됩니다.

## 방법 (Method)
**GFD-GC** — ① **그룹 단위 속성 완성(grouped attribute completion)**: 이종 이웃 구조를 모사해 그룹
단위 집계를 수행, 세밀한 그래프 문맥 패턴으로 **정보량 높은 완전 노드 특징** 을 획득. ② **신뢰도 인식
지도 대조학습(confidence-aware supervised contrastive learning)**: 희소한 라벨 사기 노드를 **고신뢰
pseudo-fraud 노드** 로 증강해 사기 표현의 응집성과 비사기 대비 분리성을 강화.

## 핵심 기여 (Contributions)
- 이종 이웃 모사 **그룹 단위 속성 완성** 으로 불완전 속성 보완
- **신뢰도 인식 대조학습** 으로 희소 라벨 증강(pseudo-fraud)
- 불완전 속성 + 불균형 동시 대응

## 결과·데이터셋 (Results)
그래프 사기 벤치마크에서 성능 보고 *(구체 수치 미확인)*.

## 관련 링크
- 개념: [클래스 불균형](../../concepts/overview.md), [대조학습](../../concepts/glossary.md)
- 같은 흐름: [PC-GNN](pc-gnn.md)(불균형), [DPF-GFD](dpf-gfd.md)

---
[← 카테고리](index.md)
