---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-05-21 22:10:00 +0800
layout: post
license: CC-BY-SA-3.0
title: KDE Gear、GTK、Btrfs 在 Tumbleweed 中更新
image: /assets/posts/2021-05/KDE Gear、GTK、Btrfs 更新.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- GTK
- Btrfs
---

本周到目前为止已经发布了四个 openSUSE Tumbleweed 快照。

这些快照更新了 [KDE Gear 21.04.1](https://kde.org/announcements/gear/21.04.1/)、[GTK 4](https://www.gtk.org/)、[Btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page)、[postgresql](https://www.postgresql.org/) 和  [sudo](https://www.sudo.ws/)  等。

快照 [20210519](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EPZ7MHKAGJOU6AKFIHPVBS26XEM3XY5H/) 更新了 [postgresql 13.3](https://www.postgresql.org/docs/13/release-13-3.html) 软件包，并解决了三个常见的[漏洞和暴露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；其中一个包括对目标列表的错误处理，另一个防止了数组计算的整数溢出。文本编辑器 [vim](https://www.vim.org/) 8.2.2850 修复了一些崩溃，开放远程计算解决方案 [SPICE](https://www.spice-space.org/) 的 0.15.0 更新提供了一些行为变化和与 [OpenSSL](https://www.openssl.org/) 的兼容性。gtk 4 4.2.1 的更新改进了渲染和 [Wayland](https://wayland.freedesktop.org/) 的字体设置回退。[GNOME](https://www.gnome.org/) 的类似俄罗斯方块的游戏 [quadrapassel](https://help.gnome.org/users/quadrapassel/stable/) 有了 40.1 的主要版本，它更新了翻译，按返回键现在可以重新启动游戏。另一个在快照中更新的主要版本是 [python-incremental 21.3.0](https://pypi.org/project/incremental/)，它符合 [PEP 440](https://www.python.org/dev/peps/pep-0440/) 的要求。

在快照 [20210517](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/UUXYRSYZQ6JVY6IDH5EWVNKFO73RPU7P/) 中的 KDE Gear 21.04.1 的更新中进行了多项修复。KDE Gear 21.04.1 软件包更新了视频编辑器 [Kdenlive](https://kdenlive.org/en/) ，它修复了渲染预设；文本编辑器 [Kate](https://kate-editor.org/) 修复了一个可能的泄漏；图表程序 [umbrello](https://umbrello.kde.org/) 做了一些外观和错误检测方面的改进。这次更新还恢复了 ffmpeg3 对 [ffmpegthumbs](https://apps.kde.org/ffmpegthumbs/) 的兼容性。快照中其他需要更新的软件包有 [rubygem-rubocop](https://rubygems.org/gems/rubocop) 1.14.0、[urlscan](https://github.com/firecat53/urlscan) 0.9.6 和 [re2c](https://re2c.org/) 2.1.1，后者为 Linux、macOS 和 Windows 增加了 [GitHub Actions](https://github.com/features/actions) 持续集成。

Btrfs 和 sudo 都在快照 [20210515](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/KADKG6TF35BXDEUVHGTVP6MAJMOF33SV/) 中更新。1.9.7 版的 sudo 修正了前一版本中引入的一个错误，该错误导致 `sudo -V` 报告使用错误。Sudo 现在需要 autoconf 2.70 或更高版本来重新生成 configure 脚本。Btrfs 从 5.11 版更新到了 5.12.1 版，并修复了 libbtrfs 中丢失的用于构建的符号；还修复了文件系统的 CI 支持脚本的符号链接路径。[elfutils](https://sourceware.org/elfutils/) 的 0.184 更新在缓存中创建了一个空的 000 权限文件，如果对一个文件的查询以 404 失败。[python- kiwi 9.23.28](https://pypi.org/project/kiwi/) 软件包增加了对基于 Debian 的发行版上 [UEFI](https://en.wikipedia.org/wiki/Unified_Extensible_Firmware_Interface) 的支持。其他在快照中更新的软件包有 shell 工具 [hdparm 9.62](https://sourceforge.net/projects/hdparm/)，[highlight 4.1](http://www.andre-simon.de/doku/highlight/highlight.php) 和 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.6。

快照 [20210514](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YWMDNFUKCWJFRDTZNGZZ72ZHHPQSAAVP/) 开始了本周的工作，它将 [Linux 内核](https://www.kernel.org/)更新到 5.12.3。进行了多项[总线](https://www.kernel.org/doc/html/latest/driver-api/driver-model/bus.html)更新，并对磁盘加密 [ecryptfs](https://en.wikipedia.org/wiki/ECryptfs) 进行了内核恐慌。[Xfce](https://www.xfce.org/) 的鼠标垫 0.5.5 的更新增加了各种插件支持，并在设置中增加了一个 `.desktop` 文件。Xfce 在 4.16.3 的更新中还对 xfce4-panel 进行了几个关键修复，[thunar 4.16.8](https://en.wikipedia.org/wiki/Thunar) 更新了翻译并修复了打开编辑菜单时的错误。远程桌面客户端 [remmina 1.4.16](https://remmina.org/) 修复了一个数据路径，并更新了一些 [RubyGems](https://rubygems.org/) 软件包。

------

原文：[KDE Gear, GTK, Btrfs Update in Tumbleweed](https://news.opensuse.org/2021/05/21/kde-gear-gtk-btrfs-update-in-tw/)，作者：Douglas DeMaio

