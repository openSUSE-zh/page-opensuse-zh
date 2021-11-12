---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-11-12 12:10:00 +0800
layout: post
license: CC-BY-SA-3.0
title: KDE Gear 和 GNOME 在 Tumbleweed 中升级
image: /assets/posts/2021-11/KDE Gear 和 GNOME 在 Tumbleweed 中升级.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[Tumbleweed](https://get.opensuse.org/tumbleweed/) 从上周发布的快照频率中回落，但本周仍有大量快照发布。

在 10 月 27 日至 11 月 2 日连续每日发布之后，openSUSE Tumbleweed 又汇总了三个连续快照。

快照 [20211106](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/SPAMIEK7555YJ5DKSDWS6LGFP2WNFYV5/) 是一个非常大的更新，它带来了来自 [GNOME](https://www.gnome.org/)、[KDE](https://kde.org/) 和 [Mozilla](https://www.mozilla.org/) 等的软件更新。[gnome-software](https://www.gnome.org/) 41.1 的更新带来了各种小的用户界面调整和修复。 该软件包改进了对 [snap](https://en.wikipedia.org/wiki/Snap_(package_manager)) 的元数据支持，并将新的 [GNOME Circle](https://circle.gnome.org/) 应用程序添加到特色轮播中。[gnome-shell](https://www.gnome.org/) 的 41.1 版本修复了 [GTK](https://www.gtk.org/) 应用程序中的一些崩溃和一些不稳定的滚动。 KDE [Gear 21.08.3](https://kde.org/announcements/gear/21.08.3/) 为 [Kdenlive](https://kdenlive.org/en/) 带来了几个修复程序。该视频编辑器修复了音频静音、一些调整大小和对齐问题以及调整大小时不正确的擦除和幻灯片转换行为。KDE 的文档查看器 [Okular](https://invent.kde.org/graphics/okular) 修复了切换标签后丢失的书签菜单操作；喜欢预订旅行的 [Konqi](https://community.kde.org/Konqi) 粉丝现在可在 [KItinerary](https://invent.kde.org/pim/kitinerary) 软件包中确认德国 [Eurowings](https://www.eurowings.com/) 的预订。[Mozilla Thunderbird](https://www.thunderbird.net/) 91.3.0 修复了八个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。该电子邮件客户端的 CVE 修复之一涉及禁用[机会性加密功能](https://www.mozilla.org/en-US/security/advisories/mfsa2021-50/#CVE-2021-38507)，因为网络攻击者可以将浏览器与 443 端口的连接转发到 8443 端口。禁用的功能可能会导致电子邮件浏览器将端口 8443 的内容视为与 HTTP 同源。带有 [gawk](https://www.gnu.org/software/gawk/) 5.1.1 更新的[应用程序接口](https://en.wikipedia.org/wiki/API)现在处理[多精度浮点可靠库](https://en.wikipedia.org/wiki/GNU_MPFR)和  [GNU 多精度算术库](https://en.wikipedia.org/wiki/GNU_Multiple_Precision_Arithmetic_Library)值的方式略有不同，这需要对这些值进行不同的内存管理。[PackageKit](https://www.freedesktop.org/software/PackageKit/) 1.2.4 更新提高了取消操作的线程安全性，并在用户拒绝交互时添加了特定的错误代码。[YaST](https://yast.opensuse.org/) 包有一些更新，如 [yast2-network](https://yast.opensuse.org/) 4.4.29，修复了检查虚拟接口是否连接时的崩溃。 快照中要更新的其他包是 [evolution-ews](https://wiki.gnome.org/Apps/Evolution/EWS) 3.42.1、[glib2](https://wiki.gnome.org/Projects/GLib) 2.70.1 和 [libvirt](https://libvirt.org/) 7.9.0 等许多其他包。

快照 [20211105](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CSCRRKOV7UMKPUWUATE24KB3D47CRR5O/) 中只有四个包。第一个出现在快照中的软件包是 GNOME 41.1 的 [gnome-chess](https://wiki.gnome.org/Apps/Chess) 和 [gnome-remote-desktop](https://wiki.gnome.org/Projects/Mutter/RemoteDesktop)；后者对 PipeWire 帧数据进行了一些调整。网络配置包 [wicked](https://github.com/openSUSE/wicked) 在 0.6.67 版本中进行了一些清理以及对 [dbus](https://www.freedesktop.org/wiki/Software/dbus/) 配置的更改。[aws-cli 1.21.6](https://github.com/aws/aws-cli/blob/1.21.6/CHANGELOG.rst) 有多个 API 更改并放宽了对 [python-docutils](https://pypi.org/project/docutils/) 的版本依赖性。

快照 [20211104](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JQLNQ3PWDEK4FDP4NCWXP7WLU3BRRTOL/) 带来了十多个更新包。[busybox](https://busybox.net/) 1.34.1 删除了重复的配置条目和基于主配置的片段的构造。[ClamAV](https://www.clamav.net/) 0.103.4 向警报添加了病毒名称后缀，当超过扫描限制时触发，防病毒软件包修复了一些与电子邮件解析相关的问题。[man-pages-zh_CN](https://github.com/man-pages-zh/manpages-zh) 1.6.3.6 更新包和几个 [pypi](https://pypi.org/) 更新包更新了中文手册页；这些 pypi 软件包包括 [python-Pillow](https://pypi.org/project/Pillow/) 8.4.0、[python-boto3 1.19.6](https://pypi.org/project/boto3/1.19.6/) 和 [python-pyOpenSSL 21.0.0](https://pypi.org/project/pyOpenSSL/) 主要版本。

------

原文：[KDE Gear, GNOME Update in Tumbleweed](https://news.opensuse.org/2021/11/11/kde-gear-gnome-update-in-tw/)，作者：Douglas DeMaio