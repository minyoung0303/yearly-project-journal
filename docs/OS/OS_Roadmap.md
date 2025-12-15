# 🖥️ 신입~2년차 개발자 OS 기술면접 학습 로드맵

> 대상: **신입 ~ 2년차 백엔드 / 웹 개발자**
> 목표: **OS 핵심 개념을 이해하고, 기술면접에서 명확하게 설명할 수 있는 수준 도달**

---

## 🎯 학습 목표

- 운영체제 핵심 개념을 **한 문장으로 설명**할 수 있다
- 실무(웹 서버, 멀티스레드, 메모리 이슈)와 **연결해서 설명**할 수 있다
- 꼬리 질문(Why / Difference / Trade-off)에 대응할 수 있다

---

## 📅 전체 로드맵 개요 (4주)

```
1주차: OS 기초 + Process / Thread
2주차: CPU Scheduling + Context Switching
3주차: Memory Management
4주차: Synchronization + Deadlock + 면접 대비
```

---

## 1️⃣ 1주차 – OS 기본 & Process / Thread

### ✅ 학습 키워드

- 운영체제 역할
- Process
- Thread
- PCB (Process Control Block)
- Context Switching (개념)

### 🔹 운영체제(OS)란?

- 하드웨어와 사용자 프로그램 사이의 **중재자**
- 자원(CPU, Memory, I/O)을 **효율적이고 안전하게 관리**

**면접 한 줄 요약**

> 운영체제는 하드웨어 자원을 효율적이고 안전하게 관리하는 시스템 소프트웨어입니다.

---

### 🔹 Process

- 실행 중인 프로그램
- 독립된 메모리 공간 보유
- 구성 요소

  - Code / Data / Heap / Stack
  - PCB (PID, 상태, 레지스터 정보 등)

**포인트**

- 프로세스 간 메모리는 기본적으로 공유되지 않음
- 통신 시 IPC 필요

---

### 🔹 Thread (⭐ 매우 중요)

- 프로세스 내 실행 단위
- Stack만 개별 소유, 나머지 메모리는 공유

#### Process vs Thread

| 구분      | Process  | Thread           |
| --------- | -------- | ---------------- |
| 메모리    | 독립     | 공유             |
| 생성 비용 | 큼       | 작음             |
| 통신      | IPC 필요 | 메모리 직접 접근 |
| 안정성    | 높음     | 낮음             |

**실무 연결**

- 웹 서버의 요청 처리
- 멀티스레드 환경에서의 성능 향상

---

### 🎤 예상 면접 질문

- 프로세스와 스레드의 차이를 설명해보세요
- 멀티스레드를 사용하는 이유는 무엇인가요?
- 스레드가 많으면 항상 성능이 좋아지나요?

---

## 2️⃣ 2주차 – CPU Scheduling & Context Switching

### ✅ 학습 키워드

- CPU Scheduling
- Preemptive / Non-preemptive
- Context Switching

---

### 🔹 CPU Scheduling

- 여러 프로세스/스레드 중 **CPU를 할당할 대상 결정**

#### 주요 알고리즘 (개념 중심)

- FCFS
- SJF
- Round Robin ⭐
- Priority Scheduling

**중요 기준**

- 응답 시간
- 공정성
- 처리량

---

### 🔹 Context Switching

- 실행 중인 작업을 중단하고 다른 작업으로 전환
- PCB 정보 저장 및 복원

**포인트**

- Context Switching에는 비용 발생
- Thread 전환이 Process 전환보다 비용이 적음

---

### 🎤 예상 면접 질문

- Context Switching이란 무엇인가요?
- 스레드 전환이 프로세스 전환보다 빠른 이유는?
- Round Robin 스케줄링의 장점은?

---

## 3️⃣ 3주차 – Memory Management

### ✅ 학습 키워드

- Virtual Memory
- Paging
- Segmentation
- Page Fault

---

### 🔹 Virtual Memory

- 실제 물리 메모리보다 큰 메모리를 사용하는 것처럼 제공
- 디스크 일부를 메모리처럼 활용

**면접 한 줄 요약**

> 가상 메모리는 메모리 효율성과 프로세스 간 메모리 보호를 제공합니다.

---

### 🔹 Paging

- 메모리를 고정 크기 페이지 단위로 관리
- 외부 단편화 ❌
- 내부 단편화 ⭕

---

### 🔹 Page Fault

- 필요한 페이지가 메모리에 없는 경우 발생
- 디스크 → 메모리 적재

**실무 연결**

- 메모리 부족 시 성능 저하
- 서버 장애 원인이 될 수 있음

---

### 🎤 예상 면접 질문

- 가상 메모리를 사용하는 이유는?
- Paging과 Segmentation 차이점은?
- Page Fault 발생 시 처리 흐름을 설명해보세요

---

## 4️⃣ 4주차 – Synchronization & Deadlock

### ✅ 학습 키워드

- Race Condition
- Critical Section
- Mutex / Semaphore
- Deadlock

---

### 🔹 동기화(Synchronization)

- 여러 스레드가 공유 자원 접근 시 발생하는 문제 해결

#### 주요 개념

- Race Condition
- Critical Section

#### 해결 방법

- Mutex
- Semaphore

**Mutex vs Semaphore**

- Mutex: 하나의 스레드만 접근
- Semaphore: 지정된 개수만큼 접근 허용

---

### 🔹 Deadlock (면접 단골)

#### 발생 조건 (4가지)

1. Mutual Exclusion
2. Hold and Wait
3. No Preemption
4. Circular Wait

**면접 한 줄 요약**

> 데드락은 네 가지 조건이 동시에 만족될 때 발생합니다.

#### 해결 방법

- 예방
- 회피
- 탐지 및 복구

---

### 🎤 예상 면접 질문

- Race Condition이란 무엇인가요?
- Mutex와 Semaphore의 차이는?
- Deadlock 발생 조건을 설명해보세요

---

## 📘 면접 대비 학습 팁

### ✅ 답변 구조 추천

```
1. 개념 정의
2. 왜 필요한가
3. 장단점 또는 실무 예시
```

### ✅ 학습 방법

- 한 문장 요약 연습
- 표로 차이점 정리
- 실무 사례와 연결해서 설명하기

---

## 📌 마무리 체크리스트

- [ ] Process / Thread 차이를 설명할 수 있다
- [ ] Context Switching 비용을 이해한다
- [ ] 가상 메모리 동작 원리를 설명할 수 있다
- [ ] Deadlock 발생 조건 4가지를 암기했다

---

✍️ _이 문서는 기술면접 대비용으로 자유롭게 수정·확장하여 사용하세요._
