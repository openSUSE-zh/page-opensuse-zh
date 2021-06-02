---
author: Nianqing Yao
date: 2021-06-02
layout: post
license: CC-BY-SA-3.0
title: '[重要] Tumbleweed 更新通告'
image: /assets/posts/misc/Tumbleweed-Warning.svg
categories:
- 更新通告
tags:
- 重要
- 原创
---

近期释出的快照 [20210527](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IBCTE7GGE7WA2TIX7ENZ67G7O4H655GA/) 包含了对文件系统架构的转变，即 UsrMerge 和对 `Glibc` 的升级。

这意味着即使上游软件的代码没有改变，几乎所有软件包都需要重新安装。同时这些改变也带来了链接符号与文件位置的变动，这意味着不规范的应用程序极有可能在升级后出现问题甚至崩溃。

对于用户，请使用 `zypper dup` 而非 `zypper up` ，也请**务必**在内核终端(TTY)下运行 `zypper` 进行更新。您可以按住 `Ctrl+Alt+F1` 与 `Ctrl+Alt+F7` 在内核终端与图形界面中切换，在内核终端环境下输入 `export LANG=C` 可以使程序显示为英文，避免出现中文显示为方块的现象，安装 `fbterm` 或 `kmscon` 也可以解决此问题。不要在桌面环境的终端下进行更新，因为若桌面环境在更新过中崩溃，终端内的进程也可能随之终止。

由于更新了大量软件包，在升级前一定要确保磁盘上有足够的剩余空间。如果您没有配置 sanpper 快照，我们建议您提前安装 `busybox-static`，以应对可能出现的意外状况。

同时，我们建议您检查您设备上的**非官方源**应用程序，已有多例报告表明部分第三方程序在该快照后无法运行，详细的报告参见后文。

#### 已知问题

1. Qv2Ray 运行失败

   原因：直接原因是软件包 `Qv2Ray` 没有更新到与该快照匹配的版本，根本原因是 `Qv2Ray` 无法在最新的 `abseil-cpp` 下编译，Arch Linux 也遭遇了同样的问题，社区正在等待修复。  
   **解决方案：**建议使用 AppImage 版本代替。

2. 桌面特效故障

   部分用户在更新后报告KDE桌面环境的混成器出现异常。  
   **解决方案：**在系统设置中调整渲染模式为 OpenGL 3.1

3. VMware 内核模块编译失败

   原因：内核头文件路径改变。  
   **解决方案：** 参见[此处](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/message/TEZY5HUBYM6CLPVA7YQS6EORCRD63WEK/)，创建软链接：
   ```
   cd /usr/lib/modules/5.12.4-2-default
   ln -s ../../../../usr/src/linux-5.12.4-2-obj/x86_64/default build
   ```

4. （可能存在）Nvidia 驱动分辨率错误

   **解决方案：** 暂无
   
参见英文邮件列表的[讨论](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/message/XFPS2KBKSZL2KORYMXY2X77Q2ZR2DAFD/)以获取更多信息。
