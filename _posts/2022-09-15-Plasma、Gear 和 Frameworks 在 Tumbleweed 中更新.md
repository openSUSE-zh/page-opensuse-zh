---
author: Hanjingxue Boling
date: 2022-09-15 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Plasma、Gear 和 Frameworks 在 Tumbleweed 中更新
image: /assets/posts/2022-09/plasma.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周的 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 快照更新了几个 [KDE](https://kde.org/) 软件包和一个影响与 [grep](https://en.wikipedia.org/wiki/Grep) 相关的脚本的更新。

除了 [YaST](https://yast.opensuse.org/) 影响 [grep](https://en.wikipedia.org/wiki/Grep) 的一些更改之外，Tumbleweed 还包含按顺序发布快照更新了 [Plasma](https://kde.org/announcements/plasma/5/5.25.5/)、[Gear](https://kde.org/announcements/gear/22.08.1/) 和 [Frameworks](https://kde.org/announcements/frameworks/5/5.98.0/)。

快照 [20220914](https://openqa.opensuse.org/tests/overview?distri=microos&distri=opensuse&version=Tumbleweed&build=20220914&groupid=1) 正在完成测试，此快照可能会在本文发布之前发布，如果测试通过 [openQA](https://openqa.opensuse.org/)，这将使本周又是一整周连续发布的快照。

[Frameworks 5.98.0](https://kde.org/announcements/frameworks/5/5.98.0/) 在快照 [20220913](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XLFRDW7FU2BXTOTMIMRGKTF722TKXARN/) 中发布。此次更新删除了 [KConfigWidgets](https://api.kde.org/frameworks/kconfigwidgets/html/index.html) 重复的颜色加载代码，修复了 [Kirigami](https://kde.org/products/kirigami/) 中潜在的图像颜色崩溃问题。[Frameworks](https://kde.org/announcements/frameworks/5/5.98.0/) 还为 [KTextEditor](https://api.kde.org/frameworks/ktexteditor/html/) 提供了大量的补充和修复。此次更新在完成配置选项卡中修复了一些不一致的问题，并且在 KTextEditor 中启用了非只读的剪贴板历史记录。[fetchmail](https://www.fetchmail.info/) 6.4.33 的更新删除了上游补丁，并且由于 [snapd](https://snapcraft.io/docs/installing-snapd) 版本的脚本已损坏，增加了一个用于 [Flatpak](https://flatpak.org/) 的 [HTMLDOC](https://github.com/michaelrsweet/htmldoc/) 包装脚本。音频格式 [flac](https://xiph.org/flac/) 1.4.0 添加了 [FMA 指令集](https://en.wikipedia.org/wiki/FMA_instruction_set)扩展以加速 [x86_64](https://en.wikipedia.org/wiki/X86-64) CPU 的音频处理。现在还有一组文件可用于测试 FLAC 解码器是否正确实现格式。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.44 的更新修复了 [LUKS](https://en.wikipedia.org/wiki/Linux_Unified_Key_Setup) 的大小调整并进行了一些捷克语翻译。快照中还更新了 [yast2-bootloader](https://github.com/yast/yast-bootloader) 和 [yast2-kdump](https://github.com/yast/yast-kdump) 的 4.5.4 版本。

快照 [20220912](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MNFXLUGPEV32EUFP4PMYYBEOLGPTXG2P/) 中仅更新了几个包。缓存代理包 [squid](http://www.squid-cache.org/) 5.7 修复了回归和一些错误。 该软件包现在支持 [OpenSSL](https://www.openssl.org/) 3.0。智能卡中间件库 [pcsc-lite](https://pcsclite.apdu.fr/) 1.9.9 的更新做了一些小的改进，并改进了智能卡守护进程的日志，以文本而不是十六进制记录返回码。本次快照还修复了 [tree](http://mama.indstate.edu/users/ice/tree/) 2.0.4 的 JSON 输出中缺少逗号的问题，并且 [yast2-trans](https://software.opensuse.org/package/yast2-trans) 对德语和捷克语有多个翻译更新。

设备映射程序包 [multipath-tools](https://github.com/opensvc/multipath-tools) 在快照 [20220911](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XAWANZS6DH3UAQ2VENEGR2YCUYHY3OYA/) 中进行了本周的第二次更新。快照中要更新的另一个包是字体绘图库 [libXft](https://xorg.freedesktop.org/wiki/) 2.3.6，它修复了 2.3.5 版本中用于尺寸长度检查的回归。

快照 [20220910](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/RRBH7TTEQMKPRSIYMZEYTJWG52N5VOPQ/) 发布了一个对 [autoyast2](https://github.com/yast/yast-autoinstallation) 4.5.4 的非常重要的更新，它将 `egrep` 替换为 `grep -E`。这对于 Tumbleweed 用户来说很值得留意，因为该软件包将过时的 `egrep` 替换为 `grep -E`。`egrep` 和 `fgrep` 都被弃用，取而代之的是 `grep -E` 和 `grep -F` 并且弃用警告输出可能会破坏输出解析脚本。此 `grep -E` 更改也已在 [yast2](https://github.com/yast/yast-yast2) 4.5.13、[yast2-printer](https://github.com/yast/yast-printer) 4.5.2 和 [yast2-scanner](https://github.com/yast/yast-scanner) 4.5.1 版本更新日志中列出。[kernel-source](https://www.kernel.org/) 更新到 5.19.8 版本。[Linux 内核](https://www.kernel.org/)修复了虚拟多层交换机 [Open vSwitch](https://docs.openvswitch.org/) 的内存泄漏。内核在设备表中添加了一个 Rosewill USB 适配器加密狗，其中本次内核更新的大部分修复都与蓝牙相关。快照中要更新的其他软件包包括 [Plymouth](https://www.freedesktop.org/wiki/Software/Plymouth/) 22.02.122 版本、[gnome-browser-connector](https://gitlab.gnome.org/GNOME/gnome-browser-connector) 42.1、[ibus-table](https://github.com/acevery/ibus-table) 1.16.12 等。

随着 [Gear 22.08.1](https://kde.org/announcements/gear/22.08.1/) 的更新，KDE 应用程序在快照 [20220909](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XNLX4KEMB2DEFJLHHBYTZ6WFETG64WNP/) 中接收到了更新。[Kdenlive](https://kdenlive.org/en/) 修复了如果尝试[粘贴无效剪辑](https://invent.kde.org/multimedia/kdenlive/-/commit/6c52d311559b033fa47600a56280d0f911d6323b)时，导致损坏的粘贴剪辑的错误。Kdenlive 还确保任务在关闭时正确终止，并修复了可能[导致损坏](https://invent.kde.org/multimedia/kdenlive/-/commit/bb8e6ffef87bbbdaf1808a07d35675a174c296c3)的错误锁定。[KMail](https://invent.kde.org/pim/kmail) 进行了一些逻辑和国际化修复。由于该部分当前未维护，因此 [KDevelop](https://invent.kde.org/kdevelop/kdevelop) 禁用了起始页上的新闻。网络时间协议 (NTP) 包 [chrony](https://chrony.tuxfamily.org/) 在其 4.3 版本更新中通过硬件时间戳提高了稳定性；它还改进了过滤器选项，以更好地处理丢失的 NTP 样本。[yast2-core](https://github.com/yast/yast-core) 4.5.4 和 [yast2-hardware-detection](https://github.com/yast/yast-hardware-detection) 4.5.1 更新的一些更改对 Tumbleweed 用户很重要，因为这些软件包用 `grep -F` 替换了过时的 `fgrep`；`egrep` 和 `fgrep` 都被弃用，取而代之的是 `grep -E` 和 `grep -F`。弃用警告输出可能会破坏输出解析脚本，所以 Tumbleweed 用户要小心使用。另一个要在快照中更新的包是 [multipath-tools](https://github.com/opensvc/multipath-tools)。

KDE 用户在快照 [20220908](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DRVDREO3GE7HKOOEXVI5XRC23Q6QUDCC/) 中收到了 [Plasma 5.25.5](https://kde.org/announcements/plasma/5/5.25.5/) 的更新，这似乎解决了一些棘手话题。此错误修复版本禁用了 [Plasma 桌面](https://invent.kde.org/plasma/plasma-desktop)的拖放以进行触摸；它与拖动/轻弹滚动冲突。拖放[被认为](https://bugs.kde.org/show_bug.cgi?id=450448)不如滚动或打开上下文菜单进行触摸重要。[PowerDevil](https://invent.kde.org/plasma/powerdevil) 更改了一些亮度操作，[Plasma Workspace](https://invent.kde.org/plasma/plasma-workspace) 的配置模块现在在计算默认状态时会考虑 [GTK](https://www.gtk.org/) 主题设置。[gtk4](https://www.gtk.org/) 4.8.0 的更新还修复了滚动动画的问题。该快照还改进了工具包对 OpenType 字体功能的处理。快照中要更新的另一个包是 [Mozilla Firefox](https://www.mozilla.org/) 104.0.2。该软件包修复了一个错误，该错误导致无法使用触摸或使用触控笔在页面上拖动滚动条。快照中要更新的其他软件包包括 [ipmitool](https://github.com/ipmitool/ipmitool) 1.8.19.0、[libssh](https://www.libssh.org/) 0.10.4、[yast2-network](https://github.com/yast/yast-network) 4.5.6 等。

------

原文：[Plasma, Gear, Frameworks update in Tumbleweed](https://news.opensuse.org/2022/09/15/plasma-gear-frameworks-up-in-tw/)，作者：Douglas DeMaio