---
title: "24 Delete a symbolic link"
date: 2024-10-29T22:19:06+09:00
tags:
  - post
  - migration hugo posts
  - symbolic link
  - ln unlink
draft: false
task: "06_202405282336"
---

## 1. Create a folder.
```
$ mkdir tmp
$ ll tmp/
total 8
drwxrwxr-x  2 woo woo 4096  5월 17 22:31 ./
drwxr-xr-x 19 woo woo 4096  5월 17 22:31 ../
```

## 2. Create a symbolic link for the folder.
```
$ ln -s ./tmp latest
$ ll latest
lrwxrwxrwx 1 woo woo 5  5월 17 22:31 latest -> ./tmp/
```

## 3. Delete a symbolic link that point to the folder.
```
$ unlink latest
$ ll latest
ls: cannot access 'latest': No such file or directory
```
