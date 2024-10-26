---
title: "23 Zip and Unzip folder"
date: 2024-10-26T10:16:07+09:00
tags:
  - post
  - migration hugo posts
  - zip unzip
draft: false
task: "06_202405282336"
---

## Before zip folders, check which folders are targeted for zip by tree
```
$ tree parentDirectory/
parentDirectory/
├── subDirectory1
│   └── file1.txt
└── subDirectory2
    └── file2.txt
```

## Zip the folders to a file. And remove the folders
```
$ zip -r parent.zip parentDirectory/
  adding: parentDirectory/ (stored 0%)
  adding: parentDirectory/subDirectory1/ (stored 0%)
  adding: parentDirectory/subDirectory1/file1.txt (stored 0%)
  adding: parentDirectory/subDirectory2/ (stored 0%)
  adding: parentDirectory/subDirectory2/file2.txt (stored 0%)

$ rm -rf parentDirectory/
```

## Unzip a file to folders. And tree the folders
```
$ unzip parent.zip 
Archive:  parent.zip
  creating: parentDirectory/
  creating: parentDirectory/subDirectory1/
extracting: parentDirectory/subDirectory1/file1.txt  
  creating: parentDirectory/subDirectory2/
extracting: parentDirectory/subDirectory2/file2.txt  

$ tree parentDirectory/
parentDirectory/
├── subDirectory1
│   └── file1.txt
└── subDirectory2
└── file2.txt
```
