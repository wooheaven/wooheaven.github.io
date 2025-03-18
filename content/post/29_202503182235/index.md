---
title: "29 Install and configure vim-plug 202503182235"
date: 2025-03-18T22:35:27+09:00
tags:
  - post
  - vim
  - vim-plug
draft: false
task: "06_202405282336"
---

# 1. Install vim-plug
```bash
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# 2. Configure vim-plug
```bash
$ vi ~/.vimrc
...
" configure vim-plug : start
call plug#begin('~/.vim/plugged')

" List up the plugin to install
" Plug 'scrooloose/nerdtree'
" Plug 'vim-airline/vim-airline'
" Plug 'nanotech/jellybeans.vim'

call plug#end()
" configure vim-plug : end 

:wq
```

# 3. Start vim and Install plugins
```bash
$ vim
:PlugInstall
:wq

$ tree -d -L 1 ~/.vim/plugged/
/home/woo/.vim/plugged/
├── jellybeans.vim
├── nerdtree
└── vim-airline
```
