---
author: Hanjingxue Boling
date: 2022-10-21 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Audacity、Gear 和 GPG 在 Tumbleweed 中更新
image: /assets/posts/2022-10/audacity.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在本周持续发布新快照。

自 10 月 12 日以来，Tumbleweed 每天都会发布快照，本周带来了一些主要版本更新以及 [KDE](https://kde.org/) [Gear](https://kde.org/announcements/gear/22.08.2/) 更新。

最新的快照 [20221019](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MGBKM43VLEGB2ENMAJ42T3Z6JXPV6FBV/) 在几个小时前发布，更新了网络文件共享系统和用户空间工具 [cifs-utils](https://wiki.samba.org/index.php/LinuxCIFS_utils) 7.0。该更新修复了一些警告，包括一个编译器警告以及修复一些内存分配问题。Netscape 便携运行时 [mozilla-nspr](https://hg.mozilla.org/projects/nspr) 更新到 4.35 版，并且修复了使用 [clang](https://clang.llvm.org/) 编译器构建的问题。mozilla-nspr 还在某些平台上使用了许多在线处理器。Mozilla 的网络安全服务包 [mozilla-nss](https://firefox-source-docs.mozilla.org/security/nss/legacy/nss_releases/index.htm) 更新到 3.83 版本，删除了旧的 unix 支持，添加了两个 [DigitalSign](https://www.digitalsign.pt/en/) 根证书并更改了配置设置行为以跳过具有不受支持的强制扩展的配置，而不是这些失败；这主要是针对加密客户端 Hello 扩展。快照还更新了其他一些软件包。

[GNOME](https://www.gnome.org/) 的加密接口 [Seahorse](https://wiki.gnome.org/Apps/Seahorse) 在快照 [20221018](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/OPDYKAN5RYAX6KYM2D4BQZTZLUQV5QM2/) 中更新到主要版本 43。这个包加入了其他几个已经在滚动发布的 [GNOME 43 Guadalajara](https://release.gnome.org/43/) 包。Seahorse 修复了与授权密钥相关的警告，并且默认情况下禁用了通过 [DNS 服务发现](http://www.dns-sd.org/)的密钥共享。[gpg2](https://gnupg.org/) 更新至 2.3.8 版本，修复了 [Yubikey](https://www.yubico.com/products/) 5.4 固件的问题并修复了 `READKEY --format=ssh` 中的回归。[libsoup](https://gitlab.gnome.org/GNOME/libsoup.git) 3.2.1 的更新修复了轻微的内存泄漏，[libxml2](https://gitlab.gnome.org/GNOME/libxml2/-/wikis/home) 2.10.3 修复了[整数溢出](https://en.wikipedia.org/wiki/Integer_overflow)，解决了 [CVE-2022-40303](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-40303)；这对 [OpenStack](https://www.openstack.org/) Cloud 的 8 和 9 没有影响。[cfg80211](https://www.kernel.org/doc/html/v4.12/driver-api/80211/cfg80211.html) 是 [Linux](https://www.kernel.org/) 中 802.11 设备的配置 [API](https://en.wikipedia.org/wiki/API)，在 Kernel-source 6.0.2 更新中发生了一些变化。它修复了一个 [BSS 段](https://en.wikipedia.org/wiki/.bss)引用计数错误并避免了未传输的 [BSS](https://en.wikipedia.org/wiki/.bss) 列表损坏。[nodejs18](https://nodejs.org/en/) 更新至 18.11.0，进行了一些更改；它添加了一个实验性的 `watch` 模式。使 node 在 `watch` 模式下运行后，`watch` 会在导入的文件发生更改时重新启动进程。快照还更新了其他几个软件包，包括 [libzypp](https://github.com/openSUSE/libzypp) 17.31.4、[libgcrypt](https://www.gnupg.org/software/libgcrypt/index.html) 4.4.28、[yast2-network](https://github.com/yast/yast-network) 4.5.9 等。

快照 [20221017](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/26XESV4C3MC5NROARCQBN333Q7WM6GHX/) 更新了两个包。使用 Tumbleweed 的播客将注意到音频编辑包 [audacity](https://www.audacityteam.org/) 获得更新。Audacity 3.2.1 倒计时版本修复了一些错误并进行了小幅改进。其中之一修复了某些系统上的启动崩溃以及快速启动和停止播放时的冻结。用于操作模块元数据文件的 C 库 [libmodulemd](https://github.com/fedora-modularity/libmodulemd) 已更新至 2.14.0 版，并且它具有从索引中剥离 XMD 的新功能。

[KDE](https://kde.org/) 用户在快照 [20221016](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/7YK3XMZLR7INJMZCTYURMSKJSZF2ANWC/) 中连续第二次收到 [Gear 22.08.2](https://kde.org/announcements/gear/22.08.2/) 更新。[Gear 22.08.2](https://kde.org/announcements/gear/22.08.2/) 更新了几个包。文件存档器 [Ark](https://apps.kde.org/ark/) 停止在 [dolphin](https://apps.kde.org/dolphin/) 退出时杀死提取/压缩工作。[itinerary](https://apps.kde.org/itinerary/) 在更改门票时更新了活动页面的当前预订标识，并明确定位了活动门票的标题字段。Gear 的 [kalendar](https://apps.kde.org/kalendar/) 在新版本中进行了多项更新，例如修复了任务视图中的双击编辑以及实现使用标准键来查看导航操作。Gear 的视频编辑器 [Kdenlive](https://kdenlive.org/en/) 进行了多项更改，包括时间码显示，因此它可以监听配置文件的更改并自动调整每秒帧数。Kdenlive 还修复了部分损坏的关键帧的粘贴效果。用于在内存中存储 RDF 数据的轻量级 C 库 [sord](https://drobilla.net/software/sord.html) 0.16.14，修复了意外暴露内部 zix 符号的问题。第一个稳定版本随着 [gcr](https://gitlab.gnome.org/GNOME/gcr) 4.0.0 主要版本的更新而到来；更新日志中没有提供太多的信息。快照中要更新的其他包是 [perl-HTML-Parser](https://metacpan.org/pod/HTML::Parser) 3.79、[perl-HTTP-Message](https://metacpan.org/pod/HTTP::Message) 6.41、[perl-JSON](https://metacpan.org/dist/JSON) 4.10 等。

大多数 KDE [Gear 22.08.2](https://kde.org/announcements/gear/22.08.2/) 软件包在快照 [20221015](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/SD4EULDOI2WGJP5N4BBKLIAYGLBY6ONN/) 中发布，只有少数其他软件包在此快照中更新。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 的 4.5.46 版本合并了一项更改，允许它[与其他 linux 风格一起使用](https://github.com/openSUSE/libstorage-ng/pull/899)。[libzypp](https://github.com/openSUSE/libzypp) 17.31.3、[yast2](https://github.com/yast/yast-yast2) 4.5.17 等也有更新。

快照 [20221014](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/5XD56SXTHBHBWX2F5FVFY63VTVONDCOH/) 和 [20221013](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/PBG6BOTLON7FY3F2EJMFYPY3WQCYCM7D/) 都有多个包更新。用于控制网络驱动程序和硬件的实用程序 [ethtool](https://mirrors.edge.kernel.org/pub/software/network/ethtool/) 6.0 更新修复了广告模式自动选择的问题。3D 图形包 [Mesa](https://www.mesa3d.org/) 22.2.1 实现了 Vulkan 1.3 API，修复了 Sony PlayStation 3 开源模拟器 [RPCS3](https://rpcs3.net/) 在没有任何内容被渲染时出现的回归。[yast2-bootloader](https://github.com/yast/yast-bootloader) 4.5.7 的更新可防止 [grub2](https://www.gnu.org/software/grub/manual/grub/grub.html) 密码泄漏到日志中。[ImageMagick](https://imagemagick.org/index.php) 7.1.0.50 的更新添加了一个私有 API 来遍历链表而不使用[信号量](https://en.wikipedia.org/wiki/Semaphore_(programming))，并且它具有最新的 [automake 配置](https://github.com/ImageMagick/ImageMagick/commit/a88a3b5b6a81e4d123e31928402c4fce2ccd7476)。

------

原文：[Audacity, Gear, GPG update in Tumbleweed](https://news.opensuse.org/2022/10/20/audacity-gear-gpg-update-in-tw/)，作者：Douglas DeMaio