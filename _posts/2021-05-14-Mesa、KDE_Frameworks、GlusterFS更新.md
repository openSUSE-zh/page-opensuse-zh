---
author: Hanjingxue Boling
date: 2021-05-14 20:00:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Mesa、KDE Frameworks、GlusterFS 更新
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- KDE
- Mesa
- GlusterFS
---
本周到目前为止有三个 openSUSE Tumbleweed 快照发布。

这些快照更新了 [Mozilla Thunderbird](https://www.thunderbird.net/)、[Mozilla Firefox](https://www.mozilla.org/)、[Mesa](https://www.mesa3d.org/)、[KDE Frameworks](https://kde.org/announcements/frameworks/5/5.82.0/)、[glusterfs](https://www.gluster.org/)、[php](https://www.php.net/) 和其他一些软件包。

最近发布的快照 [20210511](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CREVLOMAEMHKTOXVSRFEQQENQPDEZ3MH/)，只更新了少量的软件包。有一个来自 [KDE Frameworks 5.82.0](https://kde.org/announcements/frameworks/5/5.82.0/) 的软件包更新了绘图框架 [kplotting](https://api.kde.org/frameworks/kplotting/html/index.html) 。快照中更新了 Linux 5.12.2 版[内核](https://www.kernel.org/)，为 x86 版 thinkpad_acpi 模块带来了热传感器修正，并对 [Advanced Linux Sound Architecture（ALSA）](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) USB 音频进行了一些修正。快照中的另一个软件包更新是 [hivex](https://libguestfs.org/hivex.3.html) 1.3.20，这是一个用于提取 Windows 注册表内容的系统；hivex 版本修复了一个[常见的漏洞和暴露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)，这将允许攻击者读取超出正常界限的内存或导致程序崩溃。

[Mesa](https://www.mesa3d.org/) 21.1.0 和大部分 KDE Frameworks 5.82.0 软件包在快照 [20210510](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/W22OUX626Z2XR572QRQNEMQMB4X33ZK4/) 中更新。Mesa 的更新增加了一些补丁，并在 /usr/include/vulkan/ 中删除了 vulkan_intel.h ，但决定保持该目录为空。KDE Frameworks 5.82.0 的更新增加了新的侧边栏显示和隐藏 [Breeze 图标](https://github.com/KDE/breeze-icons)。[KDBusAddons](https://api.kde.org/frameworks/kdbusaddons/html/index.html) 文件被重新授权为 [LGPL-2.0](https://www.gnu.org/licenses/old-licenses/lgpl-2.0.en.html) 或更高版本。框架更新中进行了许多修复，包括 [KTextEditor](https://api.kde.org/frameworks/ktexteditor/html/) 内存损坏修复和几个拖动的修复。Mozilla Thunderbird 78.10.1 的更新恢复了以前 78.9.0 版本中的一些行为。[fetchmail](https://www.fetchmail.info/) 6.4.19 的更新现在可以正确报告选项解析错误。Tumbleweed 在将 [glusterfs](https://www.gluster.org/) 从7.1 版升级到9.1版时，跳过了能够扩展到几个 peta-bytes 的集群文件系统的整个主要版本；新的主要版本升级增加了对 5K卷的支持，改进了稀疏文件的再平衡，现在它的编译默认启用了[链接时间优化功能](https://en.wikipedia.org/wiki/Interprocedural_optimization)。DNS 协议的全功能实现 [bind9](https://bind9.readthedocs.io/) 9.16.15，修复了一些 CVE，包括一个可能导致 `RUNTIME_CHECK` 断言失败的问题。快照中还更新了 [ceph](https://ceph.io/) 16.2.3.26，聊天客户端 [pidgin](https://pidgin.im/) 2.14.4 和终端多路复用器 [tmux](https://news.opensuse.org/2021/05/14/mesa-kde-glusterfs-update-in-tw/tmux.github.io) 3.2。

快照 [20210508](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/32F2ZZ5GG2EPEBWKVLFXFB3TTCY456DW/) 更新了Mozilla Firefox 88.0.1，该修复程序修复了在某些 Gen6 Intel 图形芯片组上在 [Twitter](https://twitter.com/) 或 [WebRTC](https://webrtc.org/) 呼叫上播放的视频的损坏。该开源浏览器还修复了一个涉及网络渲染组件的 CVE。[php 7](https://www.php.net/) 7.4.19 中的一个更新[恢复了一个](https://bugs.php.net/bug.php?id=80892)将所有东西都当作 `PARAM_STR` 的修复。谷歌用于解析、格式化和验证国际电话号码的库 [libphonenumber](https://github.com/google/libphonenumber/blob/v8.12.22/release_notes.txt) 更新到8.12.22版本，更新了运营商数据和德国 +49 和墨西哥 +52 电话代码的地理编码数据。快照中更新的其他软件包有 [hwdata](https://github.com/vcrhonek/hwdata/releases) 0.347、[perl-CGI](https://www.perl.com/article/perl-and-cgi/) 4.52 和 [ibus-table](https://github.com/kaio/ibus-table) 1.13.0。

------

原文：[Mesa, KDE Frameworks, GlusterFS Update in Tumbleweed](https://news.opensuse.org/2021/05/14/mesa-kde-glusterfs-update-in-tw/)，作者：Douglas DeMaio
