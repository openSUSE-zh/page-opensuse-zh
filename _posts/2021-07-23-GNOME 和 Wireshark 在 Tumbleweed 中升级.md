---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-07-23 23:00:00 +0800
layout: post
license: CC-BY-SA-3.0
title: GNOME 和 Wireshark 在 Tumbleweed 中升级
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- GNOME
- Wireshark
---

自上周五以来，已经发布了五个 openSUSE Tumbleweed 快照。

GNOME 40、btrfs、Mesa、Wireshark 和其他几个软件包的更新在本周的滚动更新中发布。

最新一次发布到 [openSUSE-Factory 邮件列表](https://lists.opensuse.org/)的快照是 [20210721](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/RLAJDGDG2WGJLIQIZT5YNV4QKVBDS5S6/) 。该快照包含了对 [GNOME 40](https://forty.gnome.org/) 和管理 [btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 文件系统的用户空间工具的更新；[btrfsprogs](https://github.com/kdave/btrfs-progs) 5.13 改进了文档，做了一些修正，并增加了对 Linux kernel 5.14 的准备工作。另一方面，GNOME 40 有一系列的更新，集中在更新翻译和错误修复上。[gnome-maps](https://wiki.gnome.org/Apps/Maps) 的 40.3 版本软件包修复了一个回归， gnome-software 的 40.3 版本软件包修复了在点击详情页上的网站按钮时有时发生的崩溃。在 gnome-terminal 3.40.3 中修复的另一个崩溃影响了参考架构源的加载，导致它失败了。autoyast2 4.4.14 版本软件包现在可以根据 [bsc#1188357](https://bugzilla.suse.com/show_bug.cgi?id=1188357) 中列出的细节将文件复制到一个正确的位置。被称为 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 的文本锐化包更新到了 2.8.2 版本，并对子集器进行了各种修复和改进。其他在快照中值得注意的更新的包有 yast2-users 4.4.4，文本渲染包 [pango](https://pango.gnome.org/) 1.48.7，系统调用跟踪器 [strace](https://strace.io/) 5.13 和其他许多包。

在快照 [20210720](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4KWRJF25XFOIWSVSNTR4YGF5R3BIMUIX/) 中只有三个软件包被更新。[cpupower](https://software.opensuse.org/package/cpupower) 5.14 包括一个上游补丁，并为[英特尔](https://www.intel.com/)硬件提供了一个速度选择修改。另外两个需要更新的软件包是 ibus-table-others 1.3.12，它更新了一些功能键，以及 openblas_pthreads 0.3.16 库，它有一些架构修复和针对 [RISC-V](https://riscv.org/) 的改进。

在快照 [20210718](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6TMUHK3DXJO4M66Y4SD2TBG3TSPI72OK/) 中更新了五个软件包。[Wireshark](https://www.wireshark.org/) 3.4.7 修复了一个分布式网络协议解析器崩溃和一个[常见漏洞和暴露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。用于管理设备的 [mdevctl](https://github.com/mdevctl/mdevctl) 程序更新至0.81版，并修复了 json 文件中的一个定义 aspect 。视频编解码器库 [libaom 3.1.1](https://guix.gnu.org/packages/libaom-3.1.1/) 中修复了一个崩溃以及一个初始化错误。[libslirp](https://gitlab.freedesktop.org/slirp/libslirp) 4.6.0 和 polkit-default-privs 也都被更新。

[Linux Kernel](https://www.kernel.org/) 5.13.2 在快照 [20210717](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/N2RYH7OGGOZE2MZSMGKDBCLLQR3X4UWL/) 中有一些蓝牙和[高级 Linux 声音架构](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture)的修复。[Mesa](https://www.mesa3d.org/) 在快照中版本提升到 21.1.5 ，这是一个小的错误修复版本。被更新的 [yast2](https://yast.opensuse.org/) 软件包集中在安全和用户界面方面。[火狐浏览器](https://www.mozilla.org/)进行了 CVE 排查，并在其全新的 [Firefox 90](https://www.mozilla.org/en-US/firefox/90.0/releasenotes/) 中修复了大约九个漏洞；其中一个是内存安全漏洞。用于 Flash 插件的 [GTK2](https://www.gtk.org/) 支持在该浏览器的更新中被删除。Mozilla 在 Tumbleweed 快照中也对 [Thunderbird](https://www.thunderbird.net/) 进行了更新。在该版本中仅修复了四个 CVE，还修复了影响 Firefox 90 和 Firefox ESR（延长支持版）78.12 候选版本的内存安全漏洞。

本周以快照 [20210716](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ZTS7MWV7E6EZ4V7AV26TYVF5G7BCOQGM/) 开始，其中有超过少量的 Python 软件包索引更新；python-setuptools 从 44.1.1 更新到 57.0.0。在新的主要版本中加入了一个补丁，以消除一个简单函数的依赖周期。根据更新日志，新版本的 setuptools 中没有 python2 的支持。以太网设备管理工具 [ethtool](https://git.kernel.org/pub/scm/network/ethtool/ethtool.git) 5.13 增加了一些上游功能，如模块的 netlink handler 和 [xwayland](https://wayland.freedesktop.org/xserver.html) 21.1.2。

根据[第 29 周的审查](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JNUOS7H5WAOR4TJMC7MAQK3XB42KC5JZ/)，[systemd](https://freedesktop.org/wiki/Software/systemd/) 249 和 [rpmlint](https://github.com/rpm-software-management/rpmlint) 2.0 已经进入测试阶段，很快就会发布。

------

原文：[GNOME, Wireshark update in Tumbleweed](https://news.opensuse.org/2021/07/23/gnome-wireshark-update-in-tw/)，作者：Douglas DeMaio

<!--在上面写上原文来源与作者-->

