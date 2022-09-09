---
author: Hanjingxue Boling
date: 2022-09-09 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 结束了持续的每日更新，继续滚动中
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[Tumbleweed](https://get.opensuse.org/tumbleweed/) 连续每日发布新快照的记录在上周以 26 个快照的新记录结束，但 [openSUSE](https://get.opensuse.org/) Tumbleweed 似乎并没有随着快照持续发布的频率而放缓。

快照 [20220829](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/7EMUFLAU26GUSRBO5375FR63YX5R3H5B/) 打破了连胜纪录，但 Tumbleweed 本周继续快速前进，并发布了几个快照和软件包更新。

在详细讨论这些快照之前，[GNOME](https://www.gnome.org/) 43 可能需要一些援助才能将其纳入 Tumbleweed 快照中。如果你有兴趣，请阅读 @openSUSE 的[推文](https://twitter.com/openSUSE/status/1567513985271865344?ref_src=twsrc%5Etfw%7Ctwcamp%5Etweetembed%7Ctwterm%5E1567513985271865344%7Ctwgr%5Ea2ec627f8fcb14ea35b12478a3daa662de6d5995%7Ctwcon%5Es1_&ref_url=https%3A%2F%2Fnews.opensuse.org%2F2022%2F09%2F08%2Ftw-ends-streak-keeps-rolling%2F)并在 https://matrix.to/#/#gnome:opensuse.org 上与团队进行沟通。

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">The <a href="https://twitter.com/gnome?ref_src=twsrc%5Etfw">@gnome</a> 43 release candidate is packaged up in <a href="https://twitter.com/openSUSE?ref_src=twsrc%5Etfw">@openSUSE</a>&#39;s GNOME:Next, which is our unstable branch. The extensions haven&#39;t been tested. Looking for people to test. Chat at <a href="https://t.co/iEBQH4ZRt9">https://t.co/iEBQH4ZRt9</a> for more info. <a href="https://t.co/nTJuOkZ6ae">pic.twitter.com/nTJuOkZ6ae</a></p>&mdash; openSUSE Linux (@openSUSE) <a href="https://twitter.com/openSUSE/status/1567513985271865344?ref_src=twsrc%5Etfw">September 7, 2022</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 

最新发布的快照是 [20220907](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EJKDOJQ2HQCKHXRYBXNY24TDVLKWNE5G/)。[gnome-bluetooth](https://wiki.gnome.org/Projects/GnomeBluetooth) 42.4 的更新使其 [API](https://en.wikipedia.org/wiki/API) 接口现在可以导出 [UPower](https://upower.freedesktop.org/) 中列出的所有蓝牙设备的电池信息。[microos-tools](https://packagehub.suse.com/packages/microos-tools/) 2.16 更新了 [MicroOS](https://get.opensuse.org/microos/) 的文件和脚本。[libsoup](https://gitlab.gnome.org/GNOME/libsoup.git) 3.0.8 的更新对 HTTP/2 的可靠性进行了大量改进，并使用默认代理解析器修复了 `http` 代理身份验证。SVG 渲染库 [librsvg](https://gitlab.gnome.org/GNOME/librsvg) 已更新至 2.55.1 版本，并正在尝试为 librsvg 提供奇偶版本控制；奇数次要版本将被视为不稳定，偶数次要版本将被视为稳定。这应该很有趣！快照中更新了其他一些软件包，包括 [kernel-firmwarel](https://www.kernel.org/) 20220902 和 [yast2-vpn](https://github.com/yast/yast-vpn) 4.5.1 等。

[Linux 内核](https://www.kernel.org/)在快照 [20220906](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FSWRQZORTARWQWB5L6DGA4RJCZBPHYWF/) 中从 5.19.2 更新到 5.19.7。随着[内核](https://www.kernel.org/)中的 [amdgpu](https://github.com/radeonopencompute/rock-kernel-driver/) 驱动程序更新的同时，用户还收到一些 [btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 修复和更改。用户空间工具集软件包 [lvm2](https://sourceware.org/lvm2/) 2.03.16 的更新修复了一些[段错误](https://en.wikipedia.org/wiki/Segmentation_fault)，添加了几个补丁并修复了精简池扩展上已删除消息的丢失。[Plymouth](https://www.freedesktop.org/wiki/Software/Plymouth/) 22.02.122 的更新对虚拟现实进行了更改，因为不需要在[虚拟现实眼镜](https://en.wikipedia.org/wiki/Virtual_reality_headset)上显示启动屏幕。或者需要？文本编辑器 [vim](https://www.vim.org/) 9.0.0381 修复了一些崩溃、闪烁和发出警告的 [Clang](https://en.wikipedia.org/wiki/Clang) 静态分析器。快照中还对 [sqlite](https://www.sqlite.org/index.html) 3.39.3 和其他软件包进行了更新。

快照 [20220905](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LCR7HLZW5WQW565NHFVQVAURAJSUQJ32/) 中仅更新了两个包。网络映射工具 [nmap](https://nmap.org/) 发布 7.93 版本以[纪念 Nmap 发布 25 周年](https://nmap.org/p51-11.html)。恭喜！该工具升级了几个库并确保 [Nmap](https://nmap.org/) 使用 [OpenSSL](https://www.openssl.org/) 3.0 构建，同时不使用已弃用的 [API](https://en.wikipedia.org/wiki/API) 函数。该软件包还修复了一个错误，该错误会阻止它在未配置 IPv4 地址时发现 Linux 上的接口。另一个要更新的软件包是 Thunderbolt 3 设备管理器 [bolt](https://gitlab.freedesktop.org/bolt/bolt) 0.9.3。该更新围绕 [glib](https://wiki.gnome.org/Projects/GLib) 创建了一个工作。

快照 [20220904](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/RUJ2PAIXWPV7AZS3U3ZVMLNTH5UKMHY5/) 更新了十几个软件包。其中包括：[AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/) 0.15.5、[git](https://github.com/git) 2.37.3、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.43、[libzypp](https://github.com/openSUSE/libzypp) 17.31.1、[zypper](https://github.com/openSUSE/zypper) 1.14.56 和 [gc](https://www.hboehm.info/gc/) 8.2.2。[git](https://github.com/git) 的更新纠正了一些回归并进行了一些 `git fsck` 改进。openSUSE 的 [zypper](https://github.com/openSUSE/zypper) 确保 `up` 尊重求解器相关的命令行界面选项。

快照 [20220903](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NGLGIEHGPWUYWF5WLPNNNFBR5K7Z3DJG/) 对 [btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 进行了更新。文件系统 btrfs 的更新为 [LZO](http://www.oberhumer.com/opensource/lzo/) 和 [ZSTD](https://github.com/facebook/zstd) 压缩提供了一些可选支持；该更新还带来了与 [glibc](https://www.gnu.org/software/libc/) 2.36 的一些兼容性。[GCC](https://gcc.gnu.org/) 12.2.1+git416 的更新最近从主干向后移植了一些修复，并对 armv7l 架构进行了一些更改。像素编码器和色彩空间转换器包 [babl](https://gegl.org/babl/) 0.1.96 删除了一些补丁并修复了单指令多数据 ([SIMD](https://en.wikipedia.org/wiki/Single_instruction,_multiple_data)) 的非对齐数据崩溃。其他要更新的软件包是 [libvirt](https://libvirt.org/) 8.7.0、[lsscsi](http://sg.danny.cz/scsi/lsscsi.html) 0.32、[upower](https://upower.freedesktop.org/) 1.90.0 和几个 [RubyGems](https://rubygems.org/)。

自连续更新中断以来发布的第一个快照是快照 [20220901](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/D7ASEAMXO5K7ALZCB3X53D4HYJFV4KF5/)。此快照更新了 [curl](https://curl.se/) [7.85.0](https://youtu.be/I4vYSKjvHGE)。新版本中有 79 位贡献者；此次更新还修复了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。[CVE-2022-35252](https://curl.se/docs/CVE-2022-35252.html) 是在 curl 4.9 中引入的，[允许“姐妹站点”拒绝为兄弟站点提供服务](https://youtu.be/I4vYSKjvHGE?t=174)。该版本更新还增加了对[传输层安全协议](https://en.wikipedia.org/wiki/Transport_Layer_Security) 1.3 的支持。[NetworkManager](https://networkmanager.dev/) 1.40.0 在本次快照中更新；如果设备上的 [MAC](https://en.wikipedia.org/wiki/MAC_address) 发生变化，现在可以重新启动 [DHCP](https://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol)。NetworkManager 也进行了一些国际化和本地化更改。[Flatpak](https://flatpak.org/) 1.14.0 的更新改进了对在两个本地设备之间传输文件的支持，称为[侧载](https://en.wikipedia.org/wiki/Sideloading)。该软件部署和包管理实用程序还为 [libcurl](https://curl.se/libcurl/) 添加了包配置，以启用新的 HTTP 后端。快照中要更新的其他软件包包括 [ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.3.20220820、[grilo](https://wiki.gnome.org/Projects/Grilo) 0.3.15、[mariadb](https://mariadb.org/) 10.8.3、一个 [kdump](https://wiki.archlinux.org/title/Kdump) git 更新等。

------

原文：[Tumbleweed Ends Continuous Streak, Keeps Rolling](https://news.opensuse.org/2022/09/08/tw-ends-streak-keeps-rolling/)，作者：Douglas DeMaio