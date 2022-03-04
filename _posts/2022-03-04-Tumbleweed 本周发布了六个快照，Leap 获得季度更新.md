---
author: Hanjingxue Boling
date: 2022-03-04 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 本周发布了六个快照，Leap 获得季度更新
image: /assets/posts/2022-03/twff.png
categories:
- 更新通告
tags:
- Tumbleweed
- Leap
- 翻译作品
- 官方新闻
---

本周充满了围绕 [openSUSE](https://get.opensuse.org/) 的好消息。

除了 [openSUSE Leap 15.4](https://get.opensuse.org/testing/) 进入 [beta 构建阶段](https://news.opensuse.org/2022/03/02/leap-reaches-beta-build-phase/)之外，openSUSE 的滚动分支 [Tumbleweed](https://get.opensuse.org/tumbleweed/) 本周发布了六个快照，更新了一些网络包；[Leap 15.3](https://get.opensuse.org/leap/) 正在推出其第二个季度的 repin ISO。

最新的快照是 [20220302](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/5YQZP366ZUJI6XL22X53UIFJUZQJRJ4U/)。[NetworkManager](https://networkmanager.dev/) 1.36.0 重写了网络层配置，从而在同时应用来自多个源（[DHCP](https://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol)、手动配置、VPN）的寻址信息时会具有更强的处理能力；性能和内存也应该随着更新而略有提高。[PipeWire](https://pipewire.org/) 0.3.47 进行了修复，删除了[无限循环](https://en.wikipedia.org/wiki/Infinite_loop)，并且修复了缓冲区大小处理，使一些应用程序不再出现卡顿。快照中要更新的其他包包括 [nftables](https://git.netfilter.org/nftables/) 1.0.2、[ruby3.1](https://www.ruby-lang.org/en/) 3.1.1、[xscreensaver](https://www.jwz.org/xscreensaver/) 6.03 和几个 [Python 包索引](https://pypi.org/)版本更新。

缓存代理 [squid](http://www.squid-cache.org/) 5.4.1 在快照 [20220301](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YRD2XZTTUZQAGCEGJKXV5BSCTWX25LRM/) 中更新；该软件包进行了一些代码清理并进行了一些显著的开发人员更改。窗口管理器 [screen](https://www.gnu.org/software/screen/) 4.9.0 消除了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)，该漏洞可以通过精心设计的 [UTF-8](https://en.wikipedia.org/wiki/UTF-8) 字符序列进行拒绝服务攻击；这已通过替换弃用的 `combchar.diff` 得到解决。其他要更新的包是 [autoyast2](https://github.com/yast/yast-autoinstallation) 4.4.32、[yast2-trans](https://software.opensuse.org/package/yast2-trans) 等。

快照 [20220228](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/7MT5GKXE4U7SXLXGZVXAXCTW5KEPQXZE/) 更新了一些 [RubyGem](https://rubygems.org/) [RSpec](https://rspec.info/) 包，并且更新了 [branding-openSUSE](https://github.com/openSUSE/branding) 包，它删除了[发行版 Logo](https://github.com/openSUSE/artwork/tree/master/logos) 的 [systemd](https://freedesktop.org/wiki/Software/systemd/) 图标。[fwupd](https://fwupd.org/) 软件包更新到 1.7.6。此固件更新包添加了一些新功能，例如为永远不希望自动添加 [capsule header](https://blog.csdn.net/u011057409/article/details/117636507) 的 [UEFI](https://en.wikipedia.org/wiki/Unified_Extensible_Firmware_Interface) 设备添加标志。它还修复了在 coreboot 模式下加载 flashrom 设备的问题。[yast2-installation](https://github.com/yast/yast-installation) 4.4.45 更新修复了安装期间 [VNC 服务器](https://en.wikipedia.org/wiki/Virtual_Network_Computing)的问题。

快照 [20220227](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/43MWJ6BXGCHIHPZXTXWK3P4EREJXCRVR/) 将 [firewalld](https://firewalld.org/) 更新到 1.1.0 版本。新版本添加了 [http3](https://en.wikipedia.org/wiki/HTTP/3) 并为 [WS-Discovery](https://en.wikipedia.org/wiki/WS-Discovery) 发现添加了几个服务定义。数据存储包 [hdf5](https://en.wikipedia.org/wiki/Hierarchical_Data_Format) 1.10.8 添加了新的构建工具并修复了一些漏洞，例如 [CVE-2018-17432](https://www.suse.com/security/cve/CVE-2018-17432.html)，该漏洞将使攻击者能够通过精心制作的 hdf5 文件进行拒绝服务攻击。[urlscan](https://urlscan.io/) 0.9.9 切换到 [f-strings](https://realpython.com/python-f-strings/) 并且更新了 `setup.py`。

[ImageMagick](https://imagemagick.org/index.php) 7.1.0.26 更新优化了缩略图调整算法的性能，该更新在快照 [20220226](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VNAE5YA22EGNX45POA336HVHDDDDK3I5/) 中发布。一些无法识别的颜色也在此次更新中得到修复。3D 图形包 [Mesa](https://www.mesa3d.org/) 修复了 21.3.7 更新中的一些回归问题。[Embedded Linux library (ell)](https://git.kernel.org/pub/scm/libs/ell/ell.git/) 0.49 版本修复了影响 [DHCP](https://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol) 服务器的问题。[nodejs17](https://nodejs.org/en/) 17.5.0 更新添加了 [npm](https://www.npmjs.com/) 8.4.1 的依赖，并添加了对 fetch [API](https://en.wikipedia.org/wiki/API) 的实验性支持；此更新添加了一个 `--experimental-fetch` 标志，用于安装 `fetch`、`Request`、`Response` 和 `Headers` 全局变量。[Linux Kernel](https://www.kernel.org/) 5.16.11 进行了几项[伯克利包过滤器](https://en.wikipedia.org/wiki/Berkeley_Packet_Filter)调整。Kernel 还修复了一些影响[直接渲染管理器](https://en.wikipedia.org/wiki/Direct_Rendering_Manager)驱动程序的问题。快照中要更新的其他软件包包括 [freerdp](https://www.freerdp.com/) 2.6.0、[libzypp](https://github.com/openSUSE/libzypp) 17.29.5、[zypper](https://github.com/openSUSE/zypper) 1.14.52 和 [yast2-trans](https://software.opensuse.org/package/yast2-trans) 的几个翻译更新。

上周五快照 [20220225](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/RVG3NG6B4KVASAJQ5VZ7Q7MFYPS5AGZE/) 将 [ModemManager](https://www.freedesktop.org/wiki/Software/ModemManager/) 从版本 1.14.8 更新到 1.18.6。控制移动宽带设备和连接的 [DBus 激活守护程序](https://gitlab.freedesktop.org/mobile-broadband/ModemManager)现在可以在“快速挂起/恢复”模式下运行；挂起时不会触发显式数据断开连接，也不会从头开始进行显式设备重新探测。相反，守护进程会在挂起时尝试刷新所有接口的状态。[富士康](https://www.foxconn.com/)增加了对 T99W175 5G 无线模块的支持，其中包括内置的 FCC 解锁程序，富士康还增加了新的[英特尔](https://www.intel.com/) MBIM [高通](https://www.qualcomm.com/)设备更新固件方法。[Fetchmail](https://www.fetchmail.info/) 6.4.27 更新了罗马尼亚语翻译并将 [wolfSSL](https://github.com/wolfssl/wolfssl) 升级到 5.1.1 版本，以引入安全修复程序。[rubygem-faraday](https://rubygems.org/gems/faraday) 2.2.0 软件包是快照中唯一要更新的其他软件包。

## Leap 季度更新

openSUSE Leap 15.3 季度性更新的 respin ISO 镜像文件预计很快就会发布。Leap 15.3 ISO 文件的第一个季度更新[于去年 10 月发布](https://lists.opensuse.org/archives/list/project@lists.opensuse.org/thread/GFTDCDUUZ4L34WNNRUI5A2VKJSZYPONN/)。Respin ISO 根据通用版本更新原始 ISO 镜像文件，并包含上一季度的所有更新。Respin ISO 允许用户立即采用最新的错误修复和更新，这有助于减少安装后下载和在线更新的带宽使用。有关季度版本发布的更多信息，请参阅 Leap 路线图。

------

原文：[Tumbleweed Has Six Snapshots, Leap Gets Quarterly Respin](https://news.opensuse.org/2022/03/04/tw-has-six-snap-leap-qr/)，作者：Douglas DeMaio