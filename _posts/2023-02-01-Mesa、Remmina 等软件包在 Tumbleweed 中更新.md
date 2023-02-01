---
author: Hanjingxue Boling
date: 2023-02-01 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Mesa、Remmina 等软件包在 Tumbleweed 中更新
image: /assets/posts/2023-02/remmina.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

在[黑客周](https://suse.org.cn/%E7%A4%BE%E5%8C%BA%E6%96%B0%E9%97%BB/2023/01/29/%E9%BB%91%E5%AE%A2%E5%91%A8%E7%8E%B0%E5%B7%B2%E5%BC%80%E5%A7%8B.html)开始和举办期间，[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 更新了数个快照。

在 [FOSDEM](https://fosdem.org/) 到来之前，Tumbleweed 将发布更多的软件更新包，但是本博客只简要概述自上一篇 [Tumbleweed 博客](https://suse.org.cn/%E6%9B%B4%E6%96%B0%E9%80%9A%E5%91%8A/2023/01/26/Firefox-Apache-%E5%92%8C-LibreOffice-%E5%9C%A8-Tumbleweed-%E4%B8%AD%E6%9B%B4%E6%96%B0.html)发布后到达的快照。

快照 [20230130](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/PVRNKLRRXRCPHUKOEOIZAFF5SHZCRPKG/) 更新了三个软件包。其中之一是 C 库 [libHX](https://inai.de/projects/libhx/) 4.10。该软件包在格式化程序中插入了[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)并提供了一些多平台目录处理。实现转义字符的文本对象的 [pypi](https://pypi.org/) 已更新，因此可以安全地在 HTML 和 XML 中使用。这个 [python-MarkupSafe](https://pypi.org/project/MarkupSafe/) 包更新至 2.1.2 版本，提供了一个 `striptags` 插件，它不会去除包含换行符的标签。快照更新了 [yast2-trans](https://software.opensuse.org/package/yast2-trans)，添加了多种翻译，包括几种马其顿语和格鲁吉亚语。

快照 [20230129](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YMPUFODRAO4UKOFVHOIZGGJAUDPW45YQ/) 将写时复制文件系统 [btrfsprogs](https://btrfs.wiki.kernel.org/) 更新至 6.1.3 版本，设置大小已得到修复。btrfsprogs 改进了不匹配引用的错误消息。快照更新了 [kdump](https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html)，修复了 [s390](https://en.wikipedia.org/wiki/IBM_System/390) 上的校准构建以及其他一些小问题。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 更新至 4.5.67 版本，借助 [Weblate](https://weblate.org/) 进行了一些德语翻译改进。快照还更新了其他几个包。[rubygem-globalid](https://rubygems.org/gems/globalid/versions/0.3.7) 的 1.1.0 版本修复了容易受到正则表达式拒绝服务攻击的 [CVE-2023-22799](https://www.suse.com/security/cve/CVE-2023-22799.html)。另一个要更新的包是 [neon](https://notroj.github.io/neon) 0.32.5。

快照 [20230128](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XUFCPQV4QVDN3FTHNGUH3NZ4KGW7AKY2/) 更新了 [Mesa](https://www.mesa3d.org/) 22.3.4，删除了一些构建要求。该软件包还修复了 [Vulkan](https://www.vulkan.org/) 在 [Wayland](https://wayland.freedesktop.org/) [KWin](https://userbase.kde.org/KWin) 上的一些性能问题。[Linux](https://www.kernel.org/) 音频和视频包 [pipewire](https://pipewire.org/) 0.3.65 的更新修复了 AVX 代码中可能导致噼啪声的错误，并添加了一个 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 插件规则来调整一些缓冲区设置。pipewire 还提供了支持，允许在某些使用 [tinycompress](https://github.com/alsa-project/tinycompress) 的设备上使用 ALSA 在硬件中解码压缩格式。快照还更新了其他几个包。

快照 [20230127](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3GWMJO37ZKCCPOX7DXEXOZSG5B7CL2AF/) 将远程桌面客户端 [remmina](https://remmina.org/) 更新到 1.4.29 版本。该软件包有多项更改，可以使用 [libsoup](https://gitlab.gnome.org/GNOME/libsoup.git) 3.0 构建和运行，它允许在仅限 [Wayland](https://wayland.freedesktop.org/) 的环境中构建。 [nodejs19](https://nodejs.org/en/) 9.5.0 的一次更新增加了系统控制补丁和修复 [s390](https://en.wikipedia.org/wiki/IBM_System/390) 单元测试的补丁。[GCC](https://gcc.gnu.org/) 12 的更新删除了上游包含的补丁；[xen](https://xenproject.org/) 的更新处理了 [CVE-2022-42330](https://www.suse.com/pt-br/security/cve/CVE-2022-42330.html)，该漏洞可能允许恶意访客通过[软重置](https://xenbits.xen.org/xsa/advisory-425.html)导致崩溃。

快照 [20230126](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FLRLACTS7AQ2RHTHTSOPEWFXQJFXCLXU/) 和 [20230125](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DHTLCN4LWTTYVEONZSAG3AHCMKJUQWR5/) 均于上周到达。有数个重要的软件包在这些快照中陆续更新。其中包括修复了 [CVE-2022-3094](https://www.suse.com/de-de/security/cve/CVE-2022-3094.html)、[CVE-2022-3736](https://access.redhat.com/security/cve/cve-2022-3736) 和 [CVE-2022-3924](https://kb.isc.org/docs/cve-2022-3924) 的 [bind](https://bind9.readthedocs.io/) 9.18.11。[libvirt](https://libvirt.org/) 获得大版本更新，libvirt 9 有许多增量改进和错误修复。它具有的新功能之一是外部快照删除，现在可以使用现有的 [API](https://en.wikipedia.org/wiki/API) 接口 `virDomainSnapshotDelete()`；允许删除子项或仅删除子项的标志现不被支持。

------

原文：[Tumbleweed Snapshots Update Mesa, Remmina, More](https://news.opensuse.org/2023/02/01/tw-snapshots-up-mesa-remmina-more/)，作者：	Douglas DeMaio
