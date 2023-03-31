---
author: Hanjingxue Boling
date: 2023-03-31 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: GNOME、curl 和 LLVM 在 Tumbleweed 中更新
image: /assets/posts/2023-03/gnome44.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在本周发布了多个快照，既有包含大量软件包的快照，也有仅更新了单一软件的快照。

新版 [GNOME](https://www.gnome.org/)、[编译器](https://en.wikipedia.org/wiki/Clang)工具和音乐播放器在本周连同其他大量软件包一同发布。

快照 [20230329](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2QFR7IMCASW4LNCEF7JUIZTJ4CIFZA33/) 更新了 [Mesa](https://www.mesa3d.org/) 23.0.1，修复了其主要版本中的一些错误。[Flatpak](https://flatpak.org/) 和类似项目的沙盒工获得更新；[bubblewrap](https://github.com/containers/bubblewrap) 0.8.0 添加了一个 `--disable-userns` 选项来防止沙箱创建自己的嵌套用户命名空间。更新后的 [libostree](https://ostreedev.github.io/ostree/) 2023.2 修复了最近的 [GLibs](https://gitlab.gnome.org/GNOME/glib) 警告。[fwupd-efi](https://github.com/fwupd/fwupd-efi) 1.3 对 [arm](https://www.arm.com/) 设备进行了一些修复，并修复了一个回归问题。

快照 [20230328](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EW5UJ4MQEPOLDOAEHG2J45CYGBEPSBWB/) 更新了一些软件包，其中包括 [XFS](https://en.wikipedia.org/wiki/XFS) 实用程序 [xfsprogs](https://fossies.org/linux/misc/xfsprogs-6.2.0.tar.xz/)。xfsprogs 6.2.0 新增一个可以检索已挂载的文件系统的 [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) 的命令，并修复了损坏的实时空闲块单元转换。编译器和工具链 [LLVM](https://llvm.org/) 获得大版本更新，带来了新的 [Clang 编译器](https://en.wikipedia.org/wiki/Clang)工具。其中一个工具用于通过 Clang [OpenMP](https://www.openmp.org/) 驱动程序检测本地可用的 GPU。另一个独立工具通过使用 `clangd` 中的现有功能来确定使用哪些标头。文件同步工具 [unison](https://www.cis.upenn.edu/~bcpierce/unison/) 2.53.2 改进了更新传播（update propagation）的停止；提供用户空间程序将文件系统导出到 Linux 内核的接口的 [fuse3](https://github.com/libfuse/libfuse) 更新至 3.14.1，移除了 3.14 中引入的可用标志，不再可用的标志可能会在下个版本重新引入。本次快照中还有其他一些软件包获得更新。

快照 [20230327](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/X5EZO2SASCBW53PYQADNPQCEIA4R2RYW/) 只更新了 [transactional-update](https://github.com/openSUSE/transactional-update) 4.1.5；该软件包用于以事务方式为 [Linux](https://www.kernel.org/) 操作系统提供更新；本次更新增加了对文件片段配置的支持。

前一天的快照并没有大多少。快照 [20230326](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/UEAUMD2PONE2QWUFKQRL5CQWB4B2FYXP/) 只更新了两个包。于快照 [20230324](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MNKJ7F7HLABRFAPOOO47YRW6CVTYEKRJ/) 发布的，[GNOME](https://www.gnome.org/) 用户的音乐应用程序 [gnome-music](https://wiki.gnome.org/Apps/Music) 在本次快照中由候选发布版本更新为 44.0 正式版本；gnome-music 44.0 对 appdata 做了一个小改动。GNOME 项目另一个收到更新的软件包是 [gobject-introspection](https://gitlab.gnome.org/GNOME/gobject-introspection) 1.76.1。这个包更新了文档和句柄 [null](https://en.wikipedia.org/wiki/Null_(SQL)) 默认值。

快照 [20230325](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/5THP6RXOPFNOAH3KPMFR6SNUFIKTE3MU/) 更新了 [xwayland](https://wayland.freedesktop.org/) 23.1.0。xwayland 此次主要版本更新解决了快照 20230325 中的一些回归问题；它还改进了将 Xwayland 用作嵌套 [Xserver](https://www.x.org/wiki/) 的 `rootful` 模式。[php](https://www.php.net/) 8.1.17 的更新修复了一些不正确的检查条件和[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.87 进行了一些清理并传播了 snapper 安装助手的失败。本次快照还更新了两个与夏令时相关的时区包。埃及现在再次使用夏令时，摩洛哥将时钟从 4 月 30 日提前到 4 月 23 日。[KDE](https://kde.org/) 音乐播放器 [amarok](https://invent.kde.org/multimedia/amarok) 获得一次小版本更新，修复了一个崩溃并增加了对 [ffmpeg](https://www.ffmpeg.org/) 5.0 的支持。[samba](https://www.samba.org/) 4.18.0 更新提供了服务器消息块性能改进和新的 [wbinfo](https://www.samba.org/samba/docs/current/man-html/wbinfo.1.html) `--change-secret-at` 选项。此外，还有其他一些软件包也获得更新。

快照 [20230324](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MNKJ7F7HLABRFAPOOO47YRW6CVTYEKRJ/) 更新了许多东西。令人兴奋的，代号为 Kuala Lumpur 的 [GNOME 44](https://release.gnome.org/44/) 在此快照中发布。用户可以使用基于 [GTK4](https://www.gtk.org/)，新的网格视图。不过有些应用可能还在用以前的版本。先前版本中引入的 Device Security（设备安全性）获得了一个新的状态视图，如“检查失败”、“检查通过”或“受保护”。开发者重新设计了无障碍设置，并对进行声音设置了一些改进。快照中的另一个主要版本更新是 curl 8.0.1。[curl](https://curl.se/) 修复了一个崩溃问题，添加了 [Fortran](https://fortran-lang.org/en/compilers/) 绑定，并解决了多个 [CEV](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。其中之一是 [CVE-2023-27538](https://curl.se/docs/CVE-2023-27538.html)，它复用了以前创建的连接，即使 [ssh](https://en.wikipedia.org/wiki/Secure_Shell) 相关选项已更改；这种复用本应被禁止。[glib2](https://wiki.gnome.org/Projects/GLib) 更新至 2.76.1，对 GFileInfo 属性的处理进行了多项回归。[ImageMagick](https://imagemagick.org/index.php) 7.1.1.3 的更新恢复了由于文件冲突和 [AVX2](https://en.wikipedia.org/wiki/Advanced_Vector_Extensions) 版本构建辅助而导致的一些更改，并为 x86-64-v3 启用了 [hwcaps](https://build.opensuse.org/package/show/openSUSE:Factory/patterns-glibc-hwcaps) 库；因此如果您有 x86-64-v3 硬件，请尝试使用 `zypper inr`。[LibreOffice](https://www.libreoffice.org/) 恢复了一些补丁并进行了 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 文本整形修复。快照中更新的其他几个软件包包括 [GTK3](https://www.gtk.org/) 3.24.37、[gvfs](https://gitlab.gnome.org/GNOME/gvfs) 1.50.4、[sqlite](https://www.sqlite.org/index.html) 3.41.2、[webkit2gtk3](https://webkitgtk.org/) 2.40.0 等等。

------

原文：[GNOME, curl, LLVM Update in Tumbleweed](https://news.opensuse.org/2023/03/31/gnome-curl-llvm-up-in-tw/)，作者：Douglas DeMaio
