## 概述
本文的目的是让Lenovo Legion Y7000 笔记本电脑系列尽量完美的使用上Mojave

注意：此系列笔记本电脑似乎没有WiFi白名单，因此您无需进行任何BIOS修改。

## 你需要什么
- Lenovo Legion Y7000系列笔记本
- 下载好的Mojave镜像，本人用的是Mojave 14.2 的镜像
- 8GB U盘
- 博通BCM94352z 无线网卡

## BIOS确保设置
- 启用UEFI启动。
- 禁用安全启动。
- SATA模式设置为AHCI。

## 正常工作的功能
- UEFI通过Clover启动。
- 内置键盘（带特殊功能键，小键盘已有驱动方法但驱动不稳定已舍弃）。
- 原生USB3 / USB2 
- AppleHDA原生音频，包括耳机。
- 内置摄像头。
- 原生电源管理。
- 电池状态。
- 背光控制（使用hotpatch打补丁实现Fn+功能键调节亮度）。
- 背光键盘。
- 核显驱动（独显已经 hotpatch 屏蔽）。
- 有线以太网卡。
- Mac App Store正常运行。
- CPU变频。
- 睡眠唤醒（鼠标，键盘、电源键唤醒均正常）。
- 无线网络（更换博通BCM94352z）。
- 蓝牙（更换博通BCM94352z）。
- 触控板。

## 不能正常使用的功能
- HDMI ，因为HDMI 端口连接到已禁用的Nvidia卡。

## 关于 ALCPlugFix 的使用
- 进入ALCPlugFix 目录下，执行 “install双击自动安装.command” 即可
- 该程序主要是为了解决耳机插入时系统不能自动切换耳麦问题以及耳机杂音等问题



