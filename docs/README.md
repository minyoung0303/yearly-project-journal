## 📘 1. 자료구조(Data Structures)

### 🔹 선형 자료구조

- 배열(Array)

  - 인덱스 기반, O(1) 접근, O(n) 삽입/삭제

- 연결 리스트(Linked List)

  - O(1) 삽입/삭제(노드 접근 시), O(n) 탐색

- 스택(Stack)

  - LIFO 구조, 함수 호출 스택, 괄호 검사 등

- 큐(Queue)

  - FIFO 구조, 작업 스케줄링, BFS 핵심

- 덱(Deque)
  - 양쪽 삽입/삭제 가능, 슬라이딩 윈도우 문제에 쓰임

### 🔹 해시 기반 구조

- 해시테이블(Hash Table)
  - 평균 O(1) 탐색/삽입/삭제
  - (프로그래머스 "완주하지 못한 선수", "폰켓몬" 등 대표 문제)

### 🔹 트리(Tree) 계열

- 이진 트리 / 이진 탐색 트리(BST)

  - 탐색 O(log n), 삽입/삭제 O(log n)

- 힙(Heap)

  - 우선순위 큐 구현, 최소/최대값 빠르게 꺼낼 때

- 트라이(Trie)
  - 문자열 탐색, 자동완성, 사전 구조

### 🔹 그래프(Graph) 관련

- 그래프(Graph) — 노드와 간선

  - BFS, DFS 탐색 기반

- 가중치 그래프 — 다익스트라, 벨만포드 등 알고리즘과 함께 학습

## 📘 2. 알고리즘(Algorithms)

### 🔹 탐색(Search)

- 선형 탐색(Linear Search)

- 이진 탐색(Binary Search) — 코테 최강자

### 🔹 정렬(Sort)

- 버블, 선택, 삽입 정렬 — 개념 익히기 위주

- 퀵 정렬(Quick Sort) — 평균 O(n log n)

- 병합 정렬(Merge Sort) — 안정적, O(n log n)

- 힙 정렬(Heap Sort) — 우선순위 큐 기반

### 🔹 그래프 알고리즘

- BFS / DFS

  - (트리, 그래프 탐색의 기본기)

- 다익스트라(Dijkstra) — 최단 경로

- 유니온 파인드(Union-Find) — 사이클 검사, 네트워크 연결 문제

### 🔹 동적 계획법(DP)

- 점화식 세우기, 메모이제이션, 탑다운/바텀업
  - 예: 피보나치, 계단 오르기, LIS

### 🔹 기타

- 그리디(Greedy)

- 백트래킹(Backtracking)

- 슬라이딩 윈도우(Sliding Window)

- 투포인터(Two Pointers)
