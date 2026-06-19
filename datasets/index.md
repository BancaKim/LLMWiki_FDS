---
type: Index
title: 벤치마크 데이터셋 카탈로그
description: GNN × FDS 연구에서 반복적으로 쓰이는 표준 벤치마크 데이터셋 concept 모음.
tags: [datasets, benchmark, catalog]
timestamp: 2026-06-18T00:00:00Z
---

# 벤치마크 데이터셋 카탈로그

[← 번들 루트](../index.md) · 평가지표·선택 가이드는 [데이터셋 개요](../concepts/datasets-overview.md)

각 데이터셋은 하나의 concept 문서입니다. 논문 concept 들이 이 문서들로 링크됩니다.

## 리뷰·평판 사기 (가장 표준)
| 데이터셋 | 도메인 | 문서 |
|----------|--------|------|
| **YelpChi** | 음식점·호텔 리뷰 (3관계) | [yelpchi.md](yelpchi.md) |
| **Amazon** | 악기 카테고리 리뷰 (3관계) | [amazon.md](amazon.md) |

## 금융·거래 사기
| 데이터셋 | 도메인 | 문서 |
|----------|--------|------|
| **T-Finance / T-Social** | 금융·소셜 이상탐지 | [t-finance-t-social.md](t-finance-t-social.md) |
| **DGraph-Fin** | 핀테크 대출 그래프(대규모) | [dgraph-fin.md](dgraph-fin.md) |
| **FFSD / S-FFSD** | 거래사기 (반)지도 | [ffsd.md](ffsd.md) |

## 자금세탁·암호화폐 (AML / Crypto)
| 데이터셋 | 도메인 | 문서 |
|----------|--------|------|
| **Elliptic / Elliptic++** | 비트코인 트랜잭션 | [elliptic.md](elliptic.md) |
| **IBM Transactions for AML** | 합성 금융거래(대규모) | [ibm-aml.md](ibm-aml.md) |

## 기타 (참고)
Reddit · Weibo · Tolokers · Questions(소셜 이상탐지), Bitcoin-Alpha/OTC(신뢰 네트워크),
FDCompCN(중국 기업 재무사기), 암호화폐 Ethereum/Bitcoin 멀티그래프(DIAM), 합성 이상주입(Cora/ACM).

---
[← 번들 루트](../index.md) · [데이터셋 개요(지표·선택) →](../concepts/datasets-overview.md)
