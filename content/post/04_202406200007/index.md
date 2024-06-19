---
title: "04 grep 'b$'"
date: 2024-06-20T00:07:55+09:00
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
ab
```

## 2. Only view lines with ending character b
```
$ cat sample.txt | egrep 'b$'
ab

$ cat sample.txt | grep 'b$'
ab
```
