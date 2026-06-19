---
type: Research Paper
must_read: true
venue_tier: top-tier conference
title: "Effective Illicit Account Detection on Large Cryptocurrency MultiGraphs (DIAM)"
description: 암호화폐 방향성 멀티그래프에서 불법계좌를 탐지. Edge2Seq로 평행 엣지 시퀀스 모델링 + MGD 불일치 인식 메시지 패싱. 2천만 노드급에서 F1 96.55%.
resource: https://arxiv.org/abs/2309.02460
tags: [aml, crypto, multigraph, edge2seq, bitcoin, ethereum, scalability]
authors: Zhihao Ding, Jieming Shi, Qing Li, Jiannong Cao
venue: CIKM 2024
year: 2024
timestamp: 2026-06-18T00:00:00Z
---

# ⭐ Effective Illicit Account Detection on Large Cryptocurrency MultiGraphs (DIAM)

> ⭐ **필독 (MUST-READ)** · 탑티어 학회 게재: **CIKM 2024**

[← 카테고리](index.md) · 원문: [arXiv:2309.02460](https://arxiv.org/abs/2309.02460) · [CIKM 2024](https://dl.acm.org/doi/abs/10.1145/3627673.3679707)

- **저자**: Zhihao Ding, Jieming Shi, Qing Li, Jiannong Cao (Hong Kong PolyU)
- **발표처/연도**: CIKM 2024

## 문제 (Problem)
암호화폐(Bitcoin/Ethereum) 거래망의 **불법계좌(illicit account)** 탐지. 이 거래망은 **속성 있는
평행(parallel)·방향성 엣지** 를 가진 멀티그래프로 보는 것이 적절하나 기존 방법은 이를 충분히 활용하지
못합니다.

## 방법 (Method)
**DIAM** 제안. ① **Edge2Seq** 모듈: 평행·방향성 엣지의 내재 거래 패턴을 (엣지 속성·방향 시퀀스로)
포착해 노드 표현 생성. ② **MGD(Multigraph Discrepancy)** 모듈: 어텐션 기반의 맞춤형 메시지 패싱으로
정상/불법 노드 간 **불일치(discrepancy) 특징** 을 멀티그래프 위상에서 포착.

## 핵심 기여 (Contributions)
- 속성 있는 평행 엣지를 방향 시퀀스로 모델링하는 **Edge2Seq**
- 클래스 분리를 위한 **불일치 인식 메시지 패싱(MGD) + 어텐션**
- 초대형 실제 암호화폐 그래프에 대한 **확장성** 설계

## 결과·데이터셋 (Results)
4개 대형 Bitcoin/Ethereum 데이터에서 15개 베이스라인과 비교. 약 **2천만 노드 / 2억 엣지** Bitcoin
데이터에서 **F1 96.55%** (차순위 83.92% 대비 우위).

## 관련 링크
- 개념: [멀티그래프, 확장성](../../concepts/taxonomy.md)
- 코드: [github.com/TommyDzh/DIAM](https://github.com/TommyDzh/DIAM)

---
[← 카테고리](index.md)
