---
type: Research Paper
title: "Partitioning Message Passing for Graph Fraud Detection (PMP)"
description: 이웃을 클래스별로 분리해 노드별 집계 함수로 처리하는 메시지 패싱. 이질성·불균형으로 인한 그래디언트 지배를 완화.
resource: https://arxiv.org/abs/2412.00020
tags: [heterophily, message-passing, partitioning, class-imbalance]
authors: Wei Zhuo, et al.
venue: ICLR 2024
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# Partitioning Message Passing for Graph Fraud Detection (PMP)

[← 카테고리](index.md) · 원문: [arXiv:2412.00020](https://arxiv.org/abs/2412.00020) · [OpenReview](https://openreview.net/forum?id=tEgrUrUuwA)

- **저자**: Wei Zhuo 외 *(전체 저자 일부 미확인)*
- **발표처/연도**: ICLR 2024

## 문제 (Problem)
**라벨 불균형** 과 **동질성–이질성 혼합** 이 GNN을 그래프 사기 탐지(GFD)에 적용할 때의 근본 장애물
입니다.

## 방법 (Method)
**PMP (Partitioning Message Passing)**. 핵심 주장: 목표는 다른 라벨의 이웃을 **배제** 가 아니라
**구분** 하는 것. 이웃 집계 단계에서 **서로 다른 클래스의 이웃을 노드별(node-specific) 집계 함수로
따로 집계** 해, 중심 노드가 이질적 이웃과 동질적 이웃 정보를 적응적으로 조절하고 정상(benign) 이웃에
그래디언트가 지배되는 것을 방지합니다.

## 핵심 기여 (Contributions)
- 이웃을 클래스별로 분리하는 **분리 메시지 패싱(partitioning message passing)** 패러다임
- 동질/이질 신호 균형을 위한 **노드별 집계 함수**
- 라벨 불균형으로 인한 **그래디언트 지배 완화**

## 결과·데이터셋 (Results)
표준 GFD 벤치마크([YelpChi](../../datasets/yelpchi.md)/[Amazon](../../datasets/amazon.md)/
[T-Finance](../../datasets/t-finance-t-social.md) 계열)에서 평가 *(구체 수치 일부 미확인)*.

## 관련 링크
- 개념: [이질성, 오버스무딩, 클래스 불균형](../../concepts/overview.md)
- 같은 흐름: [SEC-GFD](sec-gfd.md), [HUGE](huge.md)

---
[← 카테고리](index.md)
