---
author: Hanjingxue Boling
date: 2022-08-12 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: 内核和 HarfBuzz 在 Tumbleweed 中更新
image: /assets/posts/misc/update_tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 本周每天都会向用户推出新快照。

本周发布的几个大版本更新包括 [Linux Kernel](https://www.kernel.org/) 5.19 和 [HarfBuzz](https://github.com/harfbuzz/harfbuzz) 5.1，它们都在快照 [20220810](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/47TESSV3J2IFCCRASW7HVKMFNRBNBGGU/) 中发布。

快照 [20220810](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/47TESSV3J2IFCCRASW7HVKMFNRBNBGGU/) 还带来了大量软件包更新。关于[内核](https://www.kernel.org/) 5.19 版本的讨论重点包括增加对 [arm](https://www.arm.com/) 的支持、与更大的 IPv6 包大小相关的 [TCP](https://en.wikipedia.org/wiki/Transmission_Control_Protocol) 改进，以及 [Intel](https://www.intel.com/) 和 [AMD](https://www.amd.com/) GPU 的图形改进。文本整形引擎 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 5.1 修复了位图字体渲染中的回归问题，改进了对一些阿拉伯语和希伯来语字体的支持，并改进了对命令行选项的处理。[hplip](https://en.wikipedia.org/wiki/HP_Linux_Imaging_and_Printing) 更新至 3.22.6，增加了对几种新打印机的支持，并增加了对最近发布的新发行版的支持。[gnome-software](https://gitlab.gnome.org/GNOME/gnome-software/-/releases) 42.4 更新中有意大利语和塞尔维亚语翻译更改，其中还修复了包含标记时的详细文本。[webkit2gtk3](https://webkitgtk.org/) 更新至 2.36.6，修复了 [GTK4](https://www.gtk.org/) 版本上触摸板滚动的处理以及一些崩溃和渲染问题。快照中要更新的其他软件包包括 [postfix 3.7.2](http://www.postfix.org/announcements/postfix-3.7.2.html)、[ModemManager](https://www.freedesktop.org/wiki/Software/ModemManager/) 1.18.10、[mutt](http://www.mutt.org/) 2.2.7 等。

开源防病毒引擎 [ClamAV](https://www.clamav.net/) 在快照 [20220809](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DKEO6ZEFOPRUTE3CYF77T32QIM6D6DSQ/) 中更新到 0.103.7 版本。更新后的版本允许跳过[固实压缩文件](https://en.wikipedia.org/wiki/Solid_compression)中的文件，并将 UnRAR 库升级到 6.1.7 版本。远程桌面协议包 [freerdp](https://www.freerdp.com/) 2.8.0 的更新向后移植了几个项目并防止 [ffmpeg](https://www.ffmpeg.org/) 的越界读取。内核固件包 [kernel-firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/) 本次更新提供了多个英特尔蓝牙更新，并为音频放大器芯片 [Cirrus CS35L41](https://www.cirrus.com/products/cs35l41/) 添加了固件。本次快照更新的软件包还有原子更新包 [transactional-update](https://github.com/openSUSE/transactional-update)，它从候选发布版本过渡到现在的 4.0.0 版本。在 [MicroOS](https://get.opensuse.org/microos/) 中使用的 transactional-update 增加了删除快照的方法，改变了快照 [D-Bus](https://cgit.freedesktop.org/dbus/dbus/) 的 “List” 方法。[yast2-trans](https://software.opensuse.org/package/yast2-trans) 的更新增强了几个瑞典语翻译。快照中剩余的大部分软件包都是 [RubyGems](https://rubygems.org/) 更新。

虽然快照 [20220808](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/Y4SJEP2QE6Z6ZYLXRW2J4DRI76TBKEQM/) 的后续版本含有 [RubyGems](https://rubygems.org/) 更新，但此快照主要提供的是 [Python 包索引](https://pypi.org/)更新。更新的 [PyPI](https://pypi.org/) 包包括 [python-httpx](https://www.python-httpx.org/) 0.23.0、[python310-pyparsing](https://pypi.org/project/pyparsing/) 3.0.9 和 [python-kiwisolver](https://pypi.org/project/kiwisolver/) 1.4.4。[python-setuptools](https://pypi.org/project/setuptools/) 从 58.3.0 更新到 63.2.0；此次更新进行了性能优化，删除了一些打包依赖项并修复了 60.8.0 版本中一些出现损坏的功能。快照中要更新的另外两个重要软件包是：[virt-manager](https://virt-manager.org/) 4.1.0，它刷新和删除了补丁；以及 [rpm 4.17.1](http://rpm.org/wiki/Releases/4.17.1)，它修复了 [CVE-2021-3521](https://www.suse.com/security/cve/CVE-2021-3521.html)，这是 RPM 签名功能中的一个缺陷。

快照 [20220807](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4JDTDAONDYHOBTE6D5ENBWNQQC6C6ZGA/) 和 [20220806](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NTYQSPSPXPOAEQHSDFTAGWIUSY4JWI4P/) 都更新了几个 [RubyGems](https://rubygems.org/)。快照 [20220807](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4JDTDAONDYHOBTE6D5ENBWNQQC6C6ZGA/) 将引导处理包 [plymouth](https://www.freedesktop.org/wiki/Software/Plymouth/) 更新至 22.02.122 版本，此次更新更新了源代码美化器 [uncrustify](https://github.com/uncrustify/uncrustify) 的脚本。本周到达的另一个大版本更新是 hwinfo 22.0。 硬件信息工具 [hwinfo](https://github.com/openSUSE/hwinfo) 改进了对 [NVME](https://en.wikipedia.org/wiki/NVM_Express) 设备的处理，修复了编译器警告并添加了新的 NVME 硬件类。

[KDE](https://kde.org/) 粉丝在快照 [20220805](9https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NVPJHHZN7KZDJYYJR3IZJP6BSZHNQ2NR/) 中收到了更新。此次快照发布了 [KDE Plasma 5.25.4](https://kde.org/announcements/plasma/5/5.25.4/)，并在 [Plasma 桌面](https://invent.kde.org/plasma/plasma-desktop)中添加了键盘导航支持。功耗控制器 [PowerDevil](https://invent.kde.org/plasma/powerdevil) 更新了电池通知，现在在电池耗尽时插入交流电压时会显示通知。[GNOME](https://www.gnome.org/) 的文本编辑器 [gedit](https://wiki.gnome.org/Apps/Gedit) 42.2 修复了文本截断情况并更新了翻译。[aws-cli](https://aws.amazon.com/cli/) 更新至 1.25.45，在 `setup.py` 的规范文件中添加了要求。[libostree](https://ostreedev.github.io/ostree/) 2022.5 版本带来了将近一年的更新。该版本为 s390x SE、[API](https://en.wikipedia.org/wiki/API) 附件，并了修复 [Rust](https://www.rust-lang.org/) 绑定。

------

原文：[New Kernel, HarfBuzz Versions update in Tumbleweed](https://news.opensuse.org/2022/08/12/new-kernel-harfbuzz-v-update-in-tw/)，作者：Douglas DeMaio