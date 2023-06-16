---
author: Hanjingxue Boling
date: 2023-06-16 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Mesa、systemd、Gear 和 Frameworks 在 Tumbleweed 中更新
image: /assets/posts/2023-06/systemd.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

快速滚动的 [openSUSE] [Tumbleweed] 在本周为 [KDE] 爱好者们带来了全新制作的软件。

过去四个已发布的快照有两个与 [KDE Gear] 和 [KDE Frameworks] 有关。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[KDE]: https://kde.org/
[KDE Gear]: https://kde.org/announcements/gear/23.04.2/
[KDE Frameworks]: https://kde.org/announcements/frameworks/5/5.107.0/

快照 [20230613] 为 [Xfce] 用户提供了一些帮助。[xfce4-panel-profiles] 1.0.14 更新了面板布局；新版本修复了安装文件的文件列表和权限。xfce4-panel-profiles 还添加了一些缺失的可翻译标志，并提供了一些文件名一致性。[Linux Kernel] 更新至 6.3.7，修复了一个可能的[内存泄漏]问题，对传输控制协议进行了一些增强。内核还修复了 [RISC-V] 的未使用变量警告。[perl-Image-ExifTool] 更新至 12.63 版本，添加了对读取 7z 文件的支持，并对某些场景进行了警告。此快照还更新了 [libzypp] 17.31.13 和 [Unicode 双向算法]的自由实现 [fribidi] 1.0.13。

[20230613]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/F7QOJYOMLHXQTWDNWMSMWRZJ6POOI63C/
[Xfce]: https://www.xfce.org/
[xfce4-panel-profiles]: https://docs.xfce.org/apps/xfce4-panel-profiles/start
[Linux Kernel]: https://www.kernel.org/
[内存泄漏]: https://en.wikipedia.org/wiki/Memory_leak
[RISC-V]: https://riscv.org/
[perl-Image-ExifTool]: https://exiftool.org/ExifTool.html
[libzypp]: https://github.com/openSUSE/libzypp
[Unicode 双向算法]: https://www.unicode.org/reports/tr9/
[fribidi]: https://github.com/fribidi/fribidi

快照 [20230612] 更新了 3D 图形库 [Mesa]。Mesa 23.1.2 删除了不再使用的 meson 选项 `-Ddri-drivers`，[VDPAU] 功能将不再可用于 [Radeon R300] 显卡。[systemd] 253.5 采用了一种新方法来触发用户管理器对包更新的重新执行，这比以前的 `systemctl --user -M 1000@daemon-reexec` 命令更安全且问题更少。此快照还发布了 [KDE Frameworks 5.107.0]。[KIO] 访问管理器和相关类已被弃用。如果缩略图目录位于加密卷上，则该软件包还会启用缩略图缓存。[Kirigami] 的更新禁用了不可见的快捷方式并禁用了 ActionTextField 中的文本字段，并改进了文档中图标的绘制。作为框架更新的一部分，[KImageFormats] 的更新改进了图像处理和转换的可靠性和正确性。[Mozilla Firefox] 114.0.1 引入了一个用于通过 HTTPS 异常列表管理 DNS 的用户界面，Linux 用户现在可以使用 FIDO2 的 [WebAuthn] 对 USB 的网络标准支持。[AppArmor] 3.1.5 的更新修复了处理挂载规则，删除了一个补丁，并在 Tumbleweed 构建中加载配置文件时阻止了关于不存在目录的警告。快照中更新了其他几个软件包，包括 [zchunk] 1.3.1、[hwdata] 0.371、[xwayland] 23.1.2 和其他几个。

[20230612]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IMTPRQ5RJYSTVJT7AI5GPZA5QAMB5GWD/
[Mesa]: https://www.mesa3d.org/
[vdpau]: https://en.wikipedia.org/wiki/VDPAU
[Radeon R300]: https://en.wikipedia.org/wiki/Radeon_R300_series
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[KDE Frameworks 5.107.0]: https://kde.org/announcements/frameworks/5/5.107.0/
[KIO]: https://invent.kde.org/frameworks/kio
[kirigami]: https://develop.kde.org/frameworks/kirigami/
[kimageformats]: https://api.kde.org/frameworks/kimageformats/html/index.html
[Mozilla Firefox]: https://www.mozilla.org/
[WebAuthn]: https://en.wikipedia.org/wiki/WebAuthn
[AppArmor]: https://apparmor.net/
[zchunk]: https://github.com/zchunk/zchunk
[hwdata]: https://github.com/vcrhonek/hwdata
[xwayland]: https://wayland.freedesktop.org/xserver.html

[KDE Gear 23.04.2] 在发布后不到 48 小时就到达了 Tumbleweed。快照 [20230610] 提供了此次更新并且旅行预订包 [kitinerary] 是更新包之一；它增强了爱沙尼亚、立陶宛和拉脱维亚铁路车票的旅行证件解析和提取功能。kitinerary 扩展了对各种文档类型的支持，并提高了数据的准确性和可靠性。视频编辑器 [Kdenlive] 的更新提供了一个冻结修复、一些性能优化、一个小的 UI 改进，并进行了一些更改以提供更流畅的编辑体验，例如修复了导致滚动到视图外的时间的剪辑拖动问题。KDE Gear 的 [Messagelib] 对电子邮件处理进行了改进，修复了切换电子邮件时的崩溃问题。快照中还有一些其他包需要更新。运行时编译器 [orc] 0.4.34 进行了一些[持续集成]改进并修复了编译器警告。[Perl] 5.36.1 的更新解决了正则表达式代码中可能触发解释器崩溃的错误。快照中更新了一些其他软件包。

[KDE Gear 23.04.2]: https://kde.org/announcements/gear/23.04.2/
[20230610]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GYHXGAUGASIXHZCR2KSCC6FW4XABXCMT/
[kitinerary]: https://github.com/KDE/kitinerary
[Kdenlive]: https://kdenlive.org/
[Messagelib]: https://api.kde.org/kdepim/messagelib/html/index.html
[orc]: https://gitlab.freedesktop.org/gstreamer/orc
[持续集成]: https://en.wikipedia.org/wiki/Continuous_integration
[Perl]: https://www.perl.org/

快照 [20230608] 将 [gtk4] 更新到 4.10.4 版本，解决了一些[内存泄漏]问题，并进行了修复以避免 [xwayland] 出现一些黑色闪烁。[kdump] 的更新帮助修复 [ALP] 的 prefix，并为这个未来的版本添加校准值。[python-setuptools] 67.8.0 的更新进行了修改以确保正确更新 [.pth 文件]，并且该软件包还进行了测试以确保 [virtualenv] 在 [Python] 3.12 中工作。快照中还更新了一些其他软件包，如 [postfix] 3.8.1、[yast2-storage-ng] 4.6.11 和 [vte] 0.72.2。

[20230608]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/7422KZCY6CLFEJNKCZVMMIBBNO4OA24S/
[gtk4]: https://www.gtk.org/
[内存泄漏]: https://en.wikipedia.org/wiki/Memory_leak
[kdump]: https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html
[ALP]: https://www.suse.com/c/suse-salp-raises-the-bar-on-confidential-computing/
[python-setuptools]: https://pypi.org/project/setuptools/
[.pth 文件]: https://medium.com/@lyl1617670866/what-exactly-is-the-pth-file-9a487044a36b
[virtualenv]: https://virtualenv.pypa.io/en/latest/
[python]: https://www.python.org/
[postfix]: https://www.postfix.org/
[yast2-storage-ng]: https://github.com/yast/yast-storage-ng
[vte]: https://wiki.gnome.org/Apps/Terminal/VTE

------

原文：[Mesa, systemd, Gear, Frameworks update in Tumbleweed](https://news.opensuse.org/2023/06/15/mesa-systemd-gear-frameworks-up-in-tw/)，作者：	Douglas DeMaio
