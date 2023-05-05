---
author: Hanjingxue Boling
date: 2023-05-05 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 更新了内核，开发工作寻求志愿者
image: /assets/posts/2023-05/audacity.png
categories:
- 更新通告
tags:
- Tumbleweed
- ALP
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在本周频繁且持续地更新快照，同时另一个开发项目也在寻求进展。

一封寄给 [Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)的开发者们，标题为 “[openSUSE ALP：征集志愿者](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NDFLLVILAIY5E5RFQ5FO4CCJR6LSL2LZ/)” 的邮件旨在获得贡献者的支持，以重建 openSUSE Leap 15 基于 [SUSE](https://www.suse.com/) 即将推出的商业化 ALP 发行版的后续版本（openSUSE Leap 16）。

虽然征集志愿者的帖子引起了人们的兴趣，但仍然有更多的事情等待完成。快照 [20230503](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FILOZFR2JOZ4RGY5HOMKEAGGBYGGGD34/) 发布了 [Linux Kernel](https://www.kernel.org/) 6.3。[kernel-source](https://www.kernel.org/) 从 6.2.12 到 6.3.1 的更新经过了大量测试，最终在此快照发布。内核对 [Btrfs](https://btrfs.wiki.kernel.org/) 的变更修复了一个未初始化的变量警告，并且在更新中添加了 6.3 版本的回归补丁。内核还有一个启用 [armv7hl](https://www.arm.com/) 和 [arm64](https://www.arm.com/) 配置的更新。[libvirt](https://libvirt.org/) 更新至 9.3 版本。该版本的改进包括更好地验证与 [qemu](https://www.qemu.org/) 相关的 `watchdog` 设备，并且 [arm](https://www.arm.com/) 和 [RISC-V](https://riscv.org/) 架构现在默认使用 virt 机器类型。此外还有几个错误修复；一个与 [UEFI](https://en.wikipedia.org/wiki/UEFI) 固件有关，另一个与涉及锁定内存的 [NVMe](https://nvmexpress.org/) 驱动程序有关。拼写检查库 [gspell](https://gitlab.gnome.org/GNOME/gspell) 1.12.1 仅改进了一些文档和翻译。[gtk3](https://www.gtk.org/) 3.24.37+70 的更新修复了崩溃。文本编辑器 vim 9.0.1504 修复了一个导致在 [GitHub](https://github.com/) 仓库中使用了一个超出范围的指针偏移的 [CVE-2023-2426](https://www.suse.com/security/cve/CVE-2023-2426.html)，不会再给用户带来麻烦。快照中要更新的其他一些软件包包括 [GNOME](https://www.gnome.org/) 的 [amtk](https://gitlab.gnome.org/Archive/amtk) 5.6.1、[gucharmap](https://wiki.gnome.org/Apps/Gucharmap) 15.0.4 等。

[Audacity](https://www.audacityteam.org/) 贡献者团队本周非常活跃，因为 Audacity 本周的第二次版本更新已在快照 [20230502](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IWGA533EAWB2ECKRJQLJOEWDMXGNJ63O/) 中发布。音频编辑器 Audacity 3.3.1 修复了尝试上传到 audio.com 时的计算错误。Audacity 修复了崩溃报告被禁用的问题，并修复了自定义采样率不可编辑的问题。文件管理器 [thunar](https://en.wikipedia.org/wiki/Thunar) 4.18.6 进行了一次回退，使得 [Xfce](https://www.xfce.org/) 用户将很高兴感受到 CPU 使用率降低。Thunar 还改进了撤消和重做的错误处理。用于处理 RDF 数据的轻量级 C 库的社区软件包 [serd](https://drobilla.net/software/serd.html)，已更新至版本 0.30.16 并解决了阅读文档时的内存消耗问题，并修复了[联机帮助页](https://manpages.opensuse.org/)的拼写错误。[yast2-trans](https://software.opensuse.org/package/yast2-trans) 更新了葡萄牙语和瑞典语翻译。快照中更新了一些其他软件包，包括 [docbook-xsl](https://github.com/docbook) 1.79.2.1、[libsoup](https://gitlab.gnome.org/GNOME/libsoup.git) 3.4.2、[guestfs-tools](https://www.libguestfs.org/) 1.50.1、[libupnp](https://pupnp.sourceforge.io/) 1.14.17 等。

快照 [20230501](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/L4MWL2AKM7P5CQL22324LOBE7KASDBI5/) 仅更新了一个软件包。用于加载和包装 [LV2 插件](https://lv2plug.in/)用户界面的轻量级 C 库 [suil](https://drobilla.net/software/suil.html) 更新至 0.10.18 版本，对 MacOS 进行了一些修复，还修复了较新工具链的问题，并删除了 [Qt 4](https://www.qt.io/) 支持和一些已失效的代码。

快照 [20230430](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TBGUMCGO7YCCGE72V436ABRCZVMCLIDZ/) 很大，但只更新了一些库。显示服务器 [Wayland](https://wayland.freedesktop.org/) 1.22.0 更新为首选缓冲区比例添加了显式事件。Wayland 还有一些新的便利功能和错误修复。3D 图形包 [Mesa](https://www.mesa3d.org/) 在 [23.0.3](https://docs.mesa3d.org/relnotes/23.0.3.html) 版本的几个方面进行了更改。Mesa 提供了一个无法在 [Steam](https://store.steampowered.com/) 上启动标题的覆盖修复程序，并且为 GNOME 修复了切片器的崩溃。[RADV](https://docs.mesa3d.org/drivers/radv.html) 的一些不正确设置也已修复；[yast2-country](https://github.com/yast/yast-country) 4.6.2 做了一些与俄罗斯键盘映射相关的配置模块清理。

快照 [20230429](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ACOKOIP6ZXCH5PVQXM7ONZMVEPWCDT2I/) 更新了音频包 [JACK](https://jackaudio.org/)。JACK 1.9.22 删除了用于示例客户端的依赖项并修复了使用 [Python](https://www.python.org/) 3.11+ 的构建。[libzypp](https://github.com/openSUSE/libzypp) 17.31.11 包修复了一个因存储了错误的凭据导致的无限循环，并且在配置中引入了超时。用于各种引导加载程序的 [Perl](https://www.perl.org/) 模块包 [perl-Bootloader](https://github.com/openSUSE/perl-bootloader) 发布了它的第一个主要版本。perl-Bootloader 从 0.941 更新到 1.0 并删除了遗留部分。spec 文件已移至 [git](https://github.com/git) 存储库，并进行了更改以区分 32 位和 64 位 UEFI 平台。快照中要更新的其他包是 [libxmlb](https://github.com/hughsie/libxmlb) 0.3.11、[makedumpfile](https://github.com/makedumpfile/makedumpfile) 1.7.3、[postfix 3.8.0](https://www.postfix.org/announcements/postfix-3.8.0.html) 和 [xdpyinfo](https://xorg.freedesktop.org/) 1.3.4。

于上周五发布的快照 [20230428](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DDGXNL3WWW3T2GYYVYNAXQYLPS2OKNS3/) 更新了 [audacity](https://www.audacityteam.org/) 3.3.0。audacity 现在支持 [ffmpeg](https://www.ffmpeg.org/) 6。[ModemManager](https://www.freedesktop.org/wiki/Software/ModemManager/) 更新至 1.20.6，增加了对 5G 调制解调器的额外支持，并修复了 LTE 的未经请求的消息。[gnome-shell](https://gitlab.gnome.org/GNOME/gnome-shell) 44.1 的更新修复了软件包的几个方面。其中包括修复蓝牙菜单中的占位符对齐、VPN 菜单中的可访问名称以及对浅色主题变体的各种改进。另一个要更新的 GNOME 包是它的窗口管理器 [mutter](https://gitlab.gnome.org/GNOME/mutter) 44.1。该更新修复了一些通过键盘调整窗口大小的问题，拖动窗口时的锚点位置问题，该软件包还修复了堵塞的泄漏问题。快照还更新了其他几个包。

------

原文：[Kernel Updates in Tumbleweed, Development Seeks Volunteers](https://news.opensuse.org/2023/05/04/kernel-up-in-tw-devs-seek-volunteers/)，作者：Douglas DeMaio