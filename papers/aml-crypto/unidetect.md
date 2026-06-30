---
type: Research Paper
title: "UniDetect: LLM-Driven Universal Fraud Detection across Heterogeneous Blockchains"
description: 이종 블록체인 계정에 두루 적용되는 LLM 생성 거래 요약 텍스트를 증거로, 텍스트+거래 그래프를 다단계로 공동 추론하는 멀티체인 암호화폐 사기 탐지.
resource: https://arxiv.org/abs/2604.12329
tags: [aml, crypto, blockchain, llm, multi-chain, cross-chain, defi]
venue: arXiv 2026
year: 2026
timestamp: 2026-06-19T00:00:00Z
---

# UniDetect: LLM-Driven Universal Fraud Detection across Heterogeneous Blockchains

[← 카테고리](index.md) · 원문: [arXiv:2604.12329](https://arxiv.org/abs/2604.12329)

- **발표처/연도**: arXiv 2026

## 문제 (Problem)
크로스체인 상호운용성이 발전하면서 DeFi 프로토콜을 통해 **불법 자금이 균일한 유동 자산으로 재편**되어
시장 전반으로 흐릅니다. 이는 **개별 블록체인 단위 모니터링을 우회** 하여 기존 규제를 약화시킵니다.
이종(heterogeneous) 블록체인에 두루 통하는 **범용(universal)** 사기 계정 탐지가 필요합니다.

## 방법 (Method)
**UniDetect** — LLM 기반 멀티체인 암호화폐 사기 계정 탐지. **도메인 지식으로 LLM을 유도** 해 이종
블록체인 계정에 적용 가능한 **범용 거래 요약 텍스트** 를 생성하고 이를 탐지 증거로 사용합니다. 또한
**2단계 교대 학습(two-stage alternating training)** 으로 **텍스트 증거 + 거래 그래프 패턴** 에 대한
멀티모달 공동 추론을 지속적·동적으로 강화합니다.

## 핵심 기여 (Contributions)
- 이종 블록체인 공통의 **LLM 생성 거래 요약 텍스트** 를 탐지 증거로 활용
- 텍스트 + 그래프 패턴의 **멀티모달 공동 추론**
- **2단계 교대 학습** 으로 크로스체인 사기 계정 탐지 강화

## 결과·데이터셋 (Results)
멀티체인 암호화폐 데이터에서 효과 보고 *(구체 수치 미확인)*.

## 관련 링크
- 개념: [LLM × GNN, 멀티그래프](../../concepts/glossary.md) · 도메인: [LLM×GNN 논문](../llm-gnn/index.md)
- 같은 흐름(암호화폐): [DIAM](diam.md), [TeMP-TraG](temp-trag.md)

---
[← 카테고리](index.md)
