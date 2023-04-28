---
author: Hanjingxue Boling
date: 2023-04-28 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: KDE Gear、Grep 和 GTK4 在 Tumbleweed 中更新
image: /assets/posts/2023-04/gear.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在本周释出的每个快照都有相当数量的软件包。

Tumbleweed 更新了 [GNOME](https://www.gnome.org/) 和 [KDE](https://kde.org/) 的应用程序，几个 [KDE Qt5 补丁集合包](https://community.kde.org/Qt5PatchCollection)和命令行实用程序 [grep](https://www.gnu.org/software/grep/)。

最新的快照 [20230426](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/H3G7QEVVHK46FPCMC5OPEG5PCXBVTQPF/) 仅更新了几个包。[firewalld](https://firewalld.org/) 1.3.2 中的更改很小，只有测试功能，其中两个与 [iptables](http://git.netfilter.org/iptables/) 相关。[selinux-policy](https://build.opensuse.org/package/show/security:SELinux/selinux-policy) 更新至 20230425 版本，这是该软件包本周的第二次更新。selinux-policy 为 [wtmpdb](https://build.opensuse.org/package/show/openSUSE:Factory/wtmpdb) 添加了一个策略，它将提供更准确的启动时间计算。快照中要更新的另外两个软件包是 [389-ds](https://en.wikipedia.org/wiki/389_Directory_Server) 2.4.0 和 [numactl](https://github.com/numactl/numactl) 2.0.16.21。

快照 [20230425](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FDGE2TTG45XHQFIFT2YHW57B6BQQO2OY/) 将 Facebook 的快速压缩算法包 [zstd](https://facebook.github.io/zstd/) 更新到 1.5.5 版本。zstd 修复了一个罕见的影响高压缩模式的损坏错误，并且在请求写入写保护目录时不再崩溃。[glib2](https://wiki.gnome.org/Projects/GLib) 2.76.2 更新了 Unicode 15 的 Unicode 规范化测试，并且修复了不常见设置的各种构建失败。container-selinux 更新到 2.211.0 版本；它允许守护进程将 dbus 消息发送到容器类型 [spc_t](https://danwalsh.livejournal.com/74754.html?)。[gnome-user-docs](https://gitlab.gnome.org/GNOME/gnome-user-docs) 44.1 更新了翻译，改进了 [GNOME](https://www.gnome.org/) 的帮助。GNOME 的图像查看器 [eog](https://wiki.gnome.org/Apps/EyeOfGnome) 也更新到 44.1；这个次要版本更新了翻译并修复了在动态 webp 图像之间切换时的[段错误](https://en.wikipedia.org/wiki/Segmentation_fault)。

快照 [20230424](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/SZ3XOF5GUP3S7CLHCTI4GIPJCH6PWB52/) 更新了 20 多个 [KDE Qt5 补丁集合包](https://community.kde.org/Qt5PatchCollection)，但 [KDE Gear 23.04.0](https://kde.org/announcements/gear/23.04.0/) 的更新是巨大的，它带来了几个新软件。[Tokodon](https://apps.kde.org/tokodon/) 将联合式社交媒体平台 Mastodon 带到了用户的指尖。这个应用程序让用户可以阅读、发布和留言，新的功能是在回复时可以看到以前的信息。用户还可以使用它向关注者发送民意调查。多亏了播放器 [AudioTube](https://apps.kde.org/audiotube/)，YouTube 现在可以在桌面上看到了。AudioTube 重新设计视觉和图标。视频编辑器 [Kdenlive](https://kdenlive.org/en/) 添加了一些新功能；你现在可以从曲目中选择多个剪辑并将它们组合在一起；Kdenlive 将把该组视为一个单独的序列。还有其他几项更改，因此请阅读[发行公告](https://kde.org/announcements/gear/23.04.0/)获得更多详情。GNOME 照片管理器 [shotwell](https://gitlab.gnome.org/GNOME/shotwell) 更新至 0.32.0，增加了对 JPEG XL 的支持。如果启用了调试，它还修复了生成视频缩略图的问题。[GTK4](https://www.gtk.org/) 的更新修复了文件选择器中文件加载缓慢的问题，并修复了定位回归。[gtk4](https://www.gtk.org/) 4.10.3 附带的其他修复是修复与 [Wayland](https://wayland.freedesktop.org/) 相关的应用程序崩溃，以及在文件选择器中按住 Ctrl 键选择多个文件的问题。快照中更新了其他几个软件包，包括 [yast2-trans](https://software.opensuse.org/package/yast2-trans)、[coreutils 9.3](https://www.gnu.org/software/coreutils/manual/coreutils.html)、[gnome-remote-desktop](https://gitlab.gnome.org/GNOME/gnome-remote-desktop) 44.1 等。

快照 [20230422](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MH7RC4XX2WTH2VLGWUHH2MYVPHMZEDCS/) 更新了 [GNOME](https://www.gnome.org/)。[gnome-software](https://gitlab.gnome.org/GNOME/gnome-software) 和 [gnome-control-center](https://gitlab.gnome.org/GNOME/gnome-control-center) 更新到 44.1 版本。gnome-software 提供了固件状态更新修复和与 PackageKit 应用程序相关的参考信息修复；gnome-control-center 提供了一些与网络共享和连接相关的修复。[Linux 内核](https://www.kernel.org/)更新至 6.2.12，为 nvme-pci 存储更改带来了一些访问权限，并通过 [Intel Integrated Sensor Hub](https://docs.kernel.org/hid/intel-ish-hid.html) 修复了内核崩溃。内核还为 Lenovo 和 Acer Aspire 机器添加了一些内容。[Mozilla Firefox](https://www.mozilla.org/) 更新到 112.0.1，修复了更新后 cookie 日期似乎设置在遥远的未来的错误，这可能导致 cookie 被无意中清除。[NetworkManager](https://networkmanager.dev/) 更新至 1.42.6 版本。该软件包改进了 wifi 热点功能、wifi 漫游策略设置并修复了与 [DHCP](https://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol) 更新相关的断言失败。域名系统软件 [bind](https://bind9.readthedocs.io/) 更新至 9.18.14，修复了在目录区域处理期间导致命名崩溃的几个错误。它还删除了几个功能。快照中要更新的其他软件包是 [gpgme](https://gnupg.org/software/gpgme/index.html) 1.20.0、[libsoup](https://gitlab.gnome.org/GNOME/libsoup.git) 3.4.1、[evolution](https://wiki.gnome.org/Apps/Evolution) 3.48.1 和许多其他软件包。

快照 [20230421](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6GFTUCMK6XB4EONQ6CRS4Y7DKJBVP4GA/) 将跨平台视频和音频解决方案 [ffmpeg-4](https://www.ffmpeg.org/) 更新至 4.4.4；删除了一些 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures) 补丁，修复了一些具有分数帧速率的行为并重组了切片协调读取。较新的 [ffmpeg-5](https://www.ffmpeg.org/) 5.1.3 具有类似的修复，例如由于上游修复而删除了 [CVE-2022-3964](https://www.suse.com/security/cve/CVE-2022-3964.html) 的补丁。快照中出现了 [grep](https://www.gnu.org/software/grep/) 3.10 的更新，它对匹配数字字符串进行了一些更改，例如阿拉伯文字 `Ù Ù¡Ù¢Ù£Ù¤Ù¥Ù¦Ù§Ù¨Ù©`，即分别为 `1 2 3 4 5 6 7 8 9 0`。该快照还更新了 [ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.4.20230418、[pam](https://github.com/linux-pam/linux-pam) 1.5.2.90、[selinux-policy](https://build.opensuse.org/package/show/security:SELinux/selinux-policy) 20230420 和其他几个包。

------

原文：[KDE Gear, Grep, GTK4 update in Tumbleweed](https://news.opensuse.org/2023/04/28/gear-grep-gtk-up-in-tw/)，作者：Douglas DeMaio
