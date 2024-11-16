---
title: "26 vim macro"
date: 2024-11-16T10:43:49+09:00
tags:
  - post
  - vim
  - command line mode
  - macro
draft: false
task: "06_202405282336"
---

# Recording actions on vi command line mode
```
$ vi test.txt
<esc> qm (recording) q
```
# Use the macro on vi command line mode
```
$ vi test.txt
<esc> :reg m
or
<esc> @m
```

# Register the macro to .vimrc file
```
$ vi ~/.vimrc
<insert> ...
<insert> let @m='(Ctrl-R Ctrl-R m)'
<esc> :wq
```


