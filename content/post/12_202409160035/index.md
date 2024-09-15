---
title: "12 Alt Tab does not work on Ubuntu 22.04"
date: 2024-09-16T00:35:56+09:00
tags:
  - post
  - ubuntu 22.04
  - wayland
draft: false
task: "07_202409160023"
---

## Disable the Wayland on Ubuntu 22.04
## in order to fix Alt Tab does not work on Ubuntu 22.04
```
$ vi /etc/gdm3/custom.conf
...

$ cat /etc/gdm3/custom.conf | grep WaylandEnable
WaylandEnable=false
```

## Reboot
```
$ reboot
```

## Why Alt Tab does not work on Ubuntu 22.04 ?
## Actually, I don't know.

## How to fix this ?
## As the default of the ubuntu 22.04, the wayland is enabled.
## Just disable the wayland to use Xorg display server. Then Alt Tab works !

