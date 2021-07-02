---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-07-02 00:25:00 +0800
layout: post
license: CC-BY-SA-3.0
title: VLC、Plasma、PipeWire 在 Tumbleweed 中更新
image: /assets/posts/2021-07/plasma.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- PipeWire
- VLC
- Plasma
---

本周到目前为止已经发布了三个 openSUSE Tumbleweed 快照。

有两个较大的快照和一个较小的，带来了 [ClamAV](https://www.clamav.net/) 更新的快照。

揭开本周序幕的是快照 [20210625](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6YTZRZGT6W677MTN3XIEVEPXBZ5APYWW/)，它为 3D 图形 [Mesa](https://www.mesa3d.org/) 和 Mesa-drivers 软件包提供了更新；更新的 21.1.3 版本主要提供了 AMD 的变更，而且该版本不再需要检查环境变量的 [GStreamer](https://gstreamer.freedesktop.org/) Video Acceleration API 插件。[ImageMagick](https://imagemagick.org/index.php) 更新到 7.1.0.0 版本，[修复了 SVG 解析器](https://github.com/ImageMagick/ImageMagick/issues/3818) 会陷入无限循环的问题。[Mozilla Firefox](https://www.mozilla.org/) 89.0.2 版的更新修复了 Linux 上 [WebRender](https://github.com/servo/webrender) 的性能和稳定性问题，还修复了 WebRender 偶尔出现的挂起。[VLC](https://www.videolan.org/vlc/index.html) 3.0.16 修复了 MP4 掉线、广播流的一些倒退问题，并提供了设置方面的改进。Linux 审计框架的一个新的主要版本，[audit](https://github.com/linux-audit/audit-userspace)，从 2.8.5 更新到 3.0.2 ，并更新了一些 [syscall](https://en.wikipedia.org/wiki/System_call) 参数的解释。[PipeWire](https://pipewire.org/) 更新至 0.3.30+55 版，其中包括更新了一些高级 Linux 声音架构（[ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture)）规则。[nodejs16](https://nodejs.org/en/) 16.4.0 的更新升级了依赖关系并稳定了类：[AsyncLocalStorage](https://nodejs.org/api/async_context.html#async_context_class_asynclocalstorage)。在快照中更新的其他软件包有 [GNOME](https://www.gnome.org/) 的视频播放器 [totem](https://wiki.gnome.org/Apps/Videos) 3.38.1、[Flatpak](https://flatpak.org/) 1.11.2、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.15 和 [bind](https://bind9.readthedocs.io/) 9.16.18。

在快照 [20210626](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3RPNR2RLYQ2EX3PL3LAQQU6HYT6FVH3U/) 中只有两个软件包被更新。ClamAV 0.103.3 修复了扫描性能问题，并试图改进关于正在使用的版本的指标。快照中还有 libqt5-qttranslations 软件包的更新翻译，其中包括 [Qt 5.12](https://www.qt.io/qt-5-12) 的中文简化语言更新。

[Poppler](https://poppler.freedesktop.org/) 在快照 [20210628](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ZKXNJ2SJ364PVV3RFYKSJJVQBOU6LFBU/) 中更新到了 21.06.1 版本，并修复了注释中一些扩展 latin1 字符的渲染；它还增加了一个 API，以便在 [xref](https://linux.die.net/man/3/xref) 被重建时获得通知。[KDE Plasma 5.22.2.1](https://kde.org/announcements/plasma/5/5.22.2) 是一个错误修复更新，它在 [KWin](https://invent.kde.org/plasma/kwin) 中实现了 [Wayland](https://wayland.freedesktop.org/) 的活动窗口规则，而且 Discover 现在正确地通知了用户关于 Flatpaks 的更新。快照还更新了一些 [Qt 5](https://www.qt.io/) 库，如 ibqt5-qtbase、libqt5-qtconnectivity、libqt5-qtquickcontrols、libqt5-qtscript 等。在更新 [glu](https://cgit.freedesktop.org/mesa/glu/) 到 9.0.2 版本时提交了一个补丁；这个 Mesa OpenGL Utility 库也有一些额外的错误修正。 [sqlite](https://www.sqlite.org/index.html) 的 3.36.0 版本进行了输出方面的改进，`memdb` VFS 现在允许同一进程中的多个数据库连接共享同一个内存数据库，只要数据库名称以 `/` 开头。压缩包 [zchunk](https://github.com/zchunk/zchunk) 更新到了 1.1.16 版本，并修复了用字典压缩时的一个重大错误。

------

原文：[VLC, Plasma, PipeWire Update in Tumbleweed](https://news.opensuse.org/2021/07/01/vlc-plasma-pipewire-update-in-tw/)，作者：Douglas DeMaio