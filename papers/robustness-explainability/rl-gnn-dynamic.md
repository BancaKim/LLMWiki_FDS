---
type: Research Paper
title: "Dynamic Fraud Detection: Integrating Reinforcement Learning into Graph Neural Networks"
description: 강화학습과 GNN을 결합해 진화하는 사기에 동적으로 적응하고 라벨 불균형에 대응하는 탐지. (arXiv 버전 철회됨 — 일부 세부 미확인.)
resource: https://arxiv.org/abs/2409.09892
tags: [robustness, reinforcement-learning, dynamic, class-imbalance]
authors: Yuxin Dong, Jianhua Yao, Jiajing Wang, Yingbin Liang, Shuhan Liao, Minheng Xiao
venue: arXiv 2024 (withdrawn)
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# Dynamic Fraud Detection: Integrating Reinforcement Learning into Graph Neural Networks

[← 카테고리](index.md) · 원문: [arXiv:2409.09892](https://arxiv.org/abs/2409.09892)

- **저자**: Yuxin Dong, Jianhua Yao, Jiajing Wang, Yingbin Liang, Shuhan Liao, Minheng Xiao
- **발표처/연도**: arXiv 2024 *(arXiv 버전 철회(withdrawn) — 일부 세부 미확인)*

## 문제 (Problem)
온라인 금융 사기는 탐지가 어렵습니다. 사기 거래가 극소수여서 **심한 라벨 불균형** 이 발생하고,
정적 GNN은 **진화하는 사기 행동** 에 적응하지 못합니다.

## 방법 (Method)
**강화학습(RL)** 과 GNN을 결합해 동적 사기 탐지를 수행합니다. 그래프 구조의 상호작용 관계를
활용하면서 라벨 불균형 문제에 대응합니다. *(구체 RL 정식화·모듈명은 철회로 인해 미확인)*

## 핵심 기여 (Contributions)
- **RL + GNN** 결합으로 동적 적응 탐지
- 사기 탐지의 **라벨 불균형** 문제 대응
- *(추가 세부 기여 미확인)*

## 결과·데이터셋 (Results)
*(구체 데이터셋·수치 미확인)*

## 관련 링크
- 개념: [클래스 불균형, 개념 변화(concept drift)](../../concepts/trends-and-challenges.md)
- 같은 흐름(RL): [GNN-CL](../credit-card-fraud/gnn-cl.md)

> ⚠️ arXiv 버전이 철회되었습니다. RL×GNN 동적 탐지 **방향성 참고용** 으로만 사용하세요.

---
[← 카테고리](index.md)
