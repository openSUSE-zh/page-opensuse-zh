---
author: Hanjingxue Boling
date: 2023-03-03 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Mesa、Flatpak 和 Plasma 在 Tumbleweed 更新
image: /assets/posts/2023-03/flatpak.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 用户了解了 [x86-64-v3](https://en.wikipedia.org/wiki/X86-64) 的更改带来的[性能优化](https://suse.org.cn/%E6%9B%B4%E6%96%B0%E9%80%9A%E5%91%8A/2023/03/01/openSUSE-Tumbleweed-%E8%8E%B7%E5%BE%97%E5%8F%AF%E9%80%89%E7%9A%84-x86-64-v3-%E4%BC%98%E5%8C%96.html)，并收到了一些快照。

本周到达的一些软件更新包包括面向 [KDE](https://kde.org/) 用户、游戏玩家和开始 [Linux](https://www.kernel.org/) 之旅的人们的软件。

快照 [20230301](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/UTS5KSB3AFIZ5DEWLL5OBZCC22O4UTXT/) 发布了 3D 图形库 [Mesa](https://www.mesa3d.org/) 新的主要版本。Dylan Baker [宣布](https://lists.freedesktop.org/archives/mesa-dev/2023-February/225930.html) Mesa 23.0.0 的发布，他强调了社区对该版本的所有改进、修复和更改。Mesa 修复了一个主要的 [LTO](https://gcc.gnu.org/wiki/LinkTimeOptimization) 漏洞，并且该版本提供了多个 [Radeon](https://www.amd.com/en/graphics/radeon-rx-graphics) (RADV) 驱动程序和 [Zink](https://docs.mesa3d.org/drivers/zink.html) [Vulkan](https://www.vulkan.org/) 的修复程序。[AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/) 0.16.1 更新了文档并修复了绑定助手宏的一些行为。[Flatpak](https://flatpak.org/) 1.14.3 引入了将包装器的升级分为两个步骤的操作。如果一个应用程序在其覆盖或元数据中存在无效的语法，它还会在错误消息中引入文件名。涵盖 [Flatpak](https://flatpak.org/)、[AppImage](https://appimage.org/)、[Snap](https://snapcraft.io/) 的 [Linux 应用峰会](https://linuxappsummit.org/)将于下个月在捷克共和国的布尔诺举行，这是一次听取在应用程序领域致力于跨发行版解决方案的开发人员的声音的盛会。本次快照带来了 [sudo](https://www.sudo.ws/) 的第二次更新。sudo 1.9.13p2 修复了快照 [20230225](hhttps://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/V4M4FZV525CVEKQFYSBNOR7HTYFJ3VXA/) 中出现的 `--enable-static-sudoers` 选项。[apparmor](https://apparmor.net/) 3.1.3 的更新增加了对更多 audit.log 格式的支持，修复了解析器错误并修复了 [boo#1065388](https://bugzilla.opensuse.org/show_bug.cgi?id=1065388)，这些问题已在五年内得到解决。

快照 [20230228](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CBM3EDLN2BU7ENY7VWC54S42EO6SOHPW/) 将 [curl](https://curl.se/) 更新至 7.88.1，处理了一些 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。Daniel Stenberg 制作了一个关于 7.88.1 版本的[错误修复内容的视频](https://youtu.be/COhD51bgjPY)。关于 curl 7.88 版本的[视频](https://youtu.be/9zff4hWOxPE)还介绍了一些 CVE；例如导致 malloc bomb 并使 curl 最终消耗大量分配的堆内存的 [CVE-2023-23916](https://curl.se/docs/CVE-2023-23916.html)。他的视频中还介绍了 [CVE-2023-23914](https://curl.se/docs/CVE-2023-23914.html) 和 [CVE-2023-23915](https://curl.se/docs/CVE-2023-23915.html)。[kernel-source](https://www.kernel.org/) 已更新至 6.2.0，它刷新并更新了配置，例如禁用不适合 v2 [cgroups](https://en.wikipedia.org/wiki/Cgroups) 内核功能的错误设计机制。维护程序组的实用程序包 [make](https://www.gnu.org/software/make/) 已更新到 4.4.1 版本，其中有一个与 makefile 中标志的可见性相关的向后不兼容警告。新版的 make 提供了一些新功能，比如能够使用一组略有不同的规则来覆盖内置规则，以使用并行构建，这在以前是不可能与存档一起使用的。文本编辑器 [vim](https://www.vim.org/) 更新至 9.0.1357，修复了几个问题，例如使用未设置的对象变量时发生崩溃，以及光标位于错误位置且虚拟文本以[可变宽度编码](https://en.wikipedia.org/wiki/Variable-width_encoding)字符结尾等问题。用于诊断、调试和指导用户空间的包 [strace](https://strace.io/) 已更新到 6.2，并为来自 `tty` 和子系统的重叠 `ioctl` 命令实现了冲突解决。

快照 [20230227](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/PDKLJOX7IKDFVZ6BCSKW4WV3SNJWVNN4/) 的文件更改修复了 [mlterm](https://github.com/arakiken/mlterm) 的一些崩溃问题，并添加了 [CVE-2022-24130](https://www.suse.com/security/cve/CVE-2022-24130.html) 补丁。

快照 [20230225](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/V4M4FZV525CVEKQFYSBNOR7HTYFJ3VXA/) 将图像编辑器 [ImageMagick](https://imagemagick.org/index.php) 更新至 7.1.0.62。ImageMagick 有一些安全更新，消除了编译器警告，启用了 [BC5Compression](https://github.com/ImageMagick/ImageMagick/commit/6ef17a6e9539bf66cdf73788e127348878547682)。网络配置工具包 [NetworkManager](https://networkmanager.dev/) 1.42.2 的更新添加了一个控制是否删除自动生成的本地路由规则的设置。NetworkManager 还修复了设置 [Open vSwitch](https://www.openvswitch.org/) 接口的 MAC 地址时的[竞争条件](https://en.wikipedia.org/wiki/Race_condition)。[glib2](https://wiki.gnome.org/Projects/GLib) 2.74.6 更新了翻译并修复了一些错误。[mariadb](https://mariadb.org/) 10.10.3 修复了一个 [InnoDB](https://dev.mysql.com/doc/refman/8.0/en/innodb-storage-engine.html) 崩溃恢复的问题。mariadb 还删除了一些 [InnoDB 缓冲池](https://mariadb.com/kb/en/innodb-buffer-pool/)负载限制和[更改缓冲区](https://dev.mysql.com/doc/refman/5.7/en/innodb-change-buffer.html)损坏时的关闭挂起。本次快照发布了设备内存启用项目 [ndctl](https://github.com/pmem/ndctl) 新的主要版本；ndctl 76 有一个新的命令来监视 [CXL 事件](https://github.com/pmem/ndctl/tree/main/cxl)。快照中更新的其他软件包包括 [sudo](https://www.sudo.ws/) 1.9.13p1、[yast2-security](https://github.com/yast/yast-security) 4.5.6 和 [zstd](https://facebook.github.io/zstd/) 1.5.4 等。

毫无疑问，快照 [20230224](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/BWJIY6VU5VI5GWIJHZHBTHKFOGIYRPGB/) 是 Plasma 快照。快照中要更新的所有软件包都与 [KDE](https://kde.org/) 相关。[Plasma 5.27.1](https://kde.org/announcements/plasma/5/5.27.1/) 更新主要用于错误修复，其中一些与本周晚些时候发布的软件包有关。软件中心 [Discover](https://invent.kde.org/plasma/discover) 有一些与 [Flatpak](https://flatpak.org/) 和 [AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/) 相关的修复。快照中有大量的 [KWin](https://userbase.kde.org/KWin) 更改和一些与 [Wayland](https://wayland.freedesktop.org/) 相关的更改。屏幕管理包 [libkscreen](https://invent.kde.org/plasma/libkscreen) 的潜在崩溃已通过新的设置配置得到解决。电量消耗管理包 [powerdevil](https://invent.kde.org/plasma/powerdevil) 修复了[充电限制](https://invent.kde.org/plasma/powerdevil/-/commit/eed8ef2f06f29b1c8983b3af950349b7d603bb7f)的漏洞。

在接下来的两周内，不会有提供本周快照的更新资讯的 Tumbleweed 博客。社区鼓励 Tumbleweed 用户订阅 [Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)，发行经理会在此发布关于滚动快照的更新信息，并强调一些即将发行的软件包。

------

原文：[Mesa, Flatpak, Plasma Update in Tumbleweed](https://news.opensuse.org/2023/03/03/mesa-flatpak-plasma-up-in-tw/)，作者：Douglas DeMaio