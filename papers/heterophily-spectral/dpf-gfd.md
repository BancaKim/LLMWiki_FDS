---
type: Research Paper
title: "DPF-GFD: Graph-Based Fraud Detection with Dual-Path Graph Filtering"
description: relation camouflage·고이질성·불균형에 대응하는 주파수 상보적 이중경로 필터링. beta wavelet 연산 + 유사도 그래프 lowpass 융합 후 앙상블 트리로 사기 위험 평가.
resource: https://arxiv.org/abs/2604.14235
tags: [spectral, dual-path, wavelet, heterophily, camouflage, ensemble]
authors: Wei He, Wensheng Gan, Philip S. Yu
venue: arXiv 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# DPF-GFD: Graph-Based Fraud Detection with Dual-Path Graph Filtering

[← 카테고리](index.md) · 원문: [arXiv:2604.14235](https://arxiv.org/abs/2604.14235) · 코드: [vidahee/DPF-GFD](https://github.com/vidahee/DPF-GFD)

- **저자**: Wei He, Wensheng Gan, Philip S. Yu
- **발표처/연도**: arXiv 2026 (2026-04 공개)

## 문제 (Problem)
사기 그래프는 **관계 위장(relation camouflage)·높은 이질성(heterophily)·클래스 불균형** 을 동시에
가져, 대부분의 GNN이 성능 저하됩니다. 단일 그래프 스무딩으로는 부족합니다.

## 방법 (Method)
**DPF-GFD** — **주파수 상보적 이중경로 필터링(frequency-complementary dual-path)**. ① 원 그래프에
**beta wavelet 기반 연산자** 로 핵심 구조 패턴 포착, ② 거리 기반 노드 표현으로 **유사도 그래프** 를
구성해 개선된 **lowpass 필터** 적용, ③ 두 그래프 임베딩을 지도 표현학습으로 융합해 **앙상블 트리
모델** 로 사기 위험 평가. **구조 이상 모델링과 특징 유사도 모델링을 명시적으로 분리**.

## 핵심 기여 (Contributions)
- 사기 특화 **이중경로(구조/유사도) 주파수 상보 필터링**
- beta wavelet(고주파 구조) + lowpass(유사도) 분리
- 융합 임베딩 + 앙상블 트리 위험 평가

## 결과·데이터셋 (Results)
표준 그래프 사기 벤치마크에서 성능 보고 *(구체 수치 미확인)*. 코드 공개.

## 구조 상세
- **그래프 종류**: 다관계·**이질성/스펙트럼** 관점(원 그래프 + 파생 유사도 그래프).
- **GNN 백본**: **스펙트럼(wavelet/lowpass) 필터** 이중경로 + 앙상블 트리 — 동질성 스무딩 한계 회피.

## 관련 링크
- 개념: [스펙트럼 필터링, 이질성](../../concepts/glossary.md), [그래프 종류](../../concepts/graph-types.md)
- 같은 흐름: [SEC-GFD](sec-gfd.md)(스펙트럼), [PMP](pmp.md)(이질성 분리)

---
[← 카테고리](index.md)
