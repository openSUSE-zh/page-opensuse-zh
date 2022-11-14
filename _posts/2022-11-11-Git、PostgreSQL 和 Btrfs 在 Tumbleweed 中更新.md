---
author: Hanjingxue Boling
date: 2022-11-11 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Git、PostgreSQL 和 Btrfs 在 Tumbleweed 中更新
image: /assets/posts/2022-11/git.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在本周创下连续发布快照数量的历史新高，超过了之前的 26 个。

Tumbleweed 仍然在持续发布新的每日快照，提供了一些主要版本的软件更新以及几个错误修复更新。

使连续每日快照累计数量达到历史最高（29 个）的最新快照是 [20221109](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2RTQ6PUEFD5C3STFJBCAT2HKWFGH3JEP/)。此快照将 3D 图形包 [Mesa](https://www.mesa3d.org/) 和 Mesa-drivers 更新到版本 22.2.3。Mesa 删除了与[英特尔](https://www.intel.com/) Vulkan [API](https://en.wikipedia.org/wiki/API) 接口相关的包，并修复了一些影响持续集成的回归。[libzypp](https://github.com/openSUSE/libzypp) 17.31.5 的更新在包中创建了一个 `.no_auto_prune` 以防止自动清理孤立的存储库。[基于文本的用户界面](https://en.wikipedia.org/wiki/Text-based_user_interface)编写器 [ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.3.20221105 修复了另一个[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)，并从 10 月开始添加了一些补丁。快照中要更新的其他软件包包括 [mobile-broadband-provider-info](https://gitlab.gnome.org/GNOME/mobile-broadband-provider-info) 20221107、[elfutils](https://github.com/roolebo/elfutils) 0.188、[perl-Image-ExifTool](https://metacpan.org/pod/exiftool) 12.50 以及另外六个软件包。

快照 [20221108](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/E7NQWFLERM6P7SFQTWS42L5X47YBO2ID/) 对纸张设置包 [libpaper](https://packages.debian.org/unstable/source/libpaper) 2.0.3 进行了一次主要版本更新。libpaper 修复了当 `/HOME` 未设置时的[分段错误](https://en.wikipedia.org/wiki/Segmentation_fault)；该软件包还删除了一个补丁并修复了在解析纸张规格时出错的空间泄漏。开发人员不必担心 [git](https://github.com/git) 2.38.1 中两个已修复的 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。对 `--local` clone 优化的惊人行为进行了修复，解决了 [CVE-2022-39253](https://github.blog/2022-10-18-git-security-vulnerabilities-announced/#cve-2022-39253) 的问题；一个利用受害者将 `git shell` 暴露为登录 shell，并通过创建目录 `/HOME/git-shell-commands` 启用了其交互模式的漏洞 [CVE-2022-39260](https://github.blog/2022-10-18-git-security-vulnerabilities-announced/#cve-2022-39260) 已被修复。[nodejs19](https://nodejs.org/en/) 19.0.1 在本次更新中完成了固定迁移至 [OpenSSL](https://www.openssl.org/) 3。[bind](https://bind9.readthedocs.io/) 9.18.8 的更新添加了新功能，例如支持解析和验证 `dohpath` 服务参数，其中添加了 DNS 记录类型 SVCB。bind 现在在启动时和命名为 -V 的输出中记录了支持的加密算法。[GNOME](https://www.gnome.org/) 的 [gedit](https://wiki.gnome.org/Apps/Gedit) 43.1 修复了在某些情况下会在底部截断文本的问题；[dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html) 2.87 增加了对 DHCP 中继系统的 [IPv6](https://en.wikipedia.org/wiki/IPv6) 前缀委托的侦听。快照中要更新的其他包是 [libsoup](https://gitlab.gnome.org/GNOME/libsoup.git) 3.2.2、一些 [GNOME](https://www.gnome.org/) 43.1 更新和其他几个包。

快照 [20221107](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NSRTBXXCCIQ77XE5SNFP3A4OA4G3EXFP/) 非常小。它更新了 [xterm](https://invisible-island.net/xterm/) 375，修复了一些回归并更改了 [sixel](https://en.wikipedia.org/wiki/Sixel) 滚动资源的默认值，以更好地匹配 VT330/VT340 `DECSDM` 设置。根据变更日志，指纹读取包 [libfprint](https://gitlab.freedesktop.org/libfprint/libfprint) 有一个允许加载外部模块的分支，并且非自由模块将包含在 [Packman](http://packman.links2linux.de/) 存储库中。[make](https://www.gnu.org/software/make/manual/make.html) 4.4 版本对下一个版本的后向兼容性提出警告，并针对构建要求和其他向后不兼容问题发出若干警告。make 的次要更新中还有几个新特性和功能，例如“允许用户定义的函数定义一组局部变量：值可以从用户定义的函数内分配给这些变量，它们不会影响全局变量的分配。”

快照 [20221106](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JZVZ7KYBBDWHS5JQGHNPM67KZ74T2THB/) 也更新了一些软件包。[Mozilla Firefox](https://www.mozilla.org/) 106.0.5 修复了使用 Intel [Gemini Lake](https://en.wikichip.org/wiki/intel/cores/gemini_lake) CPU 的用户遇到的崩溃问题。[Linuxl](https://www.kernel.org/) kernel-firmware 20221031 为 Cirrus CS35L41 添加了固件，这是业界首个用于移动设备的 55 nm 智能音频放大器解决方案。更新至 6.0.7 版本的 kernel-source 还侧重于音频，其中包含一些 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 更改。DWC3 驱动程序进行了一些 USB 调整。XML 安全库 [xmlsec1](https://www.aleksey.com/xmlsec/index.html) 1.2.36 已迁移到 OpenSSL 3.0 [API](https://en.wikipedia.org/wiki/API) 接口，并且该软件包不支持使用低于 1.1.0 版本的 OpenSSL 和低于 2.7.0 版本的 [LibreSSL](https://www.libressl.org/)。

[Guy Fawkes Day](https://www.history.com/news/guy-fawkes-day-a-brief-history) 快照，[20221105](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XDPOBJQCF7WMFL4B6P4I6UUTTX7UE3QD/)，似乎适合更新 [firewalld](https://firewalld.org/) 1.2.1 和配置管理库 [augeas](https://github.com/hercules-team/augeas) 1.13.0。[firewalld](https://firewalld.org/) 修复了 nftables 在区域调度之前丢弃无效数据包的问题，并且该包将文档协议添加到 [rich language](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/security_guide/configuring_complex_firewall_rules_with_the_rich-language_syntax) 中以扩展当前的区域元素。[Augeas](https://github.com/hercules-team/augeas) 改进了 [readline](https://en.wikipedia.org/wiki/GNU_Readline) 集成以处理引用问题，并添加了一个新的 lens 来解析 `/proc/cmdline` 参数。本周快照中的另一个主要版本更新是从候选版本过渡到正式版本的 [postgresql](https://www.postgresql.org/) 15。postgresql 在管理本地和分布式部署中的工作负载方面具有显着优势，并改进了其内存和磁盘排序算法；根据[公告](https://www.postgresql.org/about/news/postgresql-15-released-2526/)，基于数据类型排序的基准测试加速了 25% 到 400%。其他一些软件包已更新。

快照 [20221104](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JAKYUTJXD7KOMFSEAK3APCIT5PQAR7S3/) 更新了 [KDE Gear 22.08.3](https://kde.org/announcements/gear/22.08.3/)。[KDE](https://kde.org/) 文件管理器 [Dolphin](https://invent.kde.org/system/dolphin) 的更新修复了不必要地打开新窗口的问题，并且修复了 [KGeography](https://invent.kde.org/education/kgeography) 地图上未在亚洲显示的巴林，因此请务必使用 [Plasma](https://kde.org/plasma-desktop/) 告诉您认识的孩子巴林并不神秘，像澳大利亚这样的岛屿大陆只是较小。[KDE Gear 22.08.3](https://kde.org/announcements/gear/22.08.3/) 还对其旅行预订包 [KItinerary](https://invent.kde.org/pim/kitinerary) 进行了更新，添加了一个 Italo 火车票提取器脚本，因此意大利的检票员将减少尴尬的对话。[sqlite3](https://www.sqlite.org/index.html) 3.39.4 的更新修复了一个长期存在的问题，如果程序使用应用程序定义的页面缓存，该问题在极少数情况下会导致数据库损坏。快照中更新了其他几个包，包括 [libvirt](https://libvirt.org/) 8.9.0、[php7](https://www.php.net/) 7.4.33 等。

在本周开始的两个快照中，有几个包值得一提。快照 [20221103](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4JQ4W7565VWVSQJGEJGLYKHZVHJN6BTI/) 将 [btrfsprogs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 更新到 6.0 版本，现在有一个选项 `-O` 接受来自 `-R` 的值来统一接口，但 `-R` 将继续工作。文件系统实用程序还为与 [Linux Kernel](https://www.kernel.org/) 6.1 RC 相关的 block-group-tree 提供了一些实验性 `mkfs` 支持。[xwayland](https://wayland.freedesktop.org/) 22.1.4 引入的一些回归，例如双滚轮事件和按键重复，已在 22.1.5 更新中得到修复。快照 [20221102](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/HLIWUJY5XQM4PXOXWVIWYCTTKVFFL556/) 将 [kernel-source](https://www.kernel.org/) 更新至 6.0.6 版本；将 [mpg123](https://www.mpg123.de/) 更新到 1.31.1 版本。

------

原文：[Git, PostgreSQL, Btrfs update in Tumbleweed](https://news.opensuse.org/2022/11/11/git-postgresql-btrfs-up-in-tw/)，作者：Douglas DeMaio