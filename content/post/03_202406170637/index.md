---
title: "03 OpenSSL@1.1 is deprecated od disabled"
date: 2024-06-17T06:38:20+09:00
tags:
 - post
 - migration hugo posts
 - brew
 - brew doctor
 - deprecated
 - disabled
 - OpenSSL@1.1
draft: false
task: "06_202405282336"
---

# 1. What is the problem ?
```
$ brew doctor
...

Warning: Some installed formulae are deprecated or disabled.
You should find replacements for the following formulae:
  openssl@1.1
```

## 2. (In short) How to solve the problem ?
```
$ brew uninstall --ignore-dependencies autoconf
$ brew install autoconf
```

### 2.1. (More details) Find out which package is using openssl\@1.1 ?
```
$ brew uses --installed openssl@1.1
autoconf automake libtirpc pyenv-virtualenv
```

###  2.2 Find out the dependencies of the previously mentioned packages.(autoconf, automake, ...)
```
$ brew deps --tree --installed autoconf
autoconf
├── m4
│   └── glibc
│       └── linux-headers@5.15
├── perl
│   ├── berkeley-db
│   │   ├── openssl@3
...

$ brew deps --tree --installed automake
...

$ brew deps --tree --installed libtirpc
...

$ brew deps --tree --installed pyenv-virtualenv
...
```

## 2.3 Find out the infomation of the previously mentioned packages.(autoconf, automake, ...)
```
$ brew info --json autoconf
[
  {
    "name": "autoconf",
    ...
    "installed": [
      {
        "version": "2.71",
        "runtime_dependencies": [
          {
            "full_name": "openssl@1.1",
            "version": "1.1.1l",
            "declared_directly": false
          },
          ...
        ]
      } 
    ]
  } 
]

$ brew info --json automake
...

$ brew info --json libtirpc
...

$ brew info --json pyenv-virtualenv
...
``` 

## 2.4 Uninstall and install the previously mentioned packages.(autoconf, automake, ...)
```
$ brew uninstall --ignore-dependencies autoconf automake libtirpc pyenv-virtualenv
...

$ brew install autoconf automake libtirpc pyenv-virtualenv
...
```

## 2.5 Check the problem is solved.
```
$ brew doctor
Your system is ready to brew.
```

## 3. Why did the problem happen ?
```
Perhaps, in certain cases, when updating a package, a new version of dependency is installed without uninstalling the old version.
For example, when updating autoconf, openssl@3 is installed without uninstalling openssl@1.1
```
