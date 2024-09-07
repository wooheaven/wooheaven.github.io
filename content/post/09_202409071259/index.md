---
title: "09 IntelliJ Invalidate Caches"
date: 2024-09-07T12:59:46+09:00
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
Cannot resolve class 'Driver'
Cannot resolve class or package'h2'
```
![image](09-1.png)

## 2. How to solve this problem ?
```
Solution 1.
IntellJ 
-> File
-> Invalidate Caches...
-> Invalidate and Restart
```
![image](09-2.png)
```
Solution 2.
-> Check pom.xml
-> Remove lib path(folder and files) of .m2 repository
```
![image](09-3.png)
```
-> mvn clean test # download the lib
```
![image](09-4.png)
```
Solution 3.
-> IntelliJ recommand restart IDE itself by detect corrupted caches.
```
![image](09-5.png)

## 3. Why is this problem happen?
```
[Download pre-build shared indexes] 
-> Sometimes it didn't work perfectly. Need to refresh the Caches.
```
![image](09-6.png)
