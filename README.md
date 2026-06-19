# LLMWiki_FDS — GNN × FDS Knowledge Bundle

> 그래프 신경망(GNN)과 이상거래·사기 탐지(FDS)를 연계한 **2024–2026 논문 위키**.
> [**Open Knowledge Format (OKF) v0.1**](https://cloud.google.com/blog/products/data-analytics/how-the-open-knowledge-format-can-improve-data-sharing) 사양을 따르는 지식 번들입니다.

이 저장소는 사람과 AI 에이전트가 모두 읽을 수 있는 **OKF 번들**입니다.
**시작점은 [`index.md`](index.md)** 입니다 — 거기서부터 progressive disclosure로 탐색하세요.

> 📱 **GitHub 말고 노트앱으로 보고 싶다면?** 이 폴더를 그대로 **Obsidian** 보관소로 열면
> iPad·iPhone·MacBook에서 굿노트처럼 동기화해 볼 수 있습니다 →
> [**obsidian-setup.md**](obsidian-setup.md) · 생산성 대시보드 [**dashboard.md**](dashboard.md)

## OKF 번들이란?

OKF는 LLM-wiki 패턴을 이식 가능한 포맷으로 표준화한 개방 사양입니다. 핵심 원칙:

- **Just markdown** — 어떤 에디터에서도 읽히고 GitHub에서 렌더링됨
- **Just files** — git 저장소·tarball·파일시스템 어디서나 사용
- **Just YAML frontmatter** — 구조화·질의 가능한 필드 (필수 필드는 `type` 하나뿐)
- 파일 간 **markdown 링크 = 지식 그래프**, 파일 경로 = concept 식별자
- 예약 파일: `index.md`(디렉터리 개요), `log.md`(변경 이력)

## 번들 구조

```
.
├── index.md          # 번들 루트 (여기서 시작)
├── log.md            # 변경 이력
├── concepts/         # 배경 개념 (개요·분류·데이터셋·용어·동향)
├── datasets/         # 벤치마크 데이터셋 concept
└── papers/           # 24편 논문 concept (6개 주제 디렉터리)
    ├── surveys/
    ├── credit-card-fraud/
    ├── llm-gnn/
    ├── aml-crypto/
    ├── heterophily-spectral/
    └── robustness-explainability/
```

## 각 concept 문서의 형식

```yaml
---
type: Research Paper          # (필수) concept 분류
title: ...                    # 사람이 읽는 제목
description: ...              # 한 줄 설명
resource: https://arxiv.org/abs/....   # 원문 링크
tags: [credit-card, temporal, causal]  # 검색용 태그
timestamp: 2026-06-18T00:00:00Z        # 갱신 시각 (ISO 8601)
---

# 본문 (markdown) — 문제 → 방법 → 기여 → 결과 → 링크
```

## 새 논문/개념 추가 방법

1. 알맞은 `papers/<카테고리>/` 에 `kebab-case.md` concept 파일 생성 (위 frontmatter 양식 사용).
2. 해당 디렉터리 `index.md` 표에 한 줄 추가.
3. 관련 [데이터셋](datasets/index.md)·[개념](concepts/index.md) 문서로 markdown 링크 연결.
4. [`log.md`](log.md) 에 변경 기록 추가.

---

👉 **[index.md 에서 위키 탐색 시작하기](index.md)**
