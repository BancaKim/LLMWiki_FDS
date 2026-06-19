---
type: Research Paper
title: "detectGNN: Harnessing Graph Neural Networks for Enhanced Fraud Detection in Credit Card Transactions"
description: 거래를 계좌·상점·기기의 연결망으로 모델링하고 시간 패턴·동적 갱신으로 다층적 카드 사기를 탐지. 실시간·불균형·프라이버시 등 배포 고려.
resource: https://arxiv.org/abs/2503.22681
tags: [credit-card, dynamic, temporal, deployment]
authors: Irin Sultana, Syed Mustavi Maheen, Naresh Kshetri, Md Nasim Fardous Zim
venue: arXiv 2025 (ISDFS 2025로 보고됨)
year: 2025
timestamp: 2026-06-18T00:00:00Z
---

# detectGNN: Harnessing Graph Neural Networks for Enhanced Fraud Detection in Credit Card Transactions

[← 카테고리](index.md) · 원문: [arXiv:2503.22681](https://arxiv.org/abs/2503.22681)

- **저자**: Irin Sultana, Syed Mustavi Maheen, Naresh Kshetri, Md Nasim Fardous Zim
- **발표처/연도**: 2025 (ISDFS 2025로 보고됨) *(정식 발표처 일부 미확인)*

## 문제 (Problem)
전통 기법이 놓치는 **다층적·복잡한** 카드 사기를 계좌·상점·기기의 연결망으로 모델링해 탐지합니다.

## 방법 (Method)
거래를 연결된 엔티티(계좌·트레이더·기기)의 그래프로 표현하고 거래 특징과 관계 구조를 결합.
**시간 패턴·동적 갱신** 으로 숨은 사기를 포착하며 **실시간 처리·불균형·프라이버시** 같은 실무 문제를
함께 고려합니다. *(구체 백본·아키텍처 일부 미확인)*

## 핵심 기여 (Contributions)
- 거래 특징 + 계좌/상점/기기 관계를 함께 활용하는 GNN 프레임워크
- 시간 패턴·동적 그래프 갱신으로 진화하는 사기 대응
- 실시간 처리·불균형·프라이버시 등 배포 고려

## 결과·데이터셋 (Results)
GNN이 전통 기법 대비 복잡 사기 탐지에서 우수함을 보고 *(구체 데이터셋·수치 미확인)*.

## 관련 링크
- 개념: [확장성·실시간](../../concepts/overview.md), [동향·과제](../../concepts/trends-and-challenges.md)

---
[← 카테고리](index.md)
