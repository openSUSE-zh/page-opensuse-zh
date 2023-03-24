---
author: Hanjingxue Boling
date: 2023-03-24 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: GCC、EFI 启动管理器在 Tumbleweed 中更新
image: /assets/posts/2023-03/gcc.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在本周发布的快照中包含了大量安全补丁、错误修复和新功能。

openSUSE 使用了新的编译器（[GCC 13](https://gcc.gnu.org/)），用户使用 `zypper dup` 更新系统时会收到一次全量更新。

快照 [20230319](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/HROWLRAA5ZYK2S6IJ4GMSMPFHCSCNFKG/) 是一个全量重构快照，提供了一个 GCC 13.0.1+git 更新；该更新 [rebase 了一个补丁](https://www.freecodecamp.org/news/an-introduction-to-git-merge-and-rebase-what-they-are-and-how-to-use-them-131b863785f/)并启用了一个[互斥锁（mutex）](https://en.wikipedia.org/wiki/Mutual_exclusion)链接。[flatpak](https://flatpak.org/) 更新至 1.14.4，更新了翻译并解决了两个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)：[CVE-2023-28101](https://www.suse.com/security/cve/CVE-2023-28101.html) 和特定于虚拟控制台的 [CVE-2023-28100](https://www.suse.com/security/cve/CVE-2023-28100.html)；建议用户使用 GNOME Software 等图形用户界面，而不是 [xterm](https://invisible-island.net/xterm/)、[gnome-terminal](https://gitlab.gnome.org/GNOME/gnome-terminal) 或 [Konsole](https://konsole.kde.org/) 等图形化终端模拟器。用于单指令、多数据的 C++ 库，[highway](https://github.com/google/highway/) 1.0.4 的更新提供了更快的 KV128 排序。该软件包还更新了 [1.0 草案](https://github.com/riscv/riscv-v-spec/tree/master)的 [RISC-V](https://riscv.org/) [Vector Extension Intrinsics](https://github.com/riscv-non-isa/rvv-intrinsic-doc)。其他要更新的包是 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.86 以及几个 [libqt5](https://software.opensuse.org/search?baseproject=ALL&q=+libqt5) 包。

快照 [20230318](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MTYJEQWQW2ZBRUA4VEQN3MR65XTGQFCN/) 仅更新了两个包。[fcitx5-gtk](https://github.com/fcitx/fcitx5-gtk) 更新到 5.0.22 版本。这个 [gtk-im-module](https://docs.gtk.org/gtk4/property.Settings.gtk-im-module.html) 和基于 [glib](https://wiki.gnome.org/Projects/GLib) 的 [dbus](https://www.freedesktop.org/wiki/Software/dbus/) 客户端库实现了 notify-focus-out 信号并更改 [GtkIMContext.reset](https://docs.gtk.org/gtk4/vfunc.IMContext.reset.html) 以始终提交预编辑状态。另一个要更新的包是用于创建 [MusicBrainz](https://news.opensuse.org/2023/03/23/gcc-efibm-up-in-tw/MusicBrainz) [DiscID](https://musicbrainz.org/doc/Disc_ID) 的库：[libdiscid](https://musicbrainz.org/doc/libdiscid)；这是一个很棒的开放音乐百科全书，可以收集音乐元数据并将其提供给公众。libdiscid 0.6.4 修复了编译器错误并要求 [CMake](https://cmake.org/cmake/help/v2.8.12/cmake.html) 2.8.12 作为最低版本。

快照 [20230317](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DEECKCBCBIR7NIC5BPTVZ4RROQRJ6MLR/) 将 DNS 协议 [bind](https://bind9.readthedocs.io/) 更新至 9.18.13。该更新提供了多项新功能，例如提高在成功传输 RPZ 区域后应用的命名[响应策略区域 (RPZ)](https://dnsrpz.info/) 更新的响应能力。[Plasma 5.27.3](https://kde.org/announcements/plasma/5/5.27.3/) 更新中发布的错误修复可以让 [KDE](https://kde.org/) 爱好者感到满意。一些突出的修复包括[在映射中添加表情符号选择器](https://invent.kde.org/plasma/drkonqi/-/commit/105fac2d53ca03dae451922acce42e1f3cb04623)、[从历史记录加载时删除重复项](https://invent.kde.org/plasma/plasma-workspace/-/commit/b34c60956fe858f123dcdde7ee6322b986a795f6)以及 [PowerDevil](https://invent.kde.org/plasma/powerdevil) 试图进行一些更改以避免浪费宝贵的电量。[gtk4](https://www.gtk.org/) 4.10.1 的更新带来了大量的变化。除了删除上游已修复的补丁外，新版本还修复了[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)、一些滚动问题并改进了跨平台小部件工具包的搜索性能。[systemd](https://freedesktop.org/wiki/Software/systemd/) 更新到 253.1 版本，添加了一些补丁，其中一个直到开发者修复 [dracut](https://dracut.wiki.kernel.org/index.php/Main_Page) 中的 [LVM 引导故障](https://github.com/dracutdevs/dracut/issues/2211)前，是一种临时解决方法。快照更新了其他几个包，包括 [pipewire](https://pipewire.org/) 0.3.67、[icewm](https://ice-wm.org/) 3.3.2 和许多 [qt6](https://www.qt.io/) 包。

快照 [20230316](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XHQEMYM3INQKNSOHOVB6OKXDBW3ERUEV/) 共有三个主要版本更新，其中之一是可扩展固件接口（EFI）启动管理器 [efibootmgr](https://github.com/rhboot/efibootmgr)。efibootmgr 18 恢复了激活错误消息并修复了帮助消息。该软件包还添加了一个用于插入新条目位置的选项，并修复了简单的运行示例。第二个主要版本更新是针对 [efivar](https://github.com/rhboot/efivar) 38 更新中的 EFE 变量。此软件包修复了 [nvme](https://en.wikipedia.org/wiki/NVM_Express)-subsystem 设备的解析，添加了一些新工具并正确检查 `mmap` 返回错误。第三个主要版本更新是 [BitTorrent](https://www.bittorrent.com/) 客户端 [transmission](https://transmissionbt.com/) 4.0.2。新版本解决了一些潜在的崩溃问题并修复了 [IPv6](https://en.wikipedia.org/wiki/IPv6) 跟踪器 URL 的显示。重构的 Web 客户端现在支持移动端设备使用。[Linux Kernel](https://www.kernel.org/) 是此快照中唯一不是主要版本更新的更新。[kernel-source](https://www.kernel.org/) 6.2.6 恢复了一部分 wifi 配置并删除了一些 [Realtek](https://www.realtek.com/en/) 无线驱动程序。

------

原文：[GCC, EFI Boot Manager Update in Tumbleweed](https://news.opensuse.org/2023/03/23/gcc-efibm-up-in-tw/)，作者：Douglas DeMaio
