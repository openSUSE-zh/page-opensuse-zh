---
author: Hanjingxue Boling
date: 2022-04-08 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 更新了 GCC 默认版本
image: /assets/posts/2022-04/gcc.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE Tumbleweed 在本周发布的其中一个快照中更新了 [GCC](https://gcc.gnu.org/) 的默认版本。

快照 [20220405](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EXZXDQHCQEIVLC2RSBDGLTKBW5THRN2Y/) 将 GCC 的默认版本升级到 [GCC 12](https://gcc.gnu.org/)。

在更新 GCC 后出现的最新快照是 [20220406](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JO5OD74UXQCEXCW6IBSOHXEDASYEQQHZ/)。此快照更新了五个软件包。其中一个更新的软件包是 [autoconf](https://www.gnu.org/software/autoconf/) 2.71。autoconf 最新的配置脚本改进了与 C 变体前端编译器 [clang](https://clang.llvm.org/) 的兼容性，并且通过 automake 重新生成配置的规则恢复了兼容性。Linux SCSI 目标框架 [tgt](https://github.com/fujita/tgt) 更新到 1.0.82 版本并添加了对侦听随机端口的支持。快照中要更新的其他软件包是 [xf86-video-dummy](https://gitlab.freedesktop.org/xorg/driver/xf86-video-dummy) 0.4.0 和 [yast2-slp-server](https://github.com/yast/yast-slp-server) 4.5.0。

使 [GCC 12](https://gcc.gnu.org/) 成为 tumbleweed 的默认编译器的快照 [20220405](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EXZXDQHCQEIVLC2RSBDGLTKBW5THRN2Y/) 更新了多个软件包。新的包继承自 GCC 11 的 GCC 12.0.1 更新，编译器提供了 [glibc](https://www.gnu.org/software/libc/) 交叉的冲突，因为只能同时安装目标的一个 GCC 版本；libgccjit 也做了同样的事情。[gedit](https://wiki.gnome.org/Apps/Gedit) 42.0 更新中更新了翻译。[dracut](https://dracut.wiki.kernel.org/index.php/Main_Page) 的新版本不再使用 network-[wicked](https://github.com/openSUSE/wicked) 作为默认网络处理程序。文本整形引擎 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 4.2.0 的更新修复了上下文查找的处理。[libreoffice](https://wiki.documentfoundation.org/Releases/7.3.2/RC2) 7.3.2.2 修复了阿拉伯语文本中的单词选择错误，并修复了在各种情况和输入下发生的四个崩溃。快照中其他值得注意的更新是 [libvirt](https://libvirt.org/) 8.2.0、[aws-cli](https://aws.amazon.com/cli/) 1.22.87 和文件同步器 [unison](https://www.cis.upenn.edu/~bcpierce/unison/) 2.52.0。

快照 [20220404](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/N6CXYMVZP2ZCY65ERT2F3AZSPN46ZQHW/) 为 [Xfce](https://www.xfce.org/) 用户提供了文件管理器 [Thunar](https://en.wikipedia.org/wiki/Thunar) 的新版本；thunar 4.16.11 版本修复了一些重新加载视图，防止了格式错误的书签导致的崩溃和翻译更新。在 [xclock](https://www.x.org/archive/X11R6.8.1/doc/xclock.1.html) 1.1.0 更新中，时钟指针的渲染更加流畅。打印包 [cups-filters](https://github.com/OpenPrinting/cups-filters) 1.28.12 修复了一些分辨率和图像大小。快照中要更新的其他软件包包括 [xwayland](https://wayland.freedesktop.org/) 22.1.1、[ceph](https://ceph.io/) 16.2.7、[yast2-installation](https://github.com/yast/yast-installation) 4.4.51 等。

快照 [20220403](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ATW7Z3ET6DYTO6RF2SEQ7ZRSJUGTHM4E/) 更新了 [kdump](https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html) 1.0.2，新增对 [Zstandard](https://github.com/facebook/zstd) 压缩算法的支持；kdump 还为 [Linux 内核](https://www.kernel.org/)的[故障转储](https://en.wikipedia.org/wiki/Core_dump)功能删除了一些补丁。[gnome-logs](https://gitlab.gnome.org/GNOME/gnome-logs) 从 3.36.0 更新至 42.0，添加了一些新功能；其中包括直接打开日记文件和几个键盘快捷键来帮助覆盖。gnome-logs 的更新还改进了窗口大小。[libsoup](https://gitlab.gnome.org/GNOME/libsoup.git) 3.0.6 的更新包含各种 HTTP/2 修复、[meson](https://github.com/mesonbuild/meson) 构建改进并修复了 [Visual Studio](https://visualstudio.microsoft.com/) 的构建问题。快照中还更新了其他一些软件包。

本月的第二个快照 [20220402](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VWR54ASN6Z5OGTSTP7SLSUTMURKCGZWR/) 有几个软件包更新。[ImageMagick](https://imagemagick.org/index.php) 7.1.0.28 的小更新修复了几个缓冲区溢出；3D 图形库 [Mesa](https://www.mesa3d.org/) 22.0.1 修复了一些维护脚本和 [panfrost](https://gitlab.freedesktop.org/panfrost) 驱动程序。[firewalld](https://firewalld.org/) 1.1.1 更新添加了一些关于容器主机集成的文档，并为在容器内使用 [dbus](https://www.freedesktop.org/wiki/Software/dbus/) 进行了构建修复。[openvpn](https://openvpn.net/) 2.5.6 更新解决了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；[该漏洞](https://www.suse.com/security/cve/CVE-2022-0547.html)可能允许在外部身份验证插件中绕过身份验证。[PipeWire](https://pipewire.org/) 0.3.49 更新改进了[蓝牙高级音频分发配置文件](https://en.wikipedia.org/wiki/List_of_Bluetooth_profiles)流并减少了某些设备上的卡顿。快照还更新了其他几个软件包。

[Konqi](https://kde.org/) 粉丝会在快照 20220402 中收到 Plasma 的 [5.24.4](https://kde.org/announcements/plasma/5/5.24.4/) 版本更新；该更新主要为 [KWin](https://invent.kde.org/plasma/kwin) 和 [Plasma Workspace](https://invent.kde.org/plasma/plasma-workspace) 提供了修复。[KWin](https://invent.kde.org/plasma/kwin) 的更新修复了当剪辑与模糊区域相交时窗口闪烁的问题；Plasma Workspace 修复了锁屏界面的一些奇怪行为。快照中要更新的其他软件包包括 [ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.3.20220319、[expat](https://libexpat.github.io/) 2.4.8、[sqlite3](https://www.sqlite.org/index.html) 3.38.2 等。

------

原文：[Tumbleweed Gets New Default GCC](https://news.opensuse.org/2022/04/08/tw-gets-new-default-gcc/)，作者：Douglas DeMaio