---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-09-18 08:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Thunar、Firefox 和 Python 在 Tumbleweed 中更新
image: /assets/posts/2021-09/2021_09_18_Thunar、Firefox_和_Python_在_Tumbleweed_中更新.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- Thunar
---

本周有五个快照提供给 openSUSE  Tumbleweed 用户。

几个小型和中型快照为 [Xfce](https://www.xfce.org/) 的 [Thunar](https://en.wikipedia.org/wiki/Thunar)、[Linux Kernel](https://www.kernel.org/)、[Mozilla Firefox](https://www.mozilla.org/)、[PostgreSQL](https://www.postgresql.org/) 和 [Python](https://www.python.org/) 等软件包提供了新的更新。

快照 [20210915](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/AUAI2VO24ZA6LNITLKF7US7N6MWAOZZ6/) 有两个软件包更新。[manpages-l10n](https://software.opensuse.org/package/manpages-l10n?search_term=manpages-l10n) 软件包的翻译更新到了 4.11.0 版本，启用了匈牙利语的翻译。用于访问和修改虚拟机映像的工具集包 [libguestfs](https://libguestfs.org/) 1.44.2 有大量更改； 它添加和删除了几个补丁，并将 `setup.py` 从其原始 GPLv2+ 许可证重新授权为 LGPLv2+。

Xfce 的 Thunar 软件包在快照 [20210914](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/AV53ZJ6IA4SYCFTCUZ2T5CGIP4U5KNFK/) 中进行了更新；对文件管理器 4.16.9 版本的更新修复了一个内存泄漏，更新了翻译并禁用了文件传输的自动排队。Linux Kernel 5.14.2 有一些 USB 串行控制的修复和一个[公共漏洞和暴露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)的修复；CVE-2021-3640 修复了可能允许有特权的本地用户使系统崩溃或提升他们在系统上的权限的漏洞。用于视频和图像框架的软件包 [pfstools](http://pfstools.sourceforge.net/) 更新到 2.2.0 版本，并提供了许多修复，使该软件包能够与较新版本的库一起工作。快照中还更新了 [aria2](https://aria2.github.io/) 1.36.0 和文本浏览器 [links](http://links.twibright.com/about.php) 2.24 。

Mozilla Firefox 在快照 [20210913](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/G6PLDXAUGBHRUDNHDOUHN3ZHE7BF7Y55/) 中更新到了 [92.0](https://www.mozilla.org/en-US/firefox/92.0/releasenotes/) 主要版本。一个新的功能是全范围的色阶现在已经支持许多系统上的视频播放。火狐现在可以使用 HTTPS RR 作为 [Alt-Svc](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Alt-Svc) 头文件自动升级到 HTTPS 。[postgresql](https://www.postgresql.org/) 13.4 的更新在 [s390x](https://en.wikipedia.org/wiki/IBM_System/390) 上使用 [LLVM12](https://llvm.org/) 进行了修复构建，并修复了 CVE-2021-3677 。应用程序生成器 [python-kiwi](https://pypi.org/project/kiwi/) 9.23.54 做了一些修改，以修复 [rsync](https://git.samba.org/rsync.git/) 工具的行为。本次快照中的更新还有 [KDE](https://kde.org/) [amarok](https://amarok.kde.org/)、[tuned](https://tuned-project.org/) 2.16.0 和 [libsrtp2](https://github.com/cisco/libsrtp) 2.4.1 等软件包。

快照 [20210912](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NFQRR6H5PBLMLG4NB6MNNNJD2ATKCYGH/) 为 [Mozilla Thunderbird](https://www.thunderbird.net/) 提供了 91.1.0 的版本更新。该电子邮件客户端修复了两个 CVE 和一个内存安全漏洞。[pipewire](https://pipewire.org/) 0.3.35 的更新对蓝牙编解码器进行了调整，现在将它们分离为插件以使其更易于发布。PipeWire 的音频混合器现在可以混合更多的格式。[python38](https://www.python.org/) 3.8.12 的更新提供了安全更新，并使电子邮件日期解析对格式错误的输入（即仅限空格）更加稳健。一些 [YaST](https://yast.opensuse.org/) 软件包得到了更新，比如 [yast2-installation](https://yast.opensuse.org/) 4.4.18，它现在可以在升级时显示发行说明。

[YaST](https://yast.opensuse.org/) 在快照 [20210910](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JHJZCF4MNGAMLLSDYGZYZRVJK4ZYOXKP/) 中也有一些更新；[yast2-update](https://yast.opensuse.org/) 4.4.3 软件包修复了系统升级过程中的崩溃，同步 YaST 和 libzypp 软件库以避免删除已使用软件库的缓存。 [ibus](https://github.com/ibus/ibus/wiki) 1.5.25 增加了一个补丁，修复了openSUSE [Leap](https://get.opensuse.org/leap/) 上的构建；[nmap](https://nmap.org/) [7.92](https://nmap.org/changelog.html#7.92) 有一些改进，包括安全传输层 1.3，支持大多数与安全扫描器相关的脚本。Linux 内核也在快照中更新至 5.14.1 。

------

原文：[Thunar, Firefox, Python Update in Tumbleweed](https://news.opensuse.org/2021/09/17/thunar-firefox-python-update-in-tw/)，作者：Douglas DeMaio

<!--在上面写上原文来源与作者-->