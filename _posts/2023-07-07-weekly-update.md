---
author: Poplar at twilight
date: 2023-07-07 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 通过更新增强了 GNOME、MariaDB
image: /assets/posts/2023-07/gnome.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周的五个 [openSUSE] [Tumbleweed] 快照为 [GNOME]、[MariaDB]、[transactional-update] 等关键软件包带来了重要更新。

[opensuse]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[GNOME]: https://www.gnome.org/
[MariaDB]: https://mariadb.org/
[transactional-update]: https://github.com/openSUSE/transactional-update

openSUSE Tumbleweed 展示了其致力于为用户提供最新的增强功能和错误修复，同时确保用户受益于改进的功能和更好的性能的承诺。

快照 [20230705] 将 [MariaDB] 更新至新的主要版本，为用户提供了新功能；MariaDB 11.0.2 版本提供了默认启用的新选项，并提高了优化器对哈希连接操作的估计准确性。MariaDB 还修复了一些优化器崩溃问题，并解决了某些 [InnoDB] 监视器的意外禁用问题，这些监视器现在默认情况下应处于启用状态。[yast2-trans] 更新了印度尼西亚语和芬兰语翻译。[yast2-network] 4.6.5 修复了[编写无线通道时的拼写错误][typo]。[python-argcomplete] 3.1.1 的更新改进了用户安装的逻辑并增强了与 [Python] 3.7 的兼容性。

[20230705]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/HKYV6LE3TURPCFI52TAQRDP32OJ44J25/
[InnoDB]: https://en.wikipedia.org/wiki/InnoDB
[yast2-trans]: https://software.opensuse.org/package/yast2-trans
[yast2-network]: https://github.com/yast/yast-network
[typo]: https://github.com/yast/yast-network/blob/master/src/lib/y2network/network_manager/connection_config_writers/wireless.rb#L36
[python-argcomplete]: https://pypi.org/project/argcomplete/
[python]: https://www.python.org/

快照 [20230704] 仅更新了几个软件包。[openSUSE] 的硬件检测工具 [hwinfo] 更新至 22.3 版本，解决了 libsamba 的链接问题并确保功能更流畅。[kdump] 1.9.3 的更新修复了校准功能以及将丢失 SSH、LFTP 或主机密钥视为致命错误。[xfce4-settings] 4.18.3 修复了与显示模式检测和保护 GSettings 使用相关的问题；同时还改进了打开布局选择对话框时严重错误的处理。[kexec-tools] 更新至 2.0.26.0 版本，引入了一个升级，其中 `perl-Bootloader` 将 kexec-tools 替换为 `kexec-bootloader`，使其过时。

[20230704]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FNQTXNJWRTDLYITC4R4SOK4EQKNVL5FG/
[hwinfo]: https://github.com/openSUSE/hwinfo
[kdump]: https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html
[xfce4-settings]: https://docs.xfce.org/xfce/xfce4-settings/start
[kexec-tools]: https://mirrors.edge.kernel.org/pub/linux/utils/kernel/kexec/

快照 [20230703] 中更新的大多数软件包都是 [RubyGems]；这些更新倾向于修复 [CVE]。快照为可能导致重定向页面上的跨网站脚本（XSS）负载的 [CVE-2023-28362] 提供了补丁。[Imath] 3.1.9 修复了[堆缓冲区溢出]漏洞，增加了对密集加权平均压缩的支持，并修复了[栈缓冲区溢出]问题。游戏玩家会喜欢 [SDL2] 2.28.1 更新，因为它为罗技 Chillstream 控制器添加了 Linux 控制器映射。该更新还引入了对 [Nintendo] Online Famicom 控制器的支持以及对第三方 Nintendo Switch 控制器的支持。键盘实用程序包 [kbd] 2.6.1 进行了一些小的修复和改进，其中包括一些针对当代 French Macs 的修复和改进。[perl-Image-ExifTool] 12.64 版本添加了新的 Sony LensType，包括对 Garmin 低分辨率视频 (GLV) 文件的支持，改进了法语翻译，并引入了一些 [API] 更改。

[20230703]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XJP6WBSAYWTZ6K6GW56LMGBO3HKFEN7E/
[RubyGems]: https://rubygems.org/
[cve]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[CVE-2023-28362]: https://rubyonrails.org/2023/6/30/this-week-in-rails
[Imath]: https://openexr.com/
[堆缓冲区溢出]: https://en.wikipedia.org/wiki/Heap_overflow
[SDL2]: https://www.libsdl.org/
[栈缓冲区溢出]: https://en.wikipedia.org/wiki/Stack_buffer_overflow
[Nintendo]: https://www.nintendo.com/
[kbd]: http://kbd-project.org/
[perl-Image-ExifTool]: https://metacpan.org/pod/exiftool
[api]: https://en.wikipedia.org/wiki/API

本月的第一个快照 [20230701] 同时也是本周最大的快照。此快照将 [ImageMagick] 更新到 7.1.1.12 版本，其中包括修复堆缓冲区溢出漏洞（[CVE-2023-3428]）的补丁。[gnome-software] 更新到 44.3 版本，修复了优化 [Flatpak] 应用程序时发生的崩溃以及在应用程序更新失败后恢复状态的问题。[gnome-control-center] 44.3 更新了翻译。[GNOME] 的个人管理应用程序 [evolution] 3.48.4 修复了与 `EMailSignatureScriptDialog` 和 `EMeetingListStore` 组件相关的问题，并解决了在 Flatpak 下选择脚本文件的困难等问题。[GStreamer] 更新至 1.22.4，修复了多个组件中的安全问题并解决了一些映射问题；还修复了内存泄漏并提供了稳定性改进。[NetworkManager] 1.42.8 的更新修复了网络过滤规则和 [IPv6] 共享，并添加了对点对点协议 2.5.0 的支持。快照中要更新的其他软件包有 [webkit2gtk3] 2.40.3、[libzypp] 17.31.15、[gvfs] 1.50.5 等。

[20230701]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/PDR6MRKIVYA5EWRO2ERCZVYIHJ3WGWBH/
[ImageMagick]: https://imagemagick.org/index.php
[CVE-2023-3428]: https://www.suse.com/security/cve/CVE-2023-3428.html
[gnome-software]: https://gitlab.gnome.org/GNOME/gnome-software
[Flatpak]: https://flatpak.org/
[gnome-control-center]: https://gitlab.gnome.org/GNOME/gnome-control-center
[evolution]: https://wiki.gnome.org/Apps/Evolution
[GStreamer]: https://gstreamer.freedesktop.org/
[NetworkManager]: https://networkmanager.dev/
[IPv6]: https://en.wikipedia.org/wiki/IPv6
[webkit2gtk3]: https://webkitgtk.org/
[libzypp]: https://github.com/openSUSE/libzypp
[gvfs]: https://gitlab.gnome.org/GNOME/gvfs

本周第一个发布的快照是快照 [20230629]，包含了各种软件包的更新。值得注意的变化包括 [SDL2] 本周的第一个软件包更新版本 2.28.0；这引入了窗口表面和渲染 API 的新函数。显示管理器 [sddm] 0.20.0 为 [Qt6][qt] 提供了初步支持，这将打破依赖 [Qt5][qt] 的主题。[MicroOS] 和其他具有原子更新的项目的关键软件包，[transactional-update] 已移至 4.3.0 版本；此更新改进了调用 [mkdumprd] 的自定义实用程序和脚本，并且添加了对 [libmount] 2.39 的支持，同时支持库的 `LIBMOUNT_DEBUG` 变量以获取额外的输出。快照中还更新了其他一些库。

[20230629]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XMAXHQYTVMVFXCWJZZYSTRCULMI7PBPH/
[sddm]: https://github.com/sddm/sddm
[qt]: https://www.qt.io/
[microos]: https://get.opensuse.org/microos/
[mkdumprd]: https://github.com/openSUSE/kdump/blob/master/init/mkdumprd
[libmount]: https://github.com/util-linux/util-linux

------

原文：[Tumbleweed Boosts GNOME, MariaDB with Updates](https://news.opensuse.org/2023/07/07/tw-boosts-gnome-mariadb-w-up/)，作者：Douglas DeMaio
