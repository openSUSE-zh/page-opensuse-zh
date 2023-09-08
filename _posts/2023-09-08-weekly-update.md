---
author: Poplar at twilight
date: 2023-09-08 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: KDE Gear 和 FreeRDP 在 Tumbleweed 中更新
image: /assets/posts/2023-09/gear.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 本周的快照大小不一，同时还发布了适用于 ARM 架构，更新的 Tumbleweed 快照。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

快照 [20230904] 对两个软件包进行了安全修复。XML 解析软件包 [libxml2] 解决了 [CVE-2023-39615]，该漏洞与可能导致全局[缓冲区溢出]的伪造 XML 有关，而 [libxml2-python] 则通过一个补丁缓解了该漏洞。

[20230904]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WXYAVFTLK4LFH44UMQH4VH2TFNAUUFQC/
[libxml2]: https://github.com/GNOME/libxml2
[CVE-2023-39615]: https://www.suse.com/security/cve/CVE-2023-39615.html
[libxml2-python]: https://github.com/vingd/libxml2-python
[缓冲区溢出]: https://en.wikipedia.org/wiki/Buffer_overflow

快照 [20230902] 更新了 [FreeRDP]。freerdp 2.11.0 的更新修复了各种输入验证问题，并解决了潜在的漏洞以增强安全性。freerdp 入了各种 [CMake] 选项，以便在构建包时提供更大的灵活性。快照发布了与 [LibreSSL] 相关的修复以及对 [endian systems] 的支持。该软件包还通过采用新的 [FFmpeg] [API] 来处理 H.264 编解码器。[php8] 8.2.10 的更新修复了 [CLI] 服务器崩溃并解决了 [MySQLnd] 扩展中的问题，以确保使用密码帐户进行正确的身份验证并防止[段错误]。[SDL2] 2.28.3 引入了 [G-Shark] GS-GP702 的游戏手柄映射，并且该软件包修复了 PS5 模式下 [Razer] Wolverine V2 Pro 控制器的触摸板事件。[xdg-utils] 的更新合并了上游补丁，并进行了更改以在发布时支持 [KDE Plasma 6]。快照中更新了其他几个软件包，包括 [suse-module-tools] 16.0.34、[virtiofsd] 1.7.2 等。

[20230902]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JK4K3O656KQCVRSNMZCGML7KLMG2ZI2A/
[FreeRDP]: https://www.freerdp.com/
[CMake]: https://cmake.org/
[LibreSSL]: https://www.libressl.org/
[endian systems]: https://en.wikipedia.org/wiki/Endianness
[FFmpeg]: https://www.ffmpeg.org/
[API]: https://en.wikipedia.org/wiki/API
[php8]: https://www.php.net/
[CLI]: https://en.wikipedia.org/wiki/Command-line_interface
[MySQLnd]: https://www.php.net/manual/en/book.mysqlnd.php
[段错误]: https://en.wikipedia.org/wiki/Segmentation_fault
[SDL2]: https://www.libsdl.org/
[G-Shark]: https://github.com/GSharker/G-Shark
[Razer]: https://www.razer.com/
[xdg-utils]: https://www.freedesktop.org/wiki/Software/xdg-utils/
[KDE Plasma 6]: https://community.kde.org/Plasma/Plasma_6
[suse-module-tools]: https://github.com/openSUSE/suse-module-tools
[virtiofsd]: https://gitlab.com/virtio-fs/virtiofsd

9 月份的第一个快照中更新了 30 多个软件包。快照 [20230901] 发布了 [KDE Gear] 的更新。文件管理器 [Dolphin] 现在可以隐藏临时文件和备份文件，从而使用户的文件视图更加整洁。Dolphin 还引入了显示尺寸计算进度等功能。文档查看器 [Okular] 通过允许将原因和位置等附加元数据添加到签名中来增强数字签名。[KDE] 的旅行助手包 [Itinerary] 现在支持导入在线火车票，并改进了从 [Air Asia]、[B&B Hotels]、[Deutsche Bahn]、[Eventbrite]、[FlixBus] 等多家公司文档中提取数据的功能。Web 浏览器 [Mozilla Firefox] 117.0 的更新进行了更改，以处理各个组件中的内存损坏问题，并修复了与整数溢出和未加密推送通知相关的问题。Firefox 还解决了 13 个 [CVE]。[git] 2.42.0 的更新有一些显着的变化，包括使用 `git pack-refs` 模式调整引用层次结构的能力，以及使用 `git pack-objects` 中的新钩子程序来枚举额外的对象以进行锚定。git 在处理 [GPG] 签名验证方面也进行了改进，并且增强了与稀疏索引功能的兼容性。[Linux 内核] 6.4.12 的更新修复了加密和 CIFS 中的错误处理。它还具有一些高级 Linux 声音架构 ([ALSA]) 片上系统 (ASoC) 更改和稳定性改进。快照中更新的其他几个软件包包括 [PipeWire] 0.3.79、[python-pip] 23.2.1、[LibreOffice] 7.6.1.1、[Mesa] 23.1.6、[AppStream] 0.16.3、[samba] 4.18.6 等。

[20230901]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/X7ATBMJWTWPPAH2OZJX35XFIAEPBNDMH/
[KDE Gear]: https://kde.org/announcements/gear/23.08.0/
[Dolphin]: https://apps.kde.org/dolphin/
[Okular]: https://okular.kde.org/
[kde]: https://kde.org/
[Itinerary]: https://apps.kde.org/itinerary/
[Air Asia]: https://www.airasia.com/
[B&B Hotels]: https://www.hotel-bb.com/
[Deutsche Bahn]: https://www.bahn.de/
[Eventbrite]: https://www.eventbrite.com/
[FlixBus]: https://global.flixbus.com/
[Mozilla Firefox]: https://www.mozilla.org/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[git]: https://github.com/git
[GPG]: https://gnupg.org/
[Linux 内核]: https://www.kernel.org/
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[PipeWire]: https://pipewire.org/
[python-pip]: https://pypi.org/project/pip/
[LibreOffice]: https://www.libreoffice.org/
[Mesa]: https://www.mesa3d.org/
[AppStream]: https://www.freedesktop.org/wiki/Distributions/AppStream/
[samba]: https://www.samba.org/

新的 [Tumbleweed arm 快照 20230904] 包括上面突出显示的软件的所有软件包更新。

[Tumbleweed arm 快照 20230904]: https://lists.opensuse.org/archives/list/arm@lists.opensuse.org/thread/E3ZRUDU7WCXSC4FKDQ2ZQ5WQ5KZ6CFEI/

------

原文：[KDE Gear, FreeRDP update in Tumbleweed](https://news.opensuse.org/2023/09/07/kde-gear-freerdp-up-in-tw/)，作者：Douglas DeMaio
