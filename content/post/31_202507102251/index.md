---
title: "31 Install and configure vim-airline"
date: 2025-07-10T22:55:01+09:00
tags:
  - post
  - vim
  - vim-plug
  - vim-airline
draft: false
task: "06_202405282336"
---

# 1. Configure ~/.vimrc
```
$ vi ~/.vimrc
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

call plug#end()

" vim-airline
let g:airline#extensions#tabline#enabled = 1 " Activate the tabline 
set laststatus=2                             " The tabline is always displayed, even when there is only one window.
" set laststatus=0                             " The tabline is never displayed.
" set laststatus=1                             " The tabline is displayed only when there are splits (multiple windows).
nmap <F3> :bp<CR>                            " buffer previous
nmap <F4> :bn<CR>                            " buffer next


```

# 2. Install
```
:PlugInstall
```
```
