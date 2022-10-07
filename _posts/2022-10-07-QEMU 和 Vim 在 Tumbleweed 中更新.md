---
author: Hanjingxue Boling
date: 2022-10-07 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: QEMU 和 Vim 在 Tumbleweed 中更新
image: /assets/posts/2022-10/Vimlogo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在 9 月份发布了非常多的快照版本，Tumbleweed 在该月的 30 天中提供了 27 个快照。

自上周五以来，已经发布了四张快照。

快照 [20221003](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NSXTEHQ237GJYUTFEGEGUB7B2O7MO6ZS/) 中更新了几个库。其中包括了 [Linux](https://www.kernel.org/) 的视频加速 [API](https://en.wikipedia.org/wiki/API)，[libva](https://01.org/linuxmedia/vaapi) 2.16.0 的更新；此次更新简化了一些映射表。另一个要更新的库是 [libcap](https://sites.google.com/site/fullycapable/) 2.66。这个库使 [Makefile](https://opensource.com/article/18/8/what-how-makefile) 更稳固地解决错误，并且包修复了一些文档拼写错误。[links](http://links.twibright.com/) 2.28 软件包在遵循来自 consent.google.com 的重定向时禁用了缓存。[yast2-network](https://github.com/yast/yast-network) 4.5.8 的更新修复了在没有网关的情况下编写 [NetworkManager](https://networkmanager.dev/) 配置时出现的问题。用于解析命令行参数的 C 库，[popt](https://github.com/rpm-software-management/popt) 1.19，修复了多个资源和内存泄漏。它还改进了随机数处理。快照中还有其他几个包需要更新，包括 [libbluray](https://www.videolan.org/developers/libbluray.html) 1.3.3、[tdb](https://tdb.samba.org/) 1.4.7、[python-cryptography](https://pypi.org/project/cryptography/) 38.0.1 等。

文本编辑器 [vim](https://www.vim.org/) 9.0.0626 在快照 [20221001](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/633SD5O3QRIGF5DBR5LBQFVMWOMTMXIG/) 中更新，并修复了 [CVE-2022-3352](https://cve.mitre.org/cgi-bin/cvename.cgi?name=2022-3352)。vim 还修复了使用 `CTRL-C` 退出时仍然可见的命令行窗口。[qemu](https://www.qemu.org/) 7.1.0 的更新切换了 QEMU Linux 用于在默认情况下模拟与主机相同的 CPU。根据变更日志，虽然有争议且棘手，但对于 Linux 用户来说应该没问题。qemu 还对 [arm](https://www.arm.com/) 进行了一些修复，并添加了对特权规范版本 1.12.0 的 RISC-V 支持。qemu 还为 [RISC-V](https://riscv.org/) 的向量扩展提供了优化和改进。php7 7.4.32 是一次安全更新。修复了两个 CVE；其中之一是存在潜在的拒绝服务问题的 [CVE-2022-31628](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-31628)，另一个是 [CVE-2022-31629](https://ubuntu.com/security/CVE-2022-31629)，它是一个使网络和同一站点的攻击者能够在受害者的浏览器中设置一个标准的不安全 cookie 的漏洞。DBus 接口 [fwupd](https://fwupd.org/) 上的超薄层（super-thin layer）更新到 1.7.10 版本。它有几个修复，包括检查无效的深度要求和对齐大于 4GB 的地址。

快照 [20220930](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/SJURUX4GO2TUPYCQNJZ273PHBQEF4WYN/) 更新了一些 [GNOME](https://www.gnome.org/) 软件包。[gnome-logs](https://gitlab.gnome.org/GNOME/gnome-logs) 和屏幕阅读器语音/盲文包 [orca](https://gitlab.gnome.org/GNOME/orca) 都从 beta 版本过渡到了 43 版本。后者防止了通知的双重呈现，并修复了 Nautilus 项目的 [GTK4](https://www.gtk.org/) 呈现。它还修复了导致使用错误声音的错误。gnome-logs 和 orca 都更新了翻译，而 [gnome-logs](https://gitlab.gnome.org/GNOME/gnome-logs) 更新了屏幕截图。[GNOME](https://www.gnome.org/) 的拼写检查包 [gspell](https://gitlab.gnome.org/GNOME/gspell) 1.12.0 有一些小的维护任务和简化更改。[pango](https://pango.gnome.org/) 更新至 1.50.10 版本，它是一个文本布局和渲染包，固定行高计算。[nodejs18](https://nodejs.org/en/) 更新至 18.10.0，共修复了三个 CVE，只有 [CVE-2022-35255](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-35255) 被认为大于中度威胁。本次快照还将 [yast2](https://github.com/yast/yast-yast2) 更新到 4.5.15 版本，可以更好地检测 [yast2-journal](https://github.com/yast/yast-journal)。[Linux Kernel](https://www.kernel.org/) 5.19.12 有多个适用于华硕的 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture)。快照中要更新的其他软件包是 [perl-Image-ExifTool](https://software.opensuse.org/package/perl-Image-ExifTool) 12.45 和 [xterm](https://invisible-island.net/xterm/) 373。

快照 [20220929](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XIGJUF36OHKJWNPYEPOHQHBLR2CMWMHF/) 中需要更新的软件包是 [adwaita-qt-src](https://github.com/FedoraQt/adwaita-qt) 1.4.2、[libqt5-qttranslations](https://www.qt.io/) 5.15.6 和 [v4l2loopback](https://github.com/umlaeute/v4l2loopback) 0.12.7。

------

原文：[QEMU, Vim update in Tumbleweed](https://news.opensuse.org/2022/10/07/qemu-vim-up-in-tw/)，作者：Douglas DeMaio