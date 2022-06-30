---
author: Hanjingxue Boling
date: 2022-06-30 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: OpenSSL、Squid 和 Dracut 在 Tumbleweed 中更新
image: /assets/posts/2022-06/Vimlogo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

自上周五以来，openSUSE Tumbleweed 已经发布了五个快照。

每个快照都更新了少量的软件包。

快照 [20220629](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LRMTGN4PUJUWCXLK6Q4JHDVLOVGLDTMO/) 将 OpenSSL 更新到版本 1.1.1p。[OpenSSL](https://www.openssl.org/) 的新版本修复了影响 `c_rehash` 脚本的 [CVE-2022-2068](https://www.openssl.org/news/vulnerabilities.html#CVE-2022-2068)，该漏洞会导致脚本未正确清理 shell 元字符以防止命令注入。某些操作系统分发的 `c_rehash` 脚本会自动执行，给攻击者提供了使用该脚本的权限执行任意命令的机会。快照中更新的另一个包是 [perl-JSON](https://metacpan.org/dist/JSON) 4.07，它提供了 4.10 版本的一些向后移植更新。 [dmidecode](https://www.nongnu.org/dmidecode/) 3.4 更新中出现了新的内存设备类型、处理器升级、插槽类型和处理器特性等。 快照中还有几个输入法引擎更新，例如 [ibus-table](https://github.com/mike-fabian/ibus-table) 1.16.9、[ibus-table-chinese](https://github.com/ibus/ibus/wiki) 1.8.8 等。

快照 [20220628](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4QICJA2S3NOF2GKQSVAIXXMJZC76BY2X/) 中更新了一个包。[mpg123](https://www.mpg123.de/) 1.30.0 更新了使用外部工具/库来支持 HTTPS 的新网络后端，并且终端控制键现在区分大小写。

快照 [20220626](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/KMDQJTVQHTU44OT63VCU2GECTEOEF5CZ/) 发布了两个 [Python 包索引](https://pypi.org/)更新。python-qt5 5.15.7 添加了每个蓝牙服务的 UUID 的缺失构造函数。该包是一套全面的用于 Qt v5 的 Python 绑定。另一个 [PyPI](https://pypi.org/) 包更新是 [python-rsa](https://pypi.org/project/rsa/) 4.8，它切换到 [Poetry](https://python-poetry.org/) 进行依赖和发布管理，并在使用私钥解密时使用[孙子定理](https://en.wikipedia.org/wiki/Chinese_remainder_theorem)使解密速度提高 2-4 倍。

快照 [20220625](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/45RX7ITPJ5PN6GOWVIFPFISIHGY6FHRR/) 发布了文本编辑器 [vim](https://www.vim.org/) 8.2.5154 版本，此版本在命令行上使用表达式时修复了无效的内存访问，并进行了一些与 [valgrind](https://valgrind.org/) 相关的修复。缓存代理 [squid](http://www.squid-cache.org/) 在 5.6 版本更新中修复了一些解析器回归并改进了对 [Gopher](https://en.wikipedia.org/wiki/Gopher_(protocol)) 响应的处理。开源打印包 cups-filters 1.28.15 进行了改进，可以更准确地识别旧激光打印机并在适当时切换到 Poppler。Linux [内核](https://www.kernel.org/) 5.18.6 版本也出现在快照中，并且有数个 [ASoc](https://www.alsa-project.org/wiki/ASoC) 增强和修复。内核还有几个用于 [arm64](https://www.arm.com/) 架构的 [KVM](https://www.linux-kvm.org/page/Main_Page) 改进，并处理了一些 [GCC](https://gcc.gnu.org/) 12 警告。

快照 [20220624](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2PSJM7SCXEI57GW7E6FNQ6HMBM3LRSY7/) 更新了 [dracut](https://dracut.wiki.kernel.org/index.php/Main_Page)，此次更新停止了 shell 选项的泄漏，并为 openSUSE 设备构建器 [kiwi](https://github.com/OSInside/kiwi) 提供了一个临时解决方法。[gstreamer](https://gstreamer.freedesktop.org/) 1.20.3 做了一些 [WebRTC](https://webrtc.org/) 和性能改进；它还修复了在某些[英特尔](https://www.intel.com/)硬件上使用硬件加速 [VA-API 解码器](https://github.com/intel/libva)进行的加扰视频播放的问题。用于用户帐户查询和操作的 D-Bus 接口 [accountsservice](https://gitlab.freedesktop.org/accountsservice/accountsservice)，从版本 0.6.55 更新到 22.08.8。快照中要更新的其他软件包包括 [Imath](https://github.com/AcademySoftwareFoundation/Imath) 3.1.5、[KDE](https://kde.org/) 的 [amarok](https://amarok.kde.org/) 等。

------

原文：[OpenSSL, Squid, Dracut Update in Tumbleweed](https://news.opensuse.org/2022/06/30/openssl-squid-dracut-update-in-tw/)，作者：Douglas DeMaio