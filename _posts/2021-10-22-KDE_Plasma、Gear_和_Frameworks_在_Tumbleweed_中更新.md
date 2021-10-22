---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-10-22 21:20:00 +0800
layout: post
license: CC-BY-SA-3.0
title: KDE Plasma、Gear 和 Frameworks 在 Tumbleweed 中更新
image: /assets/posts/2021-10/2021_10_22_KDE_Plasma、Gear_和_Frameworks_在_Tumbleweed_中更新.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- KDE
---

上周制作了两个 openSUSE Tumbleweed 快照，并且都包含了许多针对 [KDE](https://kde.org/) 用户的更新。

[Plasma](https://kde.org/plasma-desktop/)、[Gear](https://kde.org/announcements/gear/21.08.2/) 和 [Frameworks](https://kde.org/announcements/frameworks/5/5.87.0/) 并不是快照中唯一需要更新的软件包。

快照 [20211019](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WCGWGALNS66I4U7J7FXXBHEXG7I5KYHO/) 提供了相当多的更新包。 远程访问包 [remmina](https://remmina.org/) 1.4.21 为 [GNOME 40](https://forty.gnome.org/) 运行环境提供更新，并与 [WebKit](https://webkit.org/) 2.32.0 及更老的版本向后兼容。可刷新的盲文显示包 [brltty](https://github.com/brltty/brltty) 更新到 6.4 版，使 sysusers.d 成为一个新包，同时还删除了一些旧的 [SUSE](https://www.suse.com/) [RPM](https://rpm.org/) 结构。PDF 渲染库 [poppler](https://poppler.freedesktop.org/) 21.10.0 修复了一些奇怪的飞溅图案的渲染问题，并添加了对设置自定义图章注释的支持。[Mesa](https://www.mesa3d.org/) 21.2.4 有几个修复程序，并为 [PowerPC](https://en.wikipedia.org/wiki/Ppc64) 和 [LLVM](https://llvm.org/) [i386](https://en.wikipedia.org/wiki/I386) 编译推出了补丁。在快照中获得重大更新的软件包是 [rdma-core 37.1](https://github.com/linux-rdma/rdma-core)，它专注于 Linux 内核驱动程序 / infiniband  子系统的用户空间组件； 这个新的主要版本修复了 [cmake](https://cmake.org/) 标志以更正 [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/) 的路径。KDE [Frameworks 5.87.0](https://kde.org/announcements/frameworks/5/5.87.0/) 在本次快照中更新了大量软件包。本次更新中包括在 Plasma 框架中删除已失效的 [Python](https://www.python.org/) 和 [Ruby](https://www.ruby-lang.org/en/) 脚本引擎。[Breeze Icons](https://github.com/KDE/breeze-icons) 5.87.0 添加了首选项图标的 22px 变体，并且相同版本的 UI 框架包 [Kirigami](https://kde.org/products/kirigami/) 在使用图层时修复了移动设备上的 [Breadcrumb Control](https://en.wikipedia.org/wiki/Breadcrumb_navigation)。

本周上一个快照 [20211016](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YCFSAFUQAB5L7OLSXYOYL6AKE2K7NC73/)，更新了 KDE Plasma 25 周年纪念版； [5.23.0 版本](https://kde.org/announcements/plasma/5/5.23.0/)采用了酷蓝色的默认配色方案，提供系统设置，让用户挑选强调色，使他们的系统突出个人风格。位于屏幕的左下角的 Plasma 的 Kickoff 启动器，有大量的重构代码，使其更快、更易于使用。Plasma 还进行了更改，让用户可以在本机 [Wayland](https://wayland.freedesktop.org/) 和 [XWayland](https://wayland.freedesktop.org/xserver.html) 应用程序之间拖放内容。KDE [21.08.2](https://kde.org/announcements/gear/21.08.2/) 的 [Gear](https://kde.org/announcements/gear/21.08.2/) 恢复了在应用程序 [Gwenview](https://apps.kde.org/gwenview/) 中使用键盘快捷键快速切换 “缩放以适合” 和 “实际大小” 的能力；视频编辑应用程序 [Kdenlive](https://kdenlive.org/en/) 为启动崩溃检测做了轻微的时间延迟。更新到 3.0.5 版的声音编辑应用程序 [Audacity](https://www.audacityteam.org/) 修复了一个错误；[gimp](https://www.gimp.org/) 2.10.28 通过在鼠标悬停上添加白色边框改进了深色主题。该图形编辑器还为图层中的选定文本设置了浅色背景，并删除了 3D 阴影框。 [git](https://github.com/git) 2.33.1 的更新版本修复了 `git pull` 和 `git rebase -r` 的各种极端情况和错误。[LibreOffice](https://www.libreoffice.org/) 7.2.2.2 更新了翻译，容器命令行实用程序包 [skopeo](https://github.com/containers/skopeo) 更新到版本 1.5.0，其中引入了 `--ignore` 选项，即使在特定镜像同步失败后，也允许同步命令（`sync`）继续同步。快照中要更新的其他软件包是 GNOME 的视频播放器 [totem](https://wiki.gnome.org/Apps/Videos) 3.38.2、[python-kiwi](https://pypi.org/project/kiwi/) 9.24.0 和小部件抽象库 [libyui](https://github.com/libyui/libyui) 的几个 4.2.17 版本。

------

原文：[KDE Plasma, Gear, Frameworks Update in Tumbleweed](https://news.opensuse.org/2021/10/22/kde-pgf-update-in-tw/)，作者：Douglas DeMaio