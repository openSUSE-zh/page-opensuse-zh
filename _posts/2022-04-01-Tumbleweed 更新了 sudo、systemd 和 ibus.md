---
author: Hanjingxue Boling
date: 2022-04-01 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 更新了 sudo、systemd 和 ibus
image: /assets/posts/misc/update_tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周 openSUSE [tumbleweed](https://get.opensuse.org/tumbleweed/) 共发布了四个快照。

Tumbleweed 一直在发布每日快照；本周两次快照之间的四天时间间隔是自去年秋天以来最长的快照发布间隔持续时间。

最新的快照 [20220320](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VCSXX3PGJ3LWXU7GRYU2YZUORH24LJ62/) 仅更新了一个包。[perl-Mojolicious](https://mojolicious.org/) 更新至 9.23 小版本，默认情况下，[Mojolicious 渲染器](https://docs.mojolicious.org/Mojolicious/Guides/Rendering)可以进行 [gzip](https://www.gnu.org/software/gzip/) 压缩。

快照 [20220329](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CBP3S6EOSULGETF5PKSTSDWHK7NTCPT3/) 更新了数个软件包。快照中要更新的软件包包括 [ibus](https://github.com/ibus/ibus) 1.5.26。[Linux](https://www.kernel.org/) 的智能输入总线增强了 Emoji 功能，增强了撰写键并修复了 GTK4 的前进键键码。用于诊断、调试和指导用户空间的软件包 [strace](https://strace.io/) 5.17 进行了一些改进并实现了一些解码命令。 Linux 蓝牙协议 [bluez](http://www.bluez.org/) 5.64 删除了一个补丁并为使用旧 [glibc](https://www.gnu.org/software/libc/) 的构建创建了一个修复程序。kiwi [Ben Hoyt](https://github.com/sponsors/benhoyt/) 将 INI 文件解析器更新为 [inih](https://github.com/benhoyt/inih) 55，通过明确定义符号的可见性提高了共享对象的质量；它是从 53 版更新的。快照还带来了几个 [Python 包索引](https://pypi.org/)更新。其中两个是 [python-cryptography](https://pypi.org/project/cryptography/) 36.0.2，它更新了操作系统以使用 [OpenSSL](https://www.openssl.org/) 1.1.1n 编译，以及工具包 [python-ipython](https://pypi.org/project/ipython/) 8.2.0，它允许自动建议。

快照 20220328 更新了 [sudo](https://www.sudo.ws/) 和 [systemd](https://freedesktop.org/wiki/Software/systemd/)。systemd 250.4 在归档 [Btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 日志文件时会复制孔洞（holes），并明确处理不支持文件打孔（[hole punching](https://lwn.net/Articles/415889/)）的文件系统。如果 `log_passwords` 被禁用，[sudo](https://www.sudo.ws/) 1.9.10 的一些新选项将尝试阻止记录密码。[Mozilla Firefox](https://www.mozilla.org/) 98.0.2 修复了用户在打开新标签并按 `cmd` + `enter` 按键后无法在地址栏中输入的问题；它还修复了会话历史记录中导致某些站点加载失败的问题。文本整形引擎 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 4.1.0 修复了许多错误；[libzypp](https://github.com/openSUSE/libzypp) 修复了可能的挂起。软件包 [gtk3](https://www.gtk.org/) 3.24.33+12、[libsolv](https://github.com/openSUSE/libsolv) 0.7.22、[xlockmore](http://sillycycle.com/xlockmore.html) 5.69 和 [glib2](https://wiki.gnome.org/Projects/GLib) 2.72.0 是快照中要更新的众多软件包中的一部分。

本周的第一个快照，也就是在 [GNOME 42](https://news.opensuse.org/2022/03/25/tw-gets-gnome42/) 登陆 [Tumbleweed](https://get.opensuse.org/tumbleweed/) 的第二天发布的快照是 [20220324](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FMKIY5SACKDSEH3Q6YTWAFQWQ2D24KRQ/)。快照中有几个 [gstreamer](https://gstreamer.freedesktop.org/) 1.20.1 包需要更新。GStreamer 修复了一个 gtk 视频接收器，其中涉及暂停时未应用的旋转以及对 [webrtc-sendrecv](https://gitlab.freedesktop.org/gstreamer/gst-examples/-/tree/master/webrtc/sendrecv) 的许多修复。文本编辑器 [vim](https://www.vim.org/) 接收到大量社区贡献，从 8.2.4542 版本更新至到 8.2.4602 版本，并通过组合功能修复了一些构建失败。游戏玩家和音乐家将欣赏 [pipewire](https://pipewire.org/) 0.4.9 更新，因为该更新现已正确显某些游戏中的环绕声播放，并且添加并修复了一些蓝牙功能。文件系统快照管理器 [snapper](https://en.opensuse.org/openSUSE:Snapper_Tutorial) 0.10.0 的更新调整了传输文件列表以减轻 [dbus](https://www.freedesktop.org/wiki/Software/dbus/) 的消息大小。

------

原文：[Tumbleweed updates sudo, systemd, ibus](https://news.opensuse.org/2022/03/31/tw-updates-sudo-systemd-ibus/)，作者：Douglas DeMaio