---
author: Hanjingxue Boling
date: 2022-05-13 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: GCC 12 成为 Tumbleweed 默认的编译器
image: /assets/posts/2022-05/gcc.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

在[准备将 openSUSE Tumbleweed 的默认编译器切换到 GCC 12 ](https://news.opensuse.org/2022/04/08/tw-gets-new-default-gcc/)的一个多月后，最新的快照通过了 [openQA](https://openqa.opensuse.org/) 测试并使 GCC12 成为 Tumbleweed 的默认编译器。

完全重构的快照 20220510 [正在与镜像站同步](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/AEFKIFZRIBGZQRVN6JVAIN764BJEBUYR/)，并且用户很快就能通过 `zypper dup` 更改他们系统默认的编译器。作为一个完全重构的快照，与镜像站同步可能需要一些时间，但开发人员很快就会拥有最新的 GCC 用于他们的开发。

“OpenQA 在这个快照中没有发现任何奇怪的东西，与快照 [20220509](https://news.opensuse.org/2022/05/13/gcc-12-is-coming/(https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TGLCVA7TEF2FLW7G5WKMOQ24UOSASV5G/)) 相比，报告的错误大体上没有变化，这是一个好兆头，”发行经理 Dominique Leuenberger 在 factory 邮件列表中写道。“希望您会喜欢现在这个使用 GCC12 构建的快照！”

于前一天的快照 20220509 更新了 git 2.36.1。[git](https://github.com/git) 此次次要版本更新提供了一些修复，其中包括对 `git submodule update` 的修复。文本编辑器 [vim](https://www.vim.org/) 在其 8.2.4877 版本更新中处理了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；[CVE-2022-1381](https://www.suse.com/de-de/security/cve/CVE-2022-1381.html) 的修复关闭了一个漏洞，该漏洞可能导致软件崩溃、修改内存并能够远程执行。[VirtualBox](https://www.virtualbox.org/) 6.1.34 更新修复了五个 CVE。受 [Linux 内核](https://www.kernel.org/) 5.14 影响的虚拟机宿主机和来宾机修复程序也通过此更新修复。但是，Tumbleweed 用户在快照中收到了 Linux 内核版本是 5.17.5。PDF 渲染库 [poppler](https://poppler.freedesktop.org/) 更新至 22.05.0 版本，对代码进行了改进，并添加了 TSV 模式，这是一种像编辑文件一样编辑表格的模式。由于 [gpg2](https://gnupg.org/) 2.3.6 更新和 [GnuPG](https://gnupg.org/) 将分离签名速度和 AES256.OCB 加密速度提高了一倍，加密和签名数据和通信的速度提高了五倍。快照中的其他更新包括 [gnome-shell](https://wiki.gnome.org/Projects/GnomeShell) 42.1、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.10、[yast2](https://yast.opensuse.org/) 4.5.3、[autoyast2](https://github.com/yast/yast-autoinstallation) 4.5.1 和 [z3](https://github.com/Z3Prover/z3) 4.8.17。

[Mozilla Firefox](https://www.mozilla.org/) 的第 100 个版本在快照 [20220506](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/B76RSMLTI7TJ62HBEM6S2DH3NC4ZDE5L/) 中发布。新版本引入了画中画，支持使用 [WebVTT](https://developer.mozilla.org/en-US/docs/Web/API/WebVTT_API) 格式的网站上的视频字幕。Firefox 拼写检查现在检查多种语言的拼写。[clamav](https://www.clamav.net/) 0.103.6 的更新修复了 [TIFF](https://www.adobe.com/creativecloud/file-types/image/raster/tiff-file.html) 文件解析器中可能存在的无限循环漏洞的 CVE 和 HTML 文件解析器中可能存在的内存泄漏的另一个 CVE。[KDE](https://kde.org/) 用户将在快照中收到 [Plasma 5.24.5](https://kde.org/announcements/plasma/5/5.24.5/) 的更新。更新后的 [Plasma](https://kde.org/plasma-desktop/) 提高了与 [Discover](https://apps.kde.org/discover/) [Flatpak](https://flatpak.org/) 后端不同源集成的稳定性。此更新还修复了使用 [KWin](https://userbase.kde.org/KWin) 解锁 [Wayland](https://wayland.freedesktop.org/) 会话的问题。3D 图形驱动程序 [Mesa](https://www.mesa3d.org/) 的更新修复了 22.0.3 版本中的大部分主要驱动程序，并添加了 [AArch64](https://en.wikipedia.org/wiki/AArch64) 架构支持。[openconnect](https://gitlab.com/openconnect) 8.20 的更新增加了对 [Array Networks SSL VPN](https://arraynetworks.com/ssl-vpn/) 的支持。[openexr](https://www.openexr.com/) 软件包，是电影行业的专业级图像存储格式，现已更新到 3.1.5 版本；它更新了持续集成工作流矩阵并修复了其中一个 Linux 发行版的构建失败。快照中要更新的其他软件包包括字体渲染库 [freetype2](https://freetype.org/) 2.12.1、[LibreOffice](https://www.libreoffice.org/) 7.3.3.2、[re2c](https://re2c.org/) 3.0 和缓存 DNS 解析器 [unbound](https://www.linuxfromscratch.org/blfs/view/svn/server/unbound.html) 1.15.0。

------

原文：[GCC 12 Becoming Default Compiler in Tumbleweed](https://news.opensuse.org/2022/05/13/gcc-12-is-coming/)，作者：Douglas DeMaio