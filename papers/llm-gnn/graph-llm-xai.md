---
type: Research Paper
title: "Enhancing Illicit Activity Detection using XAI: A Multimodal Graph-LLM Framework"
description: 거래 시퀀스 + GNN 부분그래프 연결성 + LLM 서술 생성의 멀티모달 XAI 프레임워크. 분석가를 위한 설명 가능 금융범죄 탐지.
resource: https://arxiv.org/abs/2310.13787
tags: [llm, gnn, xai, multimodal, financial-crime, narrative]
authors: Jack Nicholls, Aditya Kuppa, Nhien-An Le-Khac
venue: arXiv 2023
year: 2023
timestamp: 2026-06-18T00:00:00Z
---

# Enhancing Illicit Activity Detection using XAI: A Multimodal Graph-LLM Framework

[← 카테고리](index.md) · 원문: [arXiv:2310.13787](https://arxiv.org/abs/2310.13787)

- **저자**: Jack Nicholls, Aditya Kuppa, Nhien-An Le-Khac
- **발표처/연도**: arXiv 2023 *(2개년 직전 기반 논문 — LLM×GNN+XAI 초기 사례로 포함)*

## 문제 (Problem)
딥러닝 모델은 불법 금융활동을 잘 탐지하지만, 그 판단이 **수사 분석가(analyst)** 에게 설명되지
않습니다(블랙박스).

## 방법 (Method)
금융 사이버범죄 탐지를 위한 **멀티모달·선제적 XAI 프레임워크**. 세 딥러닝 모델의 삼중 구조로 표현을
추출합니다: ① **거래 시퀀싱(transaction sequencing)**, ② **부분그래프 연결성(GNN subgraph
connectivity)**, ③ **서술 생성(narrative generation)** — LLM이 거래 정보를 받아 맥락 있는 서술을
출력해 분석가의 이해를 돕습니다.

## 핵심 기여 (Contributions)
- 거래 시퀀스 + GNN 부분그래프 + **LLM 서술 생성** 의 멀티모달 삼중 구조
- LLM 기반 **서술 생성** 으로 분석가 친화적 설명
- **human-in-the-loop** XAI 관점 제시

## 결과·데이터셋 (Results)
개념/프레임워크 논문. 구체 데이터셋·정량 결과 *(미확인)*.

## 관련 링크
- 개념: [XAI, 설명가능성](../../concepts/glossary.md)
- 같은 흐름(설명가능): [SEFraud](../robustness-explainability/sefraud.md), [SAGE-FIN](../aml-crypto/sage-fin.md)

---
[← 카테고리](index.md)
