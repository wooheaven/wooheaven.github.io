---
title: "28 Show up git branch and status on bash shell"
date: 2024-12-21T11:42:01+09:00
tags:
  - post
  - bash shell
  - git branch
  - git status
draft: false
task: "15_202412211129"
---

## Edit ~/.bashrc for show up git branch and status on bash shell
```
$ vi ~/.bashrc
...
parse_git_branch()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
c_cyan=`tput setaf 6`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_sgr0=`tput sgr0`
branch_color ()
{
   if git rev-parse --git-dir >/dev/null 2>&1
   then
      color=""
      if git diff --quiet 2>/dev/null >&2
      then
         color="${c_green}"
      else
         color=${c_red}
      fi
   else
      return 0
   fi
   echo -ne $color
}
export PS1='\e[01;32m\u@\h \[\e[34m\]\w\[${c_sgr0}\]\[$(branch_color)\]$(parse_git_branch)\[${c_sgr0}\]\$ '

$ source ~/.bashrc
```
