---
title: "01 hugo completion on bash"
date: 2024-01-19T18:01:02+09:00
tags:
  - hugo
  - hugo completion
draft: false
task: "01_202401190711"
---

# hugo completion on bash
```
$ ll /etc/bash_completion.d/
total 20
drwxr-xr-x  2 root root 4096 May 31  2023 ./
drwxr-xr-x 75 root root 4096 Jan 16 13:15 ../
-rw-r--r--  1 root root 6636 Nov 12  2019 apport_completion
-rw-r--r--  1 root root  439 Jan 12  2023 git-prompt

$ sudo touch /etc/bash_completion.d/hugo
[sudo] password for woo:

$ sudo chmod 777 /etc/bash_completion.d/hugo
[sudo] password for woo:

$ hugo completion bash > /etc/bash_completion.d/hugo

$ sudo chmod 644 /etc/bash_completion.d/hugo
[sudo] password for woo:

$ ll /etc/bash_completion.d/
total 32
drwxr-xr-x  2 root root  4096 Jan 18 13:58 ./
drwxr-xr-x 75 root root  4096 Jan 18 14:50 ../
-rw-r--r--  1 root root  6636 Nov 12  2019 apport_completion
-rw-r--r--  1 root root   439 Jan 12  2023 git-prompt
-rw-r--r--  1 root root 11657 Jan 18 14:53 hugo

# open another terminal

$ hugo server # se~ + TAB
```
