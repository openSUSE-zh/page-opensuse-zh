---
author: Hanjingxue Boling
date: 2022-05-01 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Mesa 和 ImageMagick 在 Tumbleweed 中更新
image: /assets/posts/2022-05/orca.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE [Tumbleweed](https://get.opensuse.org/tumbleweed/) 本月持续发布新快照。本周我们将查看自上周五以来在四个快照中发布的软件包。

然而，在进入这些快照之前，需要注意的是 [NetworkManager](https://networkmanager.dev/) 进行了一个更改，预计将在即将发布的快照中出现；它将为[先前快照中所做的 wifi 块更改](https://forum.suse.org.cn/t/topic/15025)提供修复，此前的更改导致某些用户无法连接 WiFi。[snapper](https://doc.opensuse.org/documentation/leap/archive/15.0/reference/html/book.opensuse.reference/cha.snapper.html) 与 [Btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 的优势可以让 [openSUSE](https://get.opensuse.org/) Tumbleweed 用户通过回滚系统保持网络连接；然后，用户也可以在下周更新而不会因此停滞。

最新的快照 [20220523](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/W24SLRECQV2OF2GS22REZ6FXCIW6D3GW/) 提供了三个包更新。其中包括对安全通信库 [gnutls](https://www.gnutls.org/) 3.7.5 的更新，为未来的发布奠定了基础；该软件包通过添加选项以禁用 TLS 1.2 中的会话凭证使用，因为它不提供前向机密性；TLS 1.2 具有未来的向后不兼容性。快照中要更新的另外两个包是 [libxkbcommon](https://github.com/xkbcommon/libxkbcommon) 1.4.1 和 [python-sympy](https://docs.sympy.org/latest/index.html) 1.10.1，它们删除了长期弃用的 `densearith`、`densesolve` 和 `densetools`。

3D 图形库 [Mesa](https://www.mesa3d.org/) 22.1.0 在快照 [20220522](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/UZKKJQ6VHYXGZ5PSHQPARBKILVJEIXBY/) 中发布；此处更新包括一些新功能，例如对 Intel Alchemist DG2 平台的支持、对 [Lavapipe](https://www.phoronix.com/scan.php?page=news_item&px=Lavapipe-Vulkan-1.3-Pending) 的 Vulkan 1.3 支持以及用于 [Zink](https://docs.mesa3d.org/drivers/zink.html) 的 Kopper 接口反向移植。[aws-cli](https://aws.amazon.com/cli/) 1.24.4 的更新在 `GetStageDeploymentIntegrationTests` 和 `ListStageDeploymentIntegrationTests` [API](https://en.wikipedia.org/wiki/API) 的响应中添加了一个可选的 `DeploymentResult` 字段。该版本还增加了对人类可读警报的支持。gtk3 3.24.34 更新了翻译并修复了 [GCC](https://gcc.gnu.org/) 12 的构建问题。照片管理器 [shotwell](https://gitlab.gnome.org/GNOME/shotwell) 0.30.16 修复了深色模式壁纸以及来自索尼 A7C 相机的导入和视频的问题。快照中要更新的其他软件包包括 [iptables](https://linux.die.net/man/8/iptables) 1.8.8、[yast2-network](https://github.com/yast/yast-network) 4.5.2 等。

[Mozilla Firefox](https://www.mozilla.org/) 100 第个小版本更新在快照 [20220521](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IQWNVN2HQZ6XO3O3RFE6CUYYE2SHWXYD/) 中发布。该更新处理了两个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)，即 [CVE-2022-1802](https://www.suse.com/security/cve/CVE-2022-1802.html) 和 [CVE-2022-1529](https://www.suse.com/security/cve/CVE-2022-1529.html)，火狐浏览器还修复了使用 Netflix 时画中画模式下的字幕问题。[Linux 内核](https://www.kernel.org/) 5.17.9 更新修复了 Nvidia 显卡的开源驱动程序 [Nouveau](https://nouveau.freedesktop.org/) 中潜在的理论漏洞；还修复了 [s390](https://en.wikipedia.org/wiki/IBM_System/390) 的潜在内存泄漏问题。

[ImageMagick](https://imagemagick.org/index.php) 7.1.0.35 更新在快照 [20220520](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NK2XHGBZPXF36FOHUEOB3NMWUBEV4UUX/) 中发布。图像编辑器 ImageMagick 删除了一些特殊的 dolor 扣除并修复了临时文件泄漏。沙盒工具 [bubblewrap](https://github.com/containers/bubblewrap) 0.6.2 对安装目录进行了更改，并允许使用较旧的 [glibc](https://www.gnu.org/software/libc/) 进行编译。[GNOME](https://www.gnome.org/) 的字符映射 [gucharmap](https://wiki.gnome.org/Apps/Gucharmap) 14.0.3 改进了韩文[汉字](https://en.wikipedia.org/wiki/Hanja)发音属性并启用了 [Unicode](hhttps://www.unicode.org/main.html) 块的字母排序。快照中要更新的其他包是一些库，例如 [yast2-packager](https://github.com/yast/yast-packager) 4.5.4 和 [orca](https://wiki.gnome.org/Projects/Orca) 42.1；orca 对 [WebKitGtk](https://webkitgtk.org/) 的工具包名称大小写的处理进行了一些更改，因此旧版本的 [orca](https://wiki.gnome.org/Projects/Orca) 继续使用新版本的 WebKit 渲染 引擎。

------

原文：[Mesa, ImageMagick Packages Update in Tumbleweed](https://news.opensuse.org/2022/05/25/mesa-imagemagick-update-in-tw/)，作者：Douglas DeMaio