---
author: Hanjingxue Boling
date: 2022-05-06 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: GNOME、curl 和 Fetchmail 在 Tumbleweed 中更新，WSL 镜像已发布
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在本周持续发布快照，还为 [Microsoft](https://www.microsoft.com/) Windows 用户更新了 [WSL](https://github.com/Microsoft/WSL) 镜像文件。

Windows Store 中的 [Tumbleweed](https://apps.microsoft.com/store/detail/opensuse-tumbleweed/9MSSK2ZXXN11?hl=en-us&gl=US) 的 WSL 镜像于 4 月 25 日发布。我们鼓励 WSL 镜像用户在网站上为开发者工具留下评论。

最新的快照 [20220504](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EXNDM4MB45QB6CIPFHX5IBGA3UAXHNIK/) 包括了本周 [LLVM](https://llvm.org/) 的第二次更新。更新的 14.0.3 版本包括 LLVM 14 新主要版本的 [API](https://en.wikipedia.org/wiki/API) 和 [ABI](https://en.wikipedia.org/wiki/Application_binary_interface) 更改。[libpipeline](https://www.nongnu.org/libpipeline/) 1.5.6 的更新修复了用于以灵活方便的方式操作子进程管道的 C 库的前导空格的处理。[sqlite3](https://www.sqlite.org/index.html) 3.38.3 的更新推送了一个由于过于积极地优化自动索引和 Bloom-filter 的构造，使用了不合适的 ON 子句，导致输出中的行数丢失的错误的修复程序。[yast2-trans](https://software.opensuse.org/package/yast2-trans) 更新了多个日语、波兰语、斯洛伐克语、加泰罗尼亚语和巴西葡萄牙语翻译文本。用于支持 USB 和串行 GPS 设备的库和 GPS 守护程序 —— [gpsd](https://gpsd.gitlab.io/gpsd/index.html)，现已更新到 3.24 版本；新版本现在可以与 [Ntrip 的开源实现](https://software.rtcm-ntrip.org/)一起使用。快照中要更新的其他软件包是 [swtpm](https://github.com/stefanberger/swtpm) 0.7.3 和 [unixODBC](http://www.unixodbc.org/) 2.3.10。

快照 [20220502](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FUEOPFIL23JRXXDXJZG6CVCETIY4CHJ5/) 的特征是英语词典包 [word](https://software.opensuse.org/package/words) 的变更；它从 2015.02.15 版本更新到 2020.12.07 版本，并在时隔五年的更新中包含了从先前版本更新中添加的各种新词。快照还更新了几个 [RubyGems](https://rubygems.org/) 包。其中之一是 [rubygem-gyoku](https://rubygems.org/gems/gyoku/versions/1.4.0) 1.4.0 的更新，它将 [Ruby](https://www.ruby-lang.org/en/) 哈希转换为 XML；该更新删除了 [Rubinius](https://en.wikipedia.org/wiki/Rubinius) 支持并添加了允许[美化](https://onlinexmltools.com/prettify-xml) XML 输出的选项。快照中更新的 [dpdk](https://www.dpdk.org/) 含了一些 [PCI](https://en.wikipedia.org/wiki/Peripheral_Component_Interconnect) 更改，该更改会在映射之前分配驱动程序指针。快照中要更新的其他软件包是 [fribidi](https://github.com/fribidi/fribidi) 1.0.12、[power-profiles-daemon](https://gitlab.freedesktop.org/hadess/power-profiles-daemon) 0.11 和 [libX11](https://xorg.freedesktop.org/wiki/) 1.8，它们应该能解决 [libxcb](https://xcb.freedesktop.org/) 集成的许多长期存在的错误。

快照 [20220501](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YQA4VUUVDZMWRPKAJQQCN6AFEJ3DPCP2/) 更新了 [GNOME](https://www.gnome.org/) 42.1；本次小版本提供了翻译更新、[API](https://en.wikipedia.org/wiki/API) 更改和构建 [GTK4](https://www.gtk.org/) 选项的修复。Daniel Stenberg 在涵盖 curl 7.83.0 的[视频](https://youtu.be/hYcT0HNv8HI)中讨论了几个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures) 修复程序，这些修复程序已在快照中发布。其中之一是 [CVE-2022-22576](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-22576)，它可能允许复用 [OAUTH2](https://en.wikipedia.org/wiki/OAuth) 身份验证的连接，而无需正确确保使用相同的传输凭据集对连接进行身份验证。[pipewire](https://pipewire.org/) 0.3.51 的更新提供了在设备断开连接时对编解码器开关的改进，并且 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 现在应该能在 [pipewire](https://pipewire.org/) 32 位软件包中再次工作；本次更新还改进 [Linux](https://www.kernel.org/) 下音视频的处理！ [GNOME](https://www.gnome.org/) 的虚拟文件系统 [gvfs](https://gitlab.gnome.org/GNOME/gvfs) 更新到 1.50.1 版；它有一些 [API](https://en.wikipedia.org/wiki/API) 更改，修复了几个挂起和崩溃。gvfs 包并不是快照中唯一的文件系统更新。[btrfsprogs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 5.17 的更新进行了一些清理和重构；该更新还包括改进的回滚文件系统构建文档。快照中更新了大量的 [RubyGems](https://rubygems.org/) 包，并且还更新了几个库。快照中要更新的其他值得注意的软件包包括 [LLVM](https://llvm.org/) 14.0.1、[nano](https://www.nano-editor.org/) 6.3、[aws-cli](https://aws.amazon.com/cli/) 1.23.1 和 [redis](https://redis.io/) 6.2.7 等。

使用 [fetchmail](https://www.fetchmail.info/) 的人会注意到快照 [20220428](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JNBAIQTGZGQOK26JTZYO6VSQNATKUK5Q/) 中的更新。fetchmail 6.4.30 的更新提供了安全修复，添加了 [wolfSSL](https://github.com/wolfssl/wolfssl) 兼容性解决方法并更新了塞尔维亚语、罗马尼亚语、越南语和西班牙语翻译。包管理器 [yarn](https://yarnpkg.com/) 1.22.18 修复了由 [Node.js](https://nodejs.org/en/) 17.7.0 引入的 `url.resolve` 中的一些损坏，这些 bug 会导致网络错误。Node.js 17.7.1 版本修复了一些回归。[yast2-firstboot](https://github.com/yast/yast-firstboot) 4.5.2 更新了翻译。PDF 渲染包 [poppler](https://poppler.freedesktop.org/) 22.04.0 修复了一些在正确编写时无法使用 Adobe Reader 正确显示的内容。该软件包还改进了代码并修复了一些小的[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)。[freerdp](https://www.freerdp.com/) 2.7.0 的更新实现了 [OpenSSL](https://www.openssl.org/)3 网关支持。快照中要更新的其他软件包是 [SDL2](https://github.com/libsdl-org/SDL) 2.0.22、[ell](https://git.kernel.org/pub/scm/libs/ell/ell.git/) 0.50 等。

------

原文：[GNOME, curl, Fetchmail update in Tumbleweed, WSL Image Published](https://news.opensuse.org/2022/05/06/gnome-curl-fetchmail-wsl-tw/)，作者：Douglas DeMaio