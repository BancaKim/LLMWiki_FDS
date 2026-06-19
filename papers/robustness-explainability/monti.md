---
type: Research Paper
title: "Unveiling the Threat of Fraud Gangs to GNNs: Multi-Target Graph Injection Attacks (MonTi)"
description: 사기 갱단의 공모를 모사하는 다중 타깃 그래프 주입 공격. 트랜스포머로 모든 공격 노드의 속성·엣지를 동시 생성, 노드별 차수 예산 적응 할당.
resource: https://arxiv.org/abs/2412.18370
tags: [robustness, adversarial, graph-injection-attack, fraud-gang, transformer]
authors: Jinhyeok Choi, Heehyeon Kim, Joyce Jiyoung Whang
venue: AAAI 2025
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# Unveiling the Threat of Fraud Gangs to GNNs: Multi-Target Graph Injection Attacks (MonTi)

[← 카테고리](index.md) · 원문: [arXiv:2412.18370](https://arxiv.org/abs/2412.18370)

- **저자**: Jinhyeok Choi, Heehyeon Kim, Joyce Jiyoung Whang (BDI Lab, KAIST)
- **발표처/연도**: AAAI 2025

## 문제 (Problem)
사기는 점점 **갱단(gang)** 으로 조직화되어 불법 노드를 정상으로 오분류시키도록 공모·위장합니다.
기존 그래프 주입 공격은 **단일 타깃** 에 집중하고 속성·엣지를 순차 생성해 갱단식 **다중 타깃 공모**
를 놓칩니다.

## 방법 (Method)
**MonTi** 는 트랜스포머 기반 **다중 타깃 일회성(Multi-target one-Time) 그래프 주입 공격** 모델.
**트랜스포머 인코더** 로 모든 주입 공격 노드의 **속성과 엣지를 동시에 생성** 해 속성-엣지 상호의존성을
포착합니다. 공격 노드별 **차수 예산(degree budget)을 적응적으로 할당** 해 타깃·후보·공격 노드 사이의
다양한 주입 구조를 탐색합니다.

## 핵심 기여 (Contributions)
- 사기 갱단 공모를 모델링한 **다중 타깃 일회성 그래프 주입 공격**
- 모든 공격 노드의 속성·엣지를 **동시 생성하는 트랜스포머 인코더**
- **노드별 차수 예산 적응 할당**
- 스팸 리뷰·가짜뉴스·의료보험 사기 등 3개 실제 사례 공격 시나리오

## 결과·데이터셋 (Results)
5개 실제 그래프에서 SOTA 그래프 주입 공격을 능가.

## 관련 링크
- 개념: [그래프 주입 공격, 위장·공모](../../concepts/overview.md)
- 코드: [github.com/bdi-lab/MonTi](https://github.com/bdi-lab/MonTi)
- 방어 관점 보완: [CaT-GNN(인과·강건)](../credit-card-fraud/cat-gnn.md)

> 💡 **공격자(red team) 관점** 의 논문 — 강건한 FDS 설계 시 위협 모델로 참고.

---
[← 카테고리](index.md)
