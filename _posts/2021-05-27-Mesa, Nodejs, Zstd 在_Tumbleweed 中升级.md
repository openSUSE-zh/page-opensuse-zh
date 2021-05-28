---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-05-27
layout: post
license: CC-BY-SA-3.0
title: Mesa, Nodejs, Zstd 在 Tumbleweed 中升级
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- Mesa
- Nodejs
---

本周到目前为止，共发布了四个 openSUSE Tumbleweed 快照。

这些快照更新了 [Mozilla Thunderbird](https://www.thunderbird.net/)、[Mesa](https://www.mesa3d.org/)、[Node.js](https://nodejs.org/en/)、[PipeWire](https://pipewire.org/) 和压缩包 [Zstd](https://facebook.github.io/zstd/) 以及其他一些软件包。

快照 [20210524](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FW66UOPY7RXXSW47DNGH53Q4EAFVTTF4/) 更新了音频和视频包 pipewire 0.3.28，增加了一个新的强大的滤波链模块，可以用来创建 [Linux Audio Developer's Simple Plugin API](https://www.ladspa.org/) 中的各种滤波链；还实现了许多 [PulseAudio](https://www.freedesktop.org/wiki/Software/PulseAudio/) 模块。Node.js 16.2.0 在 `import.meta.resolve` 中增加了对 URL 的模块支持。文本和布局渲染包 [pango](https://pango.gnome.org/) 更新到了1.48.5版本，可以加速 Emoji 分类。[pango](https://pango.gnome.org/) 的更新还修复了一些挂起和一个内存泄漏。快照中的  Mesa 21.1.1 更新主要提供了 [AMD](https://www.amd.com/) 和 [Intel](https://www.intel.com/) 的变更，但也有相当数量的 [arm](https://www.arm.com/) 修复。快照中其他需要更新的软件包是 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.9 和 [webkit2gtk3](https://webkitgtk.org/) 2.32.1 。

在快照 [20210522](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CLD477HZXZMEAZAP4VBTUWUGNMYT3M7F/) 中只有两个软件包被更新。纸牌游戏包 [black-hole-solver](https://www.shlomifish.org/open-source/projects/black-hole-solitaire-solver/) 更新到了1.10.1版本，并增加了一个最大牌量的标志。包处理包 [dpdk](https://github.com/DPDK/dpdk) 19.11.8 在其 19.11.4 版本的更新中修复了一些[常见漏洞和暴露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)，并增加了多个虚拟主机补丁。

Zstd 1.5.0 在快照 [20210521](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/U5HMT5622MBFRJHLCV5IG7USOP2543K4/) 中改进了中级压缩速度和高级压缩率。也被称为 Zstandard，该压缩包还增加了一个补丁，以修复在 armv8 64 位内核上运行 armv6 用户空间的崩溃。压缩分割器包 [zchunk](https://github.com/zchunk/zchunk) 更新到了 1.1.14 版本，它修复了对新版 Zstd 的支持，并更新了对它的测试套件。蓝牙配置工具 [blueberry](https://github.com/linuxmint/blueberry) 1.4.2 更新了翻译。在快照中还有一些其他软件包的更新和一个修订；[rubygem-marcel](https://rubygems.org/gems/marcel/) 从1.0.1版恢复到0.3.3版，这是为了纠正和修复 [rails 6.0 的安装](https://guides.rubyonrails.org/6_0_release_notes.html)。

快照 [20210520](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EGJXRZPZDCBWITAC3PUJYPBJP5CUJ3CB/) 是本周的开始，有最大数量的软件包更新。Mozilla Thunderbird 增加了对导入没有主秘钥的 [OpenPGP](https://www.openpgp.org/) 密钥的支持，并修复了一个存储没有主密码保护的 OpenPGP 秘钥的 CVE 。跨平台解码器 [dav1d](https://code.videolan.org/videolan/dav1d/) 0.9.0 增加了一个新的[应用程序接口](https://en.wikipedia.org/wiki/API)，以提示解码过程中发生的事件。 [Linux Kernel](https://www.kernel.org/) 5.12.4 在快照中进行了更新，并对蓝牙进行了修改，在删除主机控制器接口层时消除了潜在的竞争条件。编程语言 [guile](https://www.gnu.org/software/guile/) 更新到了3.0.7版本，并优化了运行时重定位；它还有一个新的库搜索路径变量 - `GUILE_EXTENSIONS_PATH` 。在快照中，有几个主要的版本更新；用于管理窗口和工作区的库在 [libwnck](https://gitlab.gnome.org/GNOME/libwnck) 40.0主要版本更新中增加了禁用滚动的API。[rdma-core](https://github.com/linux-rdma/rdma-core) 的 35.0 主要版本更新修复了 Tumbleweed 启动过程中的一些dracut路径问题。其他在快照中更新的软件包有 poppler 21.05.0，[hwinfo](https://www.hwinfo.com/) 21.74，[gnome-shell-extensions](https://extensions.gnome.org/) 40.1 和 [ssd](https://github.com/SSSD/sssd) 2.5.0。

------

原文：[Mesa, Nodejs, Zstd Update in Tumbleweed](https://news.opensuse.org/2021/05/27/mesa-nodejs-zstd-update-in-tw/)，作者：Douglas DeMaio

<!--在上面写上原文来源与作者-->

