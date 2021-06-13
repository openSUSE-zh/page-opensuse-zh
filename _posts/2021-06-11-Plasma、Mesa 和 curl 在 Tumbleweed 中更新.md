---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-06-12 00:10:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Plasma、Mesa 和 curl 在 Tumbleweed 中更新
image: /assets/posts/2021-06/Plasma、Mesa_和_curl_在_Tumbleweed_中更新.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- KDE
---

本周发布了三个 openSUSE Tumbleweed 快照，周末还有可能发布另一个快照，如果它及时通过 [openQA](https://openqa.opensuse.org/)测试的话。

最新的快照 20210609，为 [KDE](https://kde.org/) 用户带来了更新；[Plasma 5.22.0](https://kde.org/announcements/plasma/5/5.22.0/) 几天前刚刚发布，根据发布公告，它全面提高了稳定性和实用性。开发人员在该版本的美学上投入了大量的工作。该版本中最大的新功能被称为自适应透明度（Adaptive Transparency），它提供了一个令人愉快的半透明面板和面板小部件，如果有任何最大化的窗口，这些小部件就会变得完全不透明；这样做是为了避免在用户需要集中注意力时出现任何视觉干扰。新版本还在系统设置中打开了一个快捷设置页面，使用户可以直接访问最常用的设置，以及访问最多的设置。[Mozilla Thunderbird](https://www.thunderbird.net/) 在 78.11.0 版本中更新了一个过期的钥匙圈，并修复了两个[常见漏洞和暴露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。[Wireshark](https://www.wireshark.org/) 3.4.6 修复了一个显示过滤器崩溃和宏过滤器对转义字符的处理。随着 [filesystem](https://software.opensuse.org/package/filesystem) 从 15.5 版跳到 84.87 版，对基本目录结构进行了一次重大的版本更新。[GNOME 40](https://forty.gnome.org/) 在快照中也得到了一些更新，gnome-software 被更新到了 40.2 版；一些崩溃的修复和对 [Flatpak](https://flatpak.org/) 的低磁盘空间错误报告的改进。其他在快照中更新的软件包有 [git](https://github.com/git) 2.32.0、[powertop](https://01.org/powertop/) 2.14、[xfce4-settings](https://www.xfce.org/) 和 [nftables](https://git.netfilter.org/nftables/) 0.9.9。

快照 [20210605](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/R2OCXFKPN2RU5NBQPTGEWU2QJ6QAWLTX/) 提供了[curl](https://curl.se/) 7.77.0 的更新，修复了三个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；[CVE-2021-22901](https://curl.se/docs/CVE-2021-22901.html) 在使用 curl 库握手一个新的 TLS 会话或在现有连接上请求一个客户端证书时，可能被欺骗使用已经释放的内存。打印协议 [cups-filters](https://github.com/OpenPrinting/cups-filters) 更新到1.28.8版本，并修复了几个内存泄漏问题，还为灰度模式（grayscale mode）提供了一些修正。[chrony](https://chrony.tuxfamily.org/) 4.1 的一个主要版本更新在快照中到达。网络时间协议（Network Time Protocol）的较新实现增加了对网络时间安全（Network Time Security, NTS）认证的支持，并通过低级加密库 [Nettle](https://git.lysator.liu.se/nettle/nettle) 增加了对高级加密标准密钥的支持。在更新到 1.2.5 版本时，为[高级 Linux 声音架构](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture)包（Advanced Linux Sound Architecture, ALSA）和 asla-plugins 包增加了多个补丁。容器镜像和镜像仓库的命令行工具包 [Skopeo](https://github.com/containers/skopeo) 更新到了1.2.3版本，并增加了对登录和注销注册表参数的修复。[yast2](https://yast.opensuse.org/) 4.4.9版的更新禁用了基 于产品和虚拟机的休眠功能。快照中其他需要更新的软件包有 [libvirt](https://libvirt.org/) 7.4.0、[kmod](https://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git) 29、[vim](https://www.vim.org/) 8.2.2918 等。

在快照 [20210604](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TL2ELE37YFOAC2FRFSPIP3H742GAPDXX/) 中，3D 图形驱动 [Mesa](https://www.mesa3d.org/) 包和 Mesa-drivers 包更新到 21.1.2 版本。在 Mesa 更新中，[英特尔](https://www.intel.com/)的 Tiger Lake 芯片在渲染时出现的一些闪烁得到了修复。大多数更新包括针对 [AMD](https://www.amd.com/en) 和英特尔的变化，但也有相当数量的 [arm](https://www.arm.com/) 修复。[apache2](https://httpd.apache.org/) 2.4.48 的更新中进行了多项修复，在服务器[API](https://en.wikipedia.org/wiki/API)中增加了 [SSL](https://en.wikipedia.org/wiki/Transport_Layer_Security#SSL_1.0,_2.0,_and_3.0) 相关的查询功能。[Thunderbolt 3](https://en.wikipedia.org/wiki/Thunderbolt_(interface)) 设备管理器 [bolt](https://gitlab.freedesktop.org/bolt/bolt) 的更新更新到了 0.9.1 版本，修复了日志，现在有了嵌入式 thunderbolt 控制器的主机识别。[Redis](https://redis.io/) 6.2.4 修复了一些崩溃和一个利用[整数溢出](https://en.wikipedia.org/wiki/Integer_overflow)漏洞的 CVE。[zypper](https://en.opensuse.org/Portal:Zypper) 软件包在版本更新到 1.14.45 时增加了`trust GPG key`（信任 GPG 密钥）的提示；该软件包还收到了 [Kabyle](https://en.wikipedia.org/wiki/Kabyle_language) 的翻译，这是一种在北非使用的语言。其他在快照中更新的软件包有 [remmina](https://remmina.org/) 1.4.18，[xapps](https://github.com/linuxmint/xapp) 2.2.0，[hwdata](https://github.com/vcrhonek/hwdata) 0.348 等等。

------

原文：[Plasma, Mesa, curl Update in Tumbleweed](https://news.opensuse.org/2021/06/11/plasma-mesa-curl-update-in-tw/)，作者：Douglas DeMaio

<!--在上面写上原文来源与作者-->

