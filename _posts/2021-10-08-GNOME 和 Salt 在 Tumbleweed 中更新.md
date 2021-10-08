---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-10-08 20:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: GNOME 和 Salt 在 Tumbleweed 中更新
image: /assets/posts/2021-10/2021-10-08 GNOME 和 Salt 在 Tumbleweed 中更新.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- GNOME
---

[GNOME 41](https://help.gnome.org/misc/release-notes/41.0/) 的更新出现在 openSUSE 滚动分支 Tumbleweed 中并没有花很长时间； 新的 [GNOME](https://www.gnome.org/) 是在我们上一篇博文发布的第二天发布的。

本周三个快照中包含的其他软件更新包括 [Mesa](https://www.mesa3d.org/)、[PipeWire](https://pipewire.org/)、[Btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page)、[Mozilla Firefox](https://www.mozilla.org/) 和 [Thunderbird](https://www.thunderbird.net/)。

Mesa 的 [21.2.3](https://docs.mesa3d.org/relnotes/21.2.3.html) 更新专注于错误修复，已在快照 [20211005](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FGZRT2PX47JC4ZQJHKDYU63AJH7OQNU4/) 中发布。 3D 图形包修复了 [Radeon HD 8400](https://www.notebookcheck.net/AMD-Radeon-HD-8400.93720.0.html) 显卡显著的性能下降的问题。如果 S/MIME 加密邮件包含密件抄送收件人，[Mozilla Thunderbird](https://www.thunderbird.net/) 91.1.2 现在会发出警告。 该电子邮件客户端的更新还修复了仅针对第一个收件人显示的传递状态通知。另一个电子邮件包 [mailutils](https://mailutils.org/) 已更新至 3.13 版并修复了邮件发送和保存命令的语义。[PipeWire](https://pipewire.org/) 0.3.38 对蓝牙兼容性进行了各种改进，[Linux](https://www.kernel.org/) 的音视频包现在为 [systemd](https://freedesktop.org/wiki/Software/systemd/) 提供了更好的描述服务文件。快照中唯一的大版本更新是 [sysvinit 3.00](https://www.linuxfromscratch.org/lfs/view/development/chapter08/sysvinit.html)。 [sysvinit](https://www.linuxfromscratch.org/lfs/view/development/chapter08/sysvinit.html) 软件包用于控制系统的启动、运行和关闭，现在提供了更好的 `bootlogd` 设备检测。[btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 文件系统更新至 5.14.1； 更新版本修复了压缩解析（`option -c`）并在读取区域大小时为旧内核添加了解决方法。 快照中要更新的其他软件包是 [exim 4.95](https://www.exim.org/)、[Kernel-firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git) 20210928 等。

于本月第一天发布的快照 [20211001](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VVOFCA25PMKGEEO6FN4QJELSHKP5HNON/) 发布了有关 [Firefox](https://www.mozilla.org/) 的一个小更新。该网络浏览器的 92.0.1 版本修复了音频播放在某些 Linux 系统上无法正常工作的问题。根据[变更日志](https://github.com/saltstack/salt/blob/master/CHANGELOG.md)，[salt 3003.3](https://github.com/saltstack/salt/) 的更新添加了大量补丁并进行了修复以定期重新启动文件服务器更新进程以避免泄漏。 [audit](https://people.redhat.com/sgrubb/audit/) 3.0.5 的更新修复了处理损坏日志时的各种问题。 本次快照中更新了大约 10 个其他软件包。

[GNOME 41](https://help.gnome.org/misc/release-notes/41.0/) 在快照 [20210929](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/T7MEOXYIPE3HU6ZG3DXQZGVZIXFSAFCF/) 中发布。新版本为开发人员提供了[重大改进](https://help.gnome.org/misc/release-notes/41.0/developers.html)、新的开发人员文档网站、[Builder IDE](https://wiki.gnome.org/Apps/Builder) 中的新功能和 [GTK4](https://www.gtk.org/) 增强功能。软件中心焕然一新，让浏览和发现应用程序变得更加容易。 [GNOME](https://www.gnome.org/) 的新远程桌面客户端 [Connections](https://gitlab.gnome.org/GNOME/connections) 替换了以前在 [Boxes](https://wiki.gnome.org/Apps/Boxes) 中找到的远程桌面功能。CD/DVD 刻录机 [brasero](https://wiki.gnome.org/Apps/Brasero) 进行了翻译改进，并在 3.12.3 版中添加了一些 `Help` 改进。 快照中有对 [glib2](https://wiki.gnome.org/Projects/GLib) 2.70.0 的更新，而 [libsoup](https://wiki.gnome.org/Projects/libsoup) 3.0.1 的主要更新删除了对 [libxml](http://xmlsoft.org/) 的未使用依赖。[NetworkManager-openvpn](https://gitlab.gnome.org/GNOME/NetworkManager-openvpn) 18.8.16 版本修复了对服务器推送的不完整IPv6配置的解析问题。 快照中要更新的其他软件包是 [upower](https://upower.freedesktop.org/) 0.99.13、[rubygem-bundler](https://rubygems.org/gems/bundler) 2.2.27、[gupnp](https://gitlab.gnome.org/GNOME/gupnp) 1.4.0、[vte](https://wiki.gnome.org/Apps/Terminal/VTE) 0.66.0 和其他几个[与 GNOME 相关](https://www.gnome.org/)的库。

------

原文：[GNOME, Salt Update in Tumbleweed](https://news.opensuse.org/2021/10/08/gnome-salt-update-in-tw/)，作者：Douglas DeMaio