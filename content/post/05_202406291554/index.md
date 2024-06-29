---
title: "05 grep ^b'"
date: 2024-06-29T15:54:08+09:00
tags:
  - post
  - migration hugo posts
  - grep
  - egrep
draft: false
task: "06_202405282336"
---

## 1. View original sample.txt
```
$ cat sample.txt
aa
ba
```

## 2. Only view lines with starting character b
```
$ cat sample.txt | egrep '^b'
ba

$ cat sample.txt | grep '^b'
ba
```
