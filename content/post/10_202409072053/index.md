---
title: "10 Synchronizing files from server to server"
date: 2024-09-07T20:53:59+09:00
tags:
  - post
  - migration hugo posts
  - rsync
draft: false
task: "06_202405282336"
---

## Check files of SOURCE (a folder on server)
```
$ pwd
/home/user/Document/

$ cd folder_a

$ tree
.
├── file_0.txt
└── sub_folder_1
    └── file_1.txt

1 directory, 2 files
```

## Synchornizing files from SOURCE to DESTINATION by using command rsync
```
$ rsync -arv folder_a/ user@10.10.10.10:/home/user/folder_b/
sending incremental file list
./
file_1.txt
sub_folder_a/
sub_folder_a/filte_2.txt

sent 261 bytes  received 69 bytes  73.33 bytes/sec
total size is 0  speedup is 0.00
```

## Check files of DESTINATION (a folder on another server)
```
$ ssh user@10.10.10.10

$ cd folder_b/

$ tree 
.
├── file_1.txt
└── sub_folder_a
    └── filte_2.txt

1 directory, 2 files
```
