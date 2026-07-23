---
type: Index
title: 🌐 이질성·스펙트럼 · 핵심 GFD 기법
description: 사기 그래프의 이질성·스펙트럼과 함께 불균형·위장·집계 등 핵심 그래프 사기 탐지(GFD) 기법 논문 9편. 7편이 탑티어 학회 필독.
tags: [heterophily, spectral, message-passing, imbalance, camouflage, gnn, must-read]
timestamp: 2026-06-19T00:00:00Z
---

# 🌐 이질성·스펙트럼 · 핵심 GFD 기법 (Heterophily / Spectral & Core Methods)

[← 논문 모음](../index.md) · [번들 루트](../../index.md)

사기 그래프의 **[이질성(heterophily)](../../concepts/overview.md)** ·스펙트럼과 함께, **불균형·위장·집계**
등 다관계 그래프 사기 탐지(GFD)의 핵심 기법을 모읍니다. YelpChi/Amazon 다관계 벤치마크의 주요 무대입니다.

> **범례**: ⭐ = 탑티어 학회 게재 **필독(MUST-READ)** (7편).

| ⭐ | 논문 | 연도/발표처 | 핵심 | concept |
|:--:|------|------------|------|---------|
| ⭐ | PMP | **ICLR 2024** | 이웃 클래스별 분리 메시지 패싱 | [pmp.md](pmp.md) |
| ⭐ | SEC-GFD | **AAAI 2024** | 스펙트럼 혼합 필터링 | [sec-gfd.md](sec-gfd.md) |
| ⭐ | HUGE | **AAAI 2025** | 라벨 없는 이질성 지표(HALO) | [huge.md](huge.md) |
| ⭐ | DGA-GNN | **AAAI 2024** | 동적 그룹 집계 + 결정트리 비닝 | [dga-gnn.md](dga-gnn.md) |
| ⭐ | GAAP | **AAAI 2025** | 속성-연관 패턴 전역 집계 | [gaap.md](gaap.md) |
| ⭐ | CARE-GNN | **CIKM 2020** (기반) | 위장 대응 RL 이웃 선택 | [care-gnn.md](care-gnn.md) |
| ⭐ | PC-GNN | **WWW 2021** (기반) | 불균형 pick&choose 샘플링 | [pc-gnn.md](pc-gnn.md) |
|   | DPF-GFD | arXiv 2026 | 이중경로 wavelet/lowpass 필터링 | [dpf-gfd.md](dpf-gfd.md) |
|   | CAMERA | arXiv 2026 | 의미 위장 비지도 TAG(MoE) | [camera.md](camera.md) |

> 관련 데이터셋: [YelpChi](../../datasets/yelpchi.md), [Amazon](../../datasets/amazon.md) ·
> 코드/목록: [AI4Risk/antifraud](../../resources/ai4risk-antifraud.md), [awesome-fraud-detection](../../resources/awesome-fraud-detection.md)

---
[← 이전: AML·암호화폐](../aml-crypto/index.md) · [다음: 강건성·설명가능성 →](../robustness-explainability/index.md)
