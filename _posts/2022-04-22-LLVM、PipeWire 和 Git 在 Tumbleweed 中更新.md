---
author: Hanjingxue Boling
date: 2022-04-22 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: LLVM、PipeWire 和 Git 在 Tumbleweed 中更新
image: /assets/posts/2022-04/DragonFull.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

自上周四以来，openSUSE Tumbleweed 已经发布了三个快照。

如果快照 20220420 通过 [openQA](https://openqa.opensuse.org/)，可能会在本文发布之前发布，并将发布的快照数量增加到四个。

快照 [20220419](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YECKSQGM24J62FXR65H5REJYLSA5VSGO/) 中更新了不到 10 个包。快照中的大多数更新来自 [Linux 内核](https://www.kernel.org/) 5.17.3 更新。此次更新针对 [x86](https://en.wikipedia.org/wiki/X86) 进行了一些 [KVM](https://www.linux-kvm.org/page/Main_Page) 修复；还有一个针对 [arm64](https://www.arm.com/) 的修复程序，可确保不更改事件过滤器。内核更新中还有大约 30 处针对 [DRM](https://en.wikipedia.org/wiki/Direct_Rendering_Manager) 更改。使用 [JACK](https://jackaudio.org/) 后端的 [Wine](https://source.winehq.org/git/wine.git/) 应用程序不应再因 [pipewire](https://pipewire.org/) 0.3.50 更新而崩溃。音频和视频包更新也有一个变化，确保 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 现在只分配一个足够大的缓冲区大小来容纳四倍的定量限制，而不是尽可能大。[libnl3](https://www.infradead.org/~tgr/libnl/) 3.6.0 的更新添加了对 [IPv6](https://en.wikipedia.org/wiki/IPv6) 的[通用路由封装](https://en.wikipedia.org/wiki/Generic_Routing_Encapsulation)和[虚拟隧道接口](https://en.wikipedia.org/wiki/Tunneling_protocol)支持，并且 [yast2-trans](https://software.opensuse.org/package/yast2-trans) 和 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.4 更新了斯拉夫语翻译。

快照 [20220415](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/URT6Y3YAOOFN2WT3Q4W52MPTXLWYKQC3/) 将 [ImageMagick](https://imagemagick.org/index.php) 更新到 7.1.0.29。根据[更新日志](https://github.com/ImageMagick/ImageMagick/blob/main/ChangeLog.md#710-29---2022-03-27)，此次更新进行了一些恢复，并修复了以 RGBA 形式导入的灰色图像。[Mozilla Firefox 99](https://www.mozilla.org/) 的第一个次要版本是 99.0.1。 火狐浏览器更新修复了下载面板中的选择与拖放的问题。此次更新还修复了阻止 [Zoom](https://zoom.us/) 画廊模式工作的问题。[git](https://github.com/git) 2.35.3 更新修复了一些 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；根据变更日志，[CVE-2022-24765](https://www.suse.com/security/cve/CVE-2022-24765.html) 可能允许 git 从意外的工作树执行其他用户定义的命令。快照中要更新的其他软件包包括 [vim](https://www.vim.org/) 8.2.4745、[Ruby](https://www.ruby-lang.org/en/) 3.1.2、[Xen](https://xenproject.org/) 4.16.1 和 [whois](https://github.com/rfc1036/whois) 5.5.13 等。

上周四的 [20220414](https://rsync.opensuse.org/tumbleweed/iso/Changes.20220414.txt) 快照将 [procps](https://gitlab.com/procps-ng/procps) 从 4.0.0 版本恢复到 3.3.17 版本。这个主要版本恢复了几个补丁并处理了一些 CVE。[LLVM](https://llvm.org/) 14.0.0 的主要版本更新在快照中发布。这个版本引入了许多新工具，删除了一些补丁；受 [GCC](https://gcc.gnu.org/) 打包方式的启发，并选择拆分 Clang 库。快照中对 [libunistring](https://www.gnu.org/software/libunistring/) 1.0 进行了重大更新，提供了 [Unicode](http://www.unicode.org/) 14.0.0 支持和许可证更改。本次快照有一个 [kdump](https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html) 1.0.2 的 git 版本更新，它为 [fadump](https://www.suse.com/support/kb/doc/?id=000018126) 的读写提供了文件系统重新挂载。快照中还更新了 [ncurses](https://en.wikipedia.org/wiki/Ncurses) 和 [dracut](https://dracut.wiki.kernel.org/index.php/Main_Page)。快照中还更新了其他几个包。

------

原文：[LLVM, PipeWire, git update in Tumbleweed](https://news.opensuse.org/2022/04/21/llvm-pw-git-update-in-tw/)，作者：Douglas DeMaio