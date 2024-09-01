---
title: "08 Cannot connect to already running IDE instance."
date: 2024-09-02T03:20:50+09:00
tags:
  - post
  - migration hugo posts
  - Java
  - IntelliJ
draft: false
task: "06_202405282336"
---

## 1. What is the problem ?
```
Can not open IntelliJ with this message
"Cannot connect to already running IDE instance.
Exception: Process 2,837 is still running"
```

## 2. How to solve this problem ?
```
# remove configuration directory
$ rm ~/.config/JetBrains/IntelliJIdea2023.1/.lock
```

## 3. Why is this problem happen?
```
kill the process with id 2837
or
remove the file with name .lock
```

## reference
[Intellij support for this problem](https://intellij-support.jetbrains.com/hc/en-us/community/posts/13541697317906-Error-while-opening-intellij-Cannot-connect-to-already-running-IDE-instance-Exception-Process-2-837-is-still-running-)  
[config-directory for IntelliJ](https://www.jetbrains.com/help/idea/directories-used-by-the-ide-to-store-settings-caches-plugins-and-logs.html#config-directory)
