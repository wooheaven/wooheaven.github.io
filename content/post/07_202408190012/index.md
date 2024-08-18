---
title: "07 xargs -n2"
date: 2024-08-19T00:12:22+09:00
tags:
  - post
  - migration hugo posts
  - xargs
draft: false
task: "06_202405282336"
---

## 1. view file as it is
```
# cat sample.txt
1 2 3
4 5 6
```

## 2. view file with max-args
```
$ cat sample.txt | xargs -n2
1 2
3 4
5 6
```
