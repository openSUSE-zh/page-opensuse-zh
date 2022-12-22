---
author: Hanjingxue Boling
date: 2022-12-22 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Bash 和 GCC13 在 Tumbleweed 中更新
image: /assets/posts/2022-12/gcc.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 的快照就像邮递员送礼物一样寄出。

快照很多，但随着开发人员在假期期间开始休假，每个快照中只有几个软件包到达。

快照 [20221219](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/APMYDEYJ4OUFQ6EUWLM5S5YC7IUAUOG7/) 只更新了一个软件包。该软件包是 [cppcheck](https://github.com/danmar/cppcheck) 2.9.3，它是 C/C++ 代码的静态分析工具。此更新带来了各种图形用户界面和高级功能处理错误修复。该软件包使用 `this` 指针改进了生命周期分析，并添加了调试内部 `debug valueflow` 和 `debug valuetype` 以显示更多详细信息，包括源回溯。

快照 [20221218](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/E2HXIR5PO3MXYNDW35QSDS5EL76AEG63/) 只更新了两个软件包。shell 和命令语言包 [bash](https://www.gnu.org/software/bash/) 5.2.15 的更新添加了一些 Tumbleweed 的上游补丁。这些补丁解决了 bash 在优化子 shell 中的分叉时过于激进的几种情况，以及 bash 在引用不存在的关联数组元素时如何泄漏内存。Bash 在运行 `EXIT` 陷阱时也会推迟处理额外的终止信号，同时由于终止信号而退出；该补丁允许新的终止信号立即杀死 shell。快照中要更新的另一个包是 XFS 文件系统实用程序 [xfsdump](https://fossies.org/linux/misc/xfsdump-3.1.12.tar.xz/) 3.1.12。该软件包包含用于创建和恢复目录树备份的工具，这些工具修复了媒体解包、流解包、流打包和解包逻辑的媒体库存。

快照 [20221217](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/M3V26PC3BYSN5WRXJEZA5HL54ELBBFY4/) 对 VPN 客户端 [openconnect](https://www.infradead.org/openconnect/index.html) 的进行了一次主要版本更新。openconnect 9.01 版本增加了 webview 回调和对 Cisco 的一些 AnyConnect 会话和验证的支持。Linux 音频和视频包 [pipewire](https://pipewire.org/) 0.3.63 的更新修复了一个严重的错误，该错误在某些情况下使用高级矢量扩展 [AVX2](https://en.wikipedia.org/wiki/Advanced_Vector_Extensions) 时会导致一些音频失真。pipewire 还修复了一些崩溃触发器和 [audacity](https://www.audacityteam.org/) 的潜在启动问题。快照中更新了一些其他 [KDE](https://kde.org/) 的 [Qt5](https://www.qt.io/) 包，以及 [osinfo-db](https://libosinfo.org/) 20221130，它添加了一些补丁以支持 [Leap Micro](https://get.opensuse.org/leapmicro/5.3/) 版本。

快照 [20221216](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2UZC5OGKTYVQAHMBUGGGMWDTHSKXUJDL/) 中对 Linux 启动过程进行了功能改进，因为更新后的 [dracut](https://dracut.wiki.kernel.org/index.php/Main_Page) 会检查 `/usr/libexec` 中的 [fipscheck](https://www.systutorials.com/docs/linux/man/8-fipscheck/) 验证检查。[VMware](https://www.vmware.com/) 的 [open-vm-tools](https://github.com/vmware/open-vm-tools) 更新到 12.1.5 版本。该软件包添加了一个 containerInfo 插件和一些 [Coverity](https://en.wikipedia.org/wiki/Coverity)，这是专有的静态代码分析工具，报告的问题得到了解决。密码检查库 [cracklib](https://github.com/cracklib/cracklib) 2.9.8 有一些翻译更新，并强制 `grep` 在格式化文本文件时将输入视为文本。快照中更新了文本编辑器 [nano](https://www.nano-editor.org/) 7.1、[mpc](https://ftp.gnu.org/gnu/mpc/) 1.3.0 和其他几个软件包。

快照 [20221215](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LFOGUQOFDTITQQ6MPAW5LBV4LOT2VWA3/) 更新了数个软件包。快照中的重大更新是对 [GCC](https://gcc.gnu.org/) 的更新。[gcc13](https://gcc.gnu.org/) 13.0.0 [git+](https://github.com/git) 添加了两个新标头，并且 GCN 交叉编译器至少依赖于 [LLVM](https://llvm.org/) 13。编译器重新调整了一个补丁并包含了一个新补丁以支持 [armv7l](https://developer.arm.com/documentation/ddi0406/latest) 架构。 另一个主要版本更新是 [GNOME](https://www.gnome.org/) Unicode 字符映射包 [gucharmap](https://wiki.gnome.org/Apps/Gucharmap)；gucharmap 15.0.2 更新了翻译、[unicode 15.0.0](https://unicode.org/versions/Unicode15.0.0/)、添加了屏幕截图并从元信息链接它们。其他要更新的软件包是改进了对没有 GPS 高度的图像的处理的 [shotwell](https://gitlab.gnome.org/GNOME/shotwell) 0.31.7、使基于 [Python](https://www.python.org/) http 服务器的测试更加可靠的 [rsyslog 8.2212.0](https://www.adiscon.com/news/news-release/rsyslog-8-2212-0-released/) 等软件包。

------

原文：[Bash, GCC13 update in Tumbleweed](https://news.opensuse.org/2022/12/21/bash-gcc-up-in-tw/)，作者：Douglas DeMaio
