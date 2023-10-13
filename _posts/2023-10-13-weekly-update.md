---
author: Poplar at twilight
date: 2023-10-13 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: GPG、RubyGems 和 Kernel 在 Tumbleweed 中更新
image: /assets/posts/2023-10/robo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 本周的快照有各种软件包更新。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

[Mesa] 和 [ImageMagick] 都属于 Tumbleweed 本周和上周同时更新的软件包之中。

[Mesa]: https://www.mesa3d.org/
[ImageMagick]: https://imagemagick.org/index.php

最新的快照 [20231011] 发布了 [gpg2] 2.4.3，带来了一些重大变更。gpg2 将内部可执行文件安装在 `/usr/libexec` 目录而不是 `/usr/lib64` 中。内部可执行文件包括守护进程 `keyboxd`、`scdaemon`、用户身份验证器 `gpg-auth` 和 `gpg-pair-tool` 等。新版的 [GPG][gpg2] 提供了自 2.4.1 版本以来已在上游删除的 systemd-user 文件。视频加速包 [libva] 2.20.0 增强了 AV1 编码，改进了 [DRM] 阵列处理以防止超出范围的问题，并增加了对裁剪和部分解码 JPEG 的支持。通过语音或盲文提供图形应用程序的无障碍使用的 [GNOME] 的屏幕阅读器 [Orca] 更新至 45.1 版本。Orca 纠正了书签支持中的回退问题，并修复了导致 Orca 在不应该将自定义小部件显示为图像时出现的错误。[yast2-trans] 更新了德语、巴西葡萄牙语、印度尼西亚语和加泰罗尼亚语翻译。快照中还更新了其他几个软件包。

[20231011]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TUGIZCJGVD73ADGVIE3RBOG7KGNEN4H3/
[gpg2]: https://gnupg.org/
[libva]: https://github.com/intel/libva
[DRM]: https://en.wikipedia.org/wiki/Direct_Rendering_Manager
[GNOME]: https://www.gnome.org/
[Orca]: https://wiki.gnome.org/Projects/Orca
[yast2-trans]: https://software.opensuse.org/package/yast2-trans

快照 [20231010] 将 [NetworkManager-applet] 更新到 1.34.0 版本；该软件包修复了导入 [WireGuard] 连接时发生的崩溃，并简化了依赖项和翻译。[rubygem-rubocop] 1.56.3 的重大更新解决了各种 cop 规则的误报和漏报等问题，增强了 `rubocop` 在代码分析中的准确性和可靠性。该软件包还优化了 [Ruby] 代码风格检查器的性能和功能。[Xfce] 面板的剪贴板管理器 [xfce4-clipman-plugin] 的更新在快照中更新到 1.6.5 版本。该软件包进行了一些更改，例如隐藏 [Wayland] 的某些设置，通过 `set-text` 操作添加 [D-Bus] 调用支持，使剪贴板管理器成为 Wayland 和 X11 实现的接口，并修复了一个[内存泄漏]。[惠普]图像和打印包 [hplip 3.23.8] 的更新包括了对多种新型打印机的支持，其中包括 HP Color LaserJet Pro MFP 4301 系列、4302 系列、4303 系列等型号以及各种其他 HP DeskJet 打印机。快照中还更新了其他一些 [RubyGems] 包。

[20231010]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ADYWRIMKBI6BBKSFO2ZAJCFC5CD7XKAB/
[NetworkManager-applet]: https://gitlab.gnome.org/GNOME/network-manager-applet
[WireGuard]: https://www.wireguard.com/
[rubygem-rubocop]: https://github.com/rubocop/rubocop
[Ruby]: https://www.ruby-lang.org/en/
[Xfce]: https://www.xfce.org/
[xfce4-clipman-plugin]: https://gitlab.xfce.org/panel-plugins/xfce4-clipman-plugin
[Wayland]: https://wayland.freedesktop.org/
[D-Bus]: https://en.wikipedia.org/wiki/D-Bus
[hplip 3.23.8]: https://developers.hp.com/hp-linux-imaging-and-printing/gethplip
[RubyGems]: https://rubygems.org/
[内存泄漏]: https://en.wikipedia.org/wiki/Memory_leak
[惠普]: https://developers.hp.com/

快照 [20231008] 发布了 [Linux Kernel][kernel-source] 6.5.6。[kernel-source] 修复了与 [NFS] 错误处理、`O_DIRECT` flag 调度和锁定问题相关的问题。[内核][kernel-source]还解决了媒体驱动程序、netfs、ext4、netfilter、嵌入式系统的 [ALSA] 等方面的问题。[NetworkManager] 1.44.2 改进了 [IPv4] 地址冲突检测 (ACD) 日志记录。NetworkManager 解决了在禁用 [IPv6] 方法的情况下生成连接的相关问题，增强了文档，现在使用显式发布标签。[llvm17][LLVM] 17.0.2 进行了一些更改，以确保 [ABI] 和 [API] 与 [LLVM] 17 的兼容性。[nodejs20] 20.8.0 的更新提高了流性能，并对虚拟机 API 中的内存管理进行了重新设计，因为它涉及 `importModuleDynamically` 功能。nodejs20 还包括了对 `test_runner` 的更新，它现在在运行命令中接受 `testOnly`。[LibreOffice] 7.6.2.1 的更新解决了文档布局问题、图像渲染、兼容性等问题。快照中还更新了其他几个软件包，其中包括 [gnome-control-center] 45.0+34，它解决了在没有设备的情况下编辑连接等问题，并解决了固件安全页面中的崩溃问题。

[NFS]: https://en.wikipedia.org/wiki/Network_File_System
[20231008]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/BMSW26OKYZJOO5KWVFCTGE4EXG2JMXY2/
[kernel-source]: https://www.kernel.org/
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[NetworkManager]: https://networkmanager.dev/
[IPv4]: https://en.wikipedia.org/wiki/IPv4
[IPv6]: https://en.wikipedia.org/wiki/IPv6
[LLVM]: https://llvm.org/
[ABI]: https://en.wikipedia.org/wiki/Application_binary_interface
[API]: https://en.wikipedia.org/wiki/API
[LibreOffice]: https://www.libreoffice.org/
[nodejs20]: https://nodejs.org/en/
[gnome-control-center]: https://gitlab.gnome.org/GNOME/gnome-control-center

快照 [20231006] 更新了图像编辑器 [ImageMagick] 7.1.1.19。ImageMagick 处理了一个 [CVE]，没有提供 [CVE-2023-5341] 的描述，只是说它具有中等严重性。ImageMagick 还消除了一些警告和编译器问题，并解决了与 BMP 文件大小检查和 XMP 配置文件验证相关的问题。[GNOME] 字符映射表 [gucharmap] 15.1.1 为更新 [Unicode] 版本 15.1.0 做出了更改，并在 metainfo 中添加了可启动信息。该项目还删除了一个已失效的邮件列表。此快照还将基本实用程序包 [shadow] 更新至 4.14.1 版本。此更新主要解决构建系统问题，以解决链接器问题，特别是在 Gentoo 中注意到的问题。此外，Alejandro Colomar 已作为新的稳定分支维护者添加到 `Shadow.keyring`。快照还更新了一些 [PyPI] 包、[libXrandr] 和 [sg3_utils] 等。

[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[20231006]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/Y5N3KJNKBBVPPHM7WTQM7C46MQJK5KPT/
[ImageMagick]: https://imagemagick.org/index.php
[CVE-2023-5341]: https://www.suse.com/security/cve/CVE-2023-5341.html
[gucharmap]: https://wiki.gnome.org/Apps/Gucharmap
[Unicode]: https://home.unicode.org/
[shadow]: https://github.com/shadow-maint/shadow
[PyPI]: https://pypi.org/
[libXrandr]: https://xorg.freedesktop.org/wiki/
[sg3_utils]: https://linux.die.net/man/8/sg3_utils

上周末博客文章更新后发布的快照是 [20231005]。该快照带来了 [Mesa] 23.2.1，它实现了 [OpenGL] 4.6 和 [Vulkan] 1.3 API，并带来了一些新的扩展功能。终端仿真器 [xterm] 385 更新了基于 [Unicode] 15.1.0 的表并增强了配置脚本。[icewm] 3.4.3 添加了在仅图标任务按钮中显示窗口标题的首选项，添加了对在打开的窗口之间切换的选项卡的支持，并为 `icewmbg` 引入了 `-f` 和 `--fork` 选项以将其与终端分离。快照中还更新了其他软件包，包括一些 [Xfce] 软件包和 [libvirt] 9.8.0，它通过使用 `nbdkit` 作为网络输入/输出的后端来增强对网络磁盘的支持。

[20231005]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/7ROIDCX6OLIC6DYNW27KFJPZAJCU5ZT2/
[OpenGL]: https://www.opengl.org//
[Vulkan]: https://www.vulkan.org/
[xterm]: https://invisible-island.net/xterm/
[icewm]: https://ice-wm.org/
[libvirt]: https://libvirt.org/

------

原文：[GPG, RubyGems, Kernel update in Tumbleweed](https://news.opensuse.org/2023/10/13/gpg-rubygems-kernel-up-in-tw/)，作者：Douglas DeMaio
