---
author: Hanjingxue Boling
date: 2021-12-10 19:25:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Ritchie-CLI 正式上线，Mesa 和 bin 在 Tumbleweed 中更新
image: /assets/posts/2021-12/pentobi.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周发布了大量的 openSUSE [Tumbleweed](https://get.opensuse.org/tumbleweed/) 快照。

虽然滚动发布中断了其连续的每日快照，但 Tumbleweed 仍坚持发布大量快照； 本周到目前为止，总共发布了五个。

最新的快照是 [20211207](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GIKEWKMNPRLTEUTACDIR5JS3KJUMMK3V/)，更新了一个游戏玩家会喜欢的包。随着 [pentobi](https://github.com/enz/pentobi) 19.1 的发布，棋盘游戏 [Blokus](https://en.wikipedia.org/wiki/Blokus) 的计算机对手获得了更新。本次错误修复更新为某些情况下退出期间发生的崩溃提供了解决方法。该包还避免了由不推荐使用的信号处理程序[语法](https://en.wikipedia.org/wiki/Syntax_(programming_languages))引起的 [Qt 6](https://www.qt.io/product/qt6) 警告。

快照 [20211206](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/OJWEEMNO22XL6VAG3J3HYK7K2ZMU7NCV/) 将 3D 图形包 [Mesa](https://www.mesa3d.org/) 更新到版本 21.3.1。更新主要提供 [AMD](https://www.amd.com/)、[Intel](https://www.intel.com/) 和 [Zink](https://docs.mesa3d.org/drivers/zink.html) 修复。该软件包还添加了一个解决方法来修复第一人称射击视频游戏 [Metro Exodus](https://www.metrothegame.com/news/metro-exodus-linux-and-mac-versions-out-now/) 的段错误，该游戏于 2021 年 4 月宣布可在 [Linux](https://www.kernel.org/) 上游玩。域名系统协议 [bin](https://gitlab.isc.org/isc-projects/bind9) 9.16.23 的高度可移植实现通过禁用可能允许攻击者显着降低解析器性能的 lame 服务器缓存来修复 [CVE-2021-25219](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-25219)。[blog](https://software.opensuse.org/package/blog) 2.26 更新中删除了一些补丁。字体渲染包 [freetype2](https://freetype.org/) 2.11.1 改进了 cmake 支持并将最新的实验性 [COLRv1](https://github.com/googlefonts/colr-gradients-spec) [应用程序接口](https://en.wikipedia.org/wiki/API)更新为 [OpenType 1.9 规范版本](https://docs.microsoft.com/en-us/typography/opentype/spec/)。另一个用于 pdf 的渲染包 [poppler](https://poppler.freedesktop.org/)，更新到 21.12.0 版本，增加了一些 API；一个用于读取/保存到文件描述符；一个用于添加图像; 还有一个用于验证签名。[libvirt 7.10.0](https://libvirt.org/news.html#v7-10-0-2021-12-01) 更新包含了许多[增量改进和错误修复](https://libvirt.org/news.html#v7-10-0-2021-12-01)；新功能是一个二进制文件，可帮助用户按照在 `libvirtd.conf` 配置的 `tls_allowed_dn_list` 选项中预定的方式从证书文件中找出[了解标识名](https://ldapwiki.com/wiki/Distinguished%20Names)的格式。Linux 内核驱动程序和 infiniband 子系统包 [rdma-core 38.0](https://github.com/linux-rdma/rdma-core/releases/tag/v38.0) 的用户空间组件是快照中唯一的主要版本更新；它更新了内核头文件 [stddef.h](https://en.wikibooks.org/wiki/C_Programming/stddef.h)。快照中要更新的其他软件包包括 [gc](https://www.hboehm.info/gc/) 8.2.0、[kImageAnnotator](https://github.com/ksnip/kImageAnnotator) 0.5.3 和 [strace](https://strace.io/) 5.15 等。

快照 [20211205](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JI6WQG32KGTXMNUPVJSDLBWQO2SWZRCN/) 几乎全是关于[编译器](https://gcc.gnu.org/)和[内核](https://www.kernel.org/)的，除了另一个包；解析库包 [mxml](https://www.msweet.org/mxml/) 3.3 修复了 `mxmlLoad` 函数中潜在的内存泄漏，并为库添加了更多错误处理。[gcc11](https://gcc.gnu.org/) 11.2.1 的小更新启用了 [i586](https://en.wikipedia.org/wiki/Pentium_(original)) 微处理器上的交叉编译器，并删除了 [i386](https://en.wikipedia.org/wiki/I386) 目标的交叉编译器。[kernel-firmware](https://www.kernel.org/) 20211123 更新了英特尔蓝牙的固件文件；[kernel-source](https://www.kernel.org/) 5.15.6 修复了 [ALSA 片上系统](https://www.kernel.org/doc/html/latest/sound/soc/overview.html)错误的编解码器、一些 [arm](https://www.arm.com/) 固件的发现和一些网络方面，如修复与 [Marvell](https://www.marvell.com/) 硬件相关的桥端口操作。

快照 [20211203](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DDW2AUJR5UAJUWCTF3LMV7KOMRZNUFN7/) 中的大部分更新都与 [YaST](https://yast.opensuse.org/) 相关。[yast2-storage-ng](https://github.com/yast/yast-storage-ng) 4.4.20 的更新修复了单元测试的递归并复制了 [bcache](https://en.wikipedia.org/wiki/Bcache) 问题的生成，以避免为每个测试设置架构。[yast2-installation](https://github.com/yast/yast-installation) 4.4.26 软件包在只有一个产品可用时添加了产品许可证的显示，但不会在升级期间显示产品的选择器。虚拟化包 [xen](https://xenproject.org/) 4.16.0 修复了[可信平台模块](https://en.wikipedia.org/wiki/Trusted_Platform_Module)，为 TPM 2.0 支持做准备。本体快照提供了文本整形库 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 的主要版本更新；3.1.1 版本改进了成形器中的 [Unicode 14](http://www.unicode.org/versions/Unicode14.0.0/) 属性，并提供了 [COLRv1](https://github.com/googlefonts/colr-gradients-spec) 表子集支持以及各种其他子集修复。其他要更新的软件包是 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.63、[scout](https://software.opensuse.org/package/scout) 0.2.6、[rubygem-cheetah 1.0.0](https://rubygems.org/gems/cheetah/versions/1.0.0) 和 [rubygem-yast-rake 0.2.43](https://rubygems.org/gems/yast-rake)。

从本周开始，[KDE](https://kde.org/) 用户可以在快照 [20211202](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/H3WLUEVUPXVF4IZCEFXKIV2FO2TPXHWF/) 中更新到 [Plasma 5.23.4](https://kde.org/announcements/plasma/5/5.23.4/)。Plasma 的图形化软件管理器 [Discover](https://invent.kde.org/plasma/discover) 对处理 [Flatpak](https://flatpak.org/) 和其他软件做了一些调整。Plasma 的功耗包 [PowerDevil](https://invent.kde.org/plasma/powerdevil) 修复了一个错误，即关键电池水平的通知行为与低电池水平的通知行为不同。快照中更新的其他软件包是 [sssd](https://sssd.io/) 2.6.1，它加强了 [systemd](https://freedesktop.org/wiki/Software/systemd/) 服务，以及 [automake](https://www.gnu.org/software/automake/) 1.16.5，它删除了几个补丁并使输出更具可重现性。

经过大量工作，[Ritchie-CLI](https://software.opensuse.org/package/ritchie-cli) 2.11.3 在 openSUSE Tumbleweed 软件源中正式可用。[Ritchie-CLI](https://software.opensuse.org/package/ritchie-cli) 于 11 月 11 日在 Tumbleweed 中正式发布，但之前的博客中并未涉及。热烈祝贺整个 [ZUP 团队](https://opensource.zup.com.br/)！

Ritchie 是由 [ZUP 公司](https://opensource.zup.com.br/)开发的开源工具，允许用户安全地创建、存储和共享自动化。它优化了重复命令，让用户拥有更多的编程自主权。Ritchie [发行说明](https://docs.ritchiecli.io/v2.11/reference/release-notes/)提供了添加节奏列表公式命令（`Rhythm List Formulas`）、启用时运行最新公式版本的强制更新选项、支持 Ritchie-CLI 国际化的库、使用缓存的存储库新版本检测以及许多其他功能。[Alessandro de Oliveira Faria](https://en.opensuse.org/User:Cabelo) 正在努力为 [Factory](https://en.opensuse.org/Portal:Factory) 添加一个新包，欢迎来自 openSUSE 社区的帮助。该[软件包](https://software.opensuse.org/package/ritchie-cli)也在 Alessandro 的 [Open Build Service](https://openbuildservice.org/) 主页项目中，供对测试感兴趣的人使用；还有可用的[云测试](https://aws.amazon.com/marketplace/pp/B086VDH9KM)。更多信息可以在包的[发行说明](https://docs.ritchiecli.io/v2.11/reference/release-notes/)中找到。

------

原文：[Ritchie-CLI Becomes Official, Mesa, bind Update in Tumbleweed](https://news.opensuse.org/2021/12/10/ritchie-becomes-official-mesa-bind-update-in-tw/)，作者：Douglas DeMaio