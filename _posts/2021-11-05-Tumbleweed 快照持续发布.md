---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-11-5 11:15:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 快照持续发布
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) 在本周有了新的发展。

前一周发布了频繁的 Tumbleweed 快照，滚动版本自 10 月 27 日以来一直在提供持续的每日软件更新。

[urlscan](https://urlscan.io/) 0.9.7 中 `--whitespace-off` 功能的更新文档是在最新的快照 [20211102](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2G2ZVEEDHIVYAUSBXDZIFSLCY7VZARHJ/) 中完成的。 快照中还包含另外两个软件包； 这两个包都是中文输入法 [ibus-sunpinyin](https://github.com/sunpinyin/sunpinyin) 2.0.99.2 和 [sunpinyin](https://github.com/sunpinyin/sunpinyin) 2.0.99.2。

快照 [20211101](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/KOHURFR32IZQLNACSNWRPAMBJPZAN224/) 更新了两个包。 通用解析器 [bison](https://www.gnu.org/software/bison/) 更新至 3.8.2 版。 它删除了对 [YYPRINT 宏](https://www.gnu.org/software/bison/manual/html_node/The-YYPRINT-Macro.html)的支持，并添加了一个[新的 C++ 原生 GLR 解析器](https://githubmemory.com/repo/lexxmark/winflexbison/issues/74)。快照中要更新的另一个包是 [gdb](https://www.gnu.org/software/gdb/) 11.1； 调试器添加了许多维护脚本并删除了几个过时的 [Fedora](https://getfedora.org/) 补丁。如果底层架构支持适当的原语和 Hook，gdb 包现在支持通用内存标记功能，目前仅支持 [AArch64](https://en.wikipedia.org/wiki/AArch64) 内存标记扩展（Memory Tagging Extension）。

快照 [20211031](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/THP65RVWV4XO5PW4A3TOD3OW2DHWZNZT/) 更新了 3D 图形库 [Mesa](https://www.mesa3d.org/) 21.2.5 和 [Mesa-drivers 21.2.5](https://docs.mesa3d.org/relnotes/21.2.5.html)。此次版本升级修复了 [Panfrost](https://docs.mesa3d.org/drivers/panfrost.html) 驱动程序堆栈。 还对 [Radeon Vulkan](https://www.amd.com/en/technologies/vulkan) 驱动程序进行了一些错误修复，修复了几个游戏问题和 GPU 挂起。[ffmpeg-4](https://www.ffmpeg.org/) 4.4.1 更新中包含了编解码器和格式修复。 快照中更新了 [libqt5](https://www.reddit.com/r/openSUSE/comments/cbflbz/difference_between_libqt5_and_libqt5_packages/) 套件的几个 5.15.2 版本，[wget 的 1.21.2 版本](https://www.linuxfromscratch.org/blfs/view/svn/basicnet/wget.html)更新了对 [autoconf](https://www.gnu.org/software/autoconf/) 2.71 的支持。

[Linux](https://www.kernel.org/) 的蓝牙协议栈在快照 [20211030](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IAAYOEZAM6F7Z7GNMKFYBEQ5YFJEUFYP/) 中更新。最新版本的 [bluez 5.62](http://www.bluez.org/) 修复了涉及音频视频控制传输协议 ([AVCTP](http://www.cs.bilkent.edu.tr/~korpe/lab/resources/AVCTP%20Spec%20v1_0)) 浏览通道和缺少增强重传模式 (ERTM) 的问题；该软件包还增加了对某些类型的连接失败的支持。 [PipeWire](https://pipewire.org/) 0.3.39 带来了 [JACK](https://jackaudio.org/) 应用程序的稳定性和兼容性改进，并为更多设备带来了更好的蓝牙兼容性。[yast2-trans](https://yast.opensuse.org/) 包中更新了土耳其语和印地语。 快照中要更新的其他软件包是 [freecell-solver](https://fc-solve.shlomifish.org/) 6.6.0、[sshfs](https://github.com/libfuse/sshfs) 3.7.2 和 [python-SQLAlchemy](https://pypi.org/project/SQLAlchemy/) 1.4.25。

[KDE](https://kde.org/) [Plasma 5.23.2](https://kde.org/announcements/plasma/5/5.23.2/) 错误修复版本在快照 [20211029](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/OIJ4EPTO77U5Y2WGLLHU2CJBA3YS6KCB/) 中发布。通过 [plasma-desktop](https://invent.kde.org/plasma/plasma-desktop) 文件夹恢复了一些功能，并且任务管理器防止了一些无用的组件创建。[KWin](https://commits.kde.org/kwin) 有一个忽略键盘重复速度的 [Wayland](https://wayland.freedesktop.org/) 修复。[flatpak](https://flatpak.org/) 1.12.2 的更新更新了翻译，改进了无法应用 seccomp 规则时的诊断消息，并修复了在不使用 `--devel` 时被阻止的[系统调用](https://en.wikipedia.org/wiki/System_call)的错误处理。[autoyast2](https://yast.opensuse.org/) 4.4.19 的更新在检查签名时避免了内部错误，并向分区模式添加了一些元素，这反映在 [yast2-schema](https://yast.opensuse.org/) 4.4.4 更新中。 快照中要更新的其他软件包是软件包和依赖项管理器 [yarn](https://yarnpkg.com/) 1.22.17、[kernel-firmware](https://www.kernel.org/) 20211027、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.53 和 [libsoup](https://gitlab.gnome.org/GNOME/libsoup) 3.0.2。

快照 [20211028](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NQ4XOISOQFU3TCSDQLQ64SGI6EQUE2H2/) 更新了 [ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.3.20211021 和 [pcre2](https://github.com/PhilipHazel/pcre2) 10.38。

------

原文：[Tumbleweed Snapshots Glide Forward](https://news.opensuse.org/2021/11/04/tw-snapshots-glide-forward/)，作者：Douglas DeMaio