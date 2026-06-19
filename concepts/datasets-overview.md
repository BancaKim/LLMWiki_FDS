---
type: Concept
title: 데이터셋 개요 — 평가지표와 선택 가이드
description: GNN × FDS 평가지표(AUC/AUPRC/F1/GMean)와 문제 유형별 데이터셋 선택 가이드. 개별 데이터셋은 datasets/ 카탈로그 참조.
tags: [datasets, evaluation, metrics, benchmark]
timestamp: 2026-06-18T00:00:00Z
---

# 데이터셋 개요 — 평가지표와 선택 가이드

[← 개념 목록](index.md) · [번들 루트](../index.md)

개별 벤치마크의 상세 정보는 **[데이터셋 카탈로그](../datasets/index.md)** 에 concept 으로 정리되어
있습니다. 이 문서는 그 **선택 기준과 평가지표** 를 설명합니다.

## 문제 유형별 데이터셋 선택 가이드

| 연구 주제 | 권장 데이터셋 |
|-----------|---------------|
| 이질성·메시지 패싱 | [YelpChi](../datasets/yelpchi.md) + [Amazon](../datasets/amazon.md) (필수), [T-Finance/T-Social](../datasets/t-finance-t-social.md) |
| 신용카드·거래 사기 | [FFSD/S-FFSD](../datasets/ffsd.md), [DGraph-Fin](../datasets/dgraph-fin.md) |
| AML·암호화폐 | [Elliptic(++)](../datasets/elliptic.md), [IBM AML](../datasets/ibm-aml.md) |
| LLM × GNN (텍스트 필요) | 원문 텍스트가 살아있는 [YelpChi](../datasets/yelpchi.md)/[Amazon](../datasets/amazon.md) |
| 대규모 확장성 | [T-Social](../datasets/t-finance-t-social.md), [DGraph-Fin](../datasets/dgraph-fin.md), 암호화폐 멀티그래프 |

## 공통 평가지표

| 지표 | 의미 | 왜 쓰나 |
|------|------|---------|
| **AUC (ROC-AUC)** | 순위 품질 | 불균형에 비교적 둔감, 표준 비교 |
| **AUPRC** | PR 곡선 아래 면적 | 극심한 불균형에서 AUC보다 민감 |
| **F1-macro** | 클래스 균형 F1 | 소수 클래스 성능 반영 |
| **GMean** | 민감도·특이도 기하평균 | 불균형 균형 평가 |
| **Recall@k / Precision@k** | 상위 k 탐지율 | 실무 심사 우선순위 반영 |

> 💡 극심한 불균형(사기 <1%)에서는 **Accuracy 단독 사용을 피하고** AUPRC·GMean·F1-macro를 함께 보세요.

## 왜 데이터셋이 중요한가

- 사기 그래프의 **이질성·불균형 정도**는 데이터셋마다 크게 달라, 한 데이터셋에서 좋은 모델이
  다른 데이터셋에서는 무너질 수 있습니다 → **다중 데이터셋 비교가 표준**.
- LLM × GNN 연구는 **원문 텍스트가 보존된** 데이터셋이 필요합니다(임베딩만 공개된 버전은 부적합).

---
[← 이전: 분류 체계](taxonomy.md) · [데이터셋 카탈로그 →](../datasets/index.md) · [다음: 용어집 →](glossary.md)
