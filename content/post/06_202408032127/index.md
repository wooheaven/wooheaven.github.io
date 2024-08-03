---
title: "06 tail -f test.log | grep -B 2 -A 2 'target keyword'"
date: 2024-08-03T21:27:46+09:00
tags:
  - post
  - migration hugo posts
  - tail
  - grep
draft: false
task: "06_202405282336"
---

## 1. View original test.log
```
$ tail -f test.log
1
2
3
4 target keyword
5
6
7
```

## 2. Monitoring test.log with target keyword in real time
```
$ tail -f test.log | grep -B 2 -A 2 'target keyword'
2
3
4 target keyword
5
6
```
