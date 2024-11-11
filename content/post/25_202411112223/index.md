---
title: "25 Configure Linux history"
date: 2024-11-11T22:23:52+09:00
tags:
  - post
  - migration hugo posts
  - history
draft: false
task: "06_202405282336"
---

## Configure file ~/.bashrc
```
$ vi ~/.bashrc
...
HISTSIZE=1000                    # history size
HISTFILESIZE=10000               # history file size ~/.bash_history
export HISTTIMEFORMAT="[%F %T] " # F Full date (Y-M-D format), T Time H:M:S format)
```

## Apply the history configuration
```
$ source ~/.bashrc
```

## Get output of history
```
$ history
1  [2023-05-23 21:30:46] history -w
```
