---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-09-03 18:50:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Wireshark、PipeWire 和 Audacity 在 Tumbleweed 中更新
image: /assets/posts/2021-09/2021_09_03_Wireshark、PipeWire_和_Audacity_在_Tumbleweed_中更新.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

自上周的回顾以来，openSUSE 滚动分支 Tumbleweed 的快照版本一直在不断地向用户发布。

这篇回顾将涵盖 8 月 26 日以来的五个快照。每一个快照都提供了大约几个更新的软件包。

快照 [20210831](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/PJMQIWYG3GYSWVPSCOL4RKIRVTMXB4IY/) 将 [bind](https://bind9.readthedocs.io/) 更新至 9.16.20 版本，修复了一个[公共漏洞和披露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；CVE-2021-25218 ，一个可能使攻击者滥用路径[最大传输单元](https://en.wikipedia.org/wiki/Maximum_transmission_unit)发现协议，欺骗 bind 超过 MTU 接口的断言错误得到修复。用于操作模块元数据文件的  C 语言库 [libmodulemd](https://github.com/fedora-modularity/libmodulemd) 更新至 2.13.0，modulemd-validator 使用户能够通过一个新的 `--type` 选项来限制文件类型。快照中其他需要更新的软件包是 [libqmi](https://github.com/freedesktop/libqmi) 1.28.8 和 [libjpeg-turbo](https://libjpeg-turbo.org/) 2.1.1，它们修复了影响 [AArch64](https://en.wikipedia.org/wiki/AArch64) 和 [arm](https://www.arm.com/) 32 位硬件的几个回退问题。

[Linux 内核](https://www.kernel.org/) 5.13.13 是快照 [20210830](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4WQVX4254BKHW2TVAL2WOOCDERSM342X/) 中更新的两个软件包之一。[直接渲染管理器](https://en.wikipedia.org/wiki/Direct_Rendering_Manager)在内核更新中进行了一些修复，并增加了一个 AAL 输出大小的配置。此次内核更新还为戴尔 [XPS 15 9510](https://www.dell.com/de-de/shop/laptops/xps-15-laptop/spd/xps-15-9510-laptop) 笔记本电脑中的 4 个扬声器输出启用了[高级 Linux 声音体系](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture)。快照中的另一个更新包是 [perl-Image-ExifTool](https://exiftool.org/)，它的版本更新至 12.30 。

在快照 [20210828](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/RQAS5UAZSZI4QMI3B7WCSXCIX75PMGXU/) 中，[OpenSSL](https://www.openssl.org/) 更新到 1.1.1l 版本时，解决了两个 CVE ；其中一个 CVE 修复了 SM2 解密缓冲区溢出，这可能会允许改变应用程序的行为或导致应用程序崩溃。ALSA 设备的内部延迟现在可以用新的 [PipeWire](https://pipewire.org/) 0.3.34 进行配置，Tumbleweed 在音频和视频包中启用了 [libcamera](https://libcamera.org/) 的使用，以允许一些实验性支持。网络协议分析仪 [Wireshark](https://www.wireshark.org/) 3.4.8 提供了一些修复；其中一个修复解决了在处理蓝牙手柄值通知时的一个分析器错误。快照中更新的其他软件包有：[libgcrypt](https://gnupg.org/software/libgcrypt/index.html) 1.9.4、[libssh](https://www.libssh.org/2021/08/26/libssh-0-9-6-security-release/) 0.9.6、[pkgconf](https://github.com/pkgconf/pkgconf) 1.8.0、[python-aioitertools](https://pypi.org/project/aioitertools/) 0.8.0 和 [yast2-installation](https://yast.opensuse.org/) 4.4.17，它杀死了许多 [YCP 僵尸](https://github.com/yast/zombie-killer)；YCP 是 YaST 在转移到 [Ruby](https://www.ruby-lang.org/en/) 之前最初使用的语言。

声音艺术家和音乐家们可以使用快照 [20210827](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FM23DBOMVSEAKTZNKKINTOGJRJRJUKLB/) 中的新版 [Audacity](https://www.audacityteam.org/) 。3.0.4 版本的 Audacity 修复了与 [GCC 11](https://gcc.gnu.org/) 的兼容性问题；它还提供了一些因使用滤波曲线均衡器或图形均衡器时使用多重包络点而影响的崩溃修复。本次快照对 [gnome-desktop](https://www.gnome.org/) 40.4 进行了版本升级。快照中包含了八个月的 [mobile-broadband-provider-info](https://github.com/GNOME/mobile-broadband-provider-info) 更新，2021805 版本改善了欧洲、非洲和美洲的服务供应商。快照中其他需要更新的软件包是三个 [RubyGems](https://rubygems.org/) 软件包，[ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.2.20210814 和 [publicsuffix](https://publicsuffix.org/) 20210823。

快照 [20210826](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YQEVJKAV4AFGX7II5U4MRRAIQLRMCV3E/) 在上次的 Tumbleweed 博客中没有涉及。该快照更新了 [libopenmpt](https://openmpt.org/) 0.5.11，软件包管理库 [libzypp](https://github.com/openSUSE/libzypp) 17.28.1，USB 网络协议 [usbredir](https://www.spice-space.org/usbredir.html) 0.11.0，文件系统调试工具 [xfsprogs](https://www.linuxfromscratch.org/blfs/view/svn/postlfs/xfsprogs.html) 5.13.0和 [yast2-add-on](https://yast.opensuse.org/) 4.4.1。

------

原文：[Wireshark, PipeWire, Audacity Update in Tumbleweed](https://news.opensuse.org/2021/09/03/wireshark-pipewire-audacity-update-in-tw/)，作者：Douglas DeMaio
