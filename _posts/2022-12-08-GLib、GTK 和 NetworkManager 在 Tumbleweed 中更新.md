---
author: Hanjingxue Boling
date: 2022-12-08 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: GLib、GTK 和 NetworkManager 在 Tumbleweed 中更新
image: /assets/posts/2022-12/gtk.png
categories:
- 更新通告
tags: 
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在 12 月的前六天为用户带来了六个快照，并为开发人员带来了大量对话。

Factory 邮件列表在过去一周中新增了 200 多条有关更改 [Tumbleweed 微架构级别](https://news.opensuse.org/2022/11/28/tw-to-roll-out-mitigation-plan-advance-microarchitecture/)的消息，与此同时，[Tumbleweed](https://get.opensuse.org/tumbleweed/) 保持滚动，不断发布 [vim](https://www.vim.org/)、[mutt](http://www.mutt.org/) 等软件包的更新。

快照 [20221206](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EAY3RYGXYUJJJS3HAOS4DVDXKLP32VFS/) 中只有少数软件包获得更新。[urlscan](https://urlscan.io/) 0.9.10 就是其中要更新的软件包之一，它将 `*` 添加为允许的 URL 特殊字符。[由于 Gentoo 和 openSUSE 都遇到了挂起/崩溃](https://gitlab.freedesktop.org/xorg/lib/libx11/-/issues/170)，因此快照将 [libX11](https://gitlab.freedesktop.org/xorg/lib/libx11) 还原为 1.8.1 版本。用于处理音频文件，为 JSON 和 YAML 插件提供了曲目和光盘编号支持的 [Python](https://www.python.org/) 工具，[eyeD3](https://eyed3.readthedocs.io/)，有一个很酷的名字和 LOGO；此次更新将 eyeD3 更新至 0.9.7 版本，但删除了对 Python 3.6 的支持。[Pidgin](https://pidgin.im/) 聊天插件 [purple-mattermost](https://github.com/EionRobb/purple-mattermost) 更新到 2.1 版本，将在第一次加入频道时获取最近 60 条消息。自解释包 [perl-Bootloader](https://github.com/openSUSE/perl-bootloader) 0.940 添加了一些对 [systemd-boot](https://freedesktop.org/wiki/Software/systemd/) 的基本支持。

在快照 [20221205](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YVTK3E74IEQB5LNSHKMNKWFZUDAI7JIF/) 中，PDF 渲染包 [poppler](https://poppler.freedesktop.org/) 更新到 22.12.0 版本，似乎解决了寻找字体的一些顽固问题。电子邮件客户端 [mutt](http://www.mutt.org/) 更新到 2.2.9 版本并将 [gpgme](https://gnupg.org/software/gpgme/index.html) autoconf 文件更新到最新版本。它还修复了一个不可打印的键名，并向 0 参数函数定义添加了显式无效。用于检测程序是否在虚拟机中运行的 [virt-what](https://people.redhat.com/~rjones/virt-what/) 更新到 1.25 版本；该软件包现在将 [AWS](https://aws.amazon.com/) [arm](https://www.arm.com/) 虚拟实例检测为 [KVM](https://www.linux-kvm.org/page/Main_Page)，并增加了对 [Alibaba Cloud Linux](https://www.alibabacloud.com/product/alibaba-cloud-linux-2) 和运行在 [arm](https://www.arm.com/) 设备上的 [VMware ESXi](https://www.vmware.com/products/esxi-and-esx.html) 的支持。本次快照还更新了包括 [newt](https://pagure.io/newt) 0.52.23 和 [qpdf](https://github.com/qpdf/qpdf) 11.2.0 在内的一些其他软件包。

快照 [20221204](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/HCDFGDG6BTC4LYUEZ6677T2JQRNIXGGF/) 发布了 [NetworkManager](https://networkmanager.dev/) 1.40.6。它恢复并设置了一个空端口配置。该软件包还进行了一些各种文档修复，并为客户端库提供了一个非导出的 [ABI](https://en.wikipedia.org/wiki/Application_binary_interface) 接口。底层核心库 [glib2](https://wiki.gnome.org/Projects/GLib) 2.74.3 的更新修复了几个回归，并修复了对文本格式变体的 [GVariant](https://www.freedesktop.org/software/gstreamer-sdk/data/docs/latest/glib/glib-GVariant.html) 类型深度检查。因为 [GTask 标签](https://libsoup.org/gio/GTask.html)提供了错误返回路径，glib2 还切换到更严格的 [API](https://en.wikipedia.org/wiki/API) 接口。快照还更新了相当多的 [RubyGems](https://rubygems.org/) [rspec](https://github.com/rspec) 包。除了升级到 3.12.0 版本的许多内容之外，[rubygem-rspec-mocks](https://github.com/rspec/rspec-mocks/blob/main/Changelog.md) 包还改进了在根据哈希值比较关键字参数时的差异输出。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.54 通过使用 [Weblate](https://weblate.org/) 更新了马其顿语翻译；数个 [GNOME](https://www.gnome.org/) 43 软件包在快照中更新，例如 [gnome-software](https://gitlab.gnome.org/GNOME/gnome-software) 43.2，它修复了在 [rpm-ostree](https://rpm-ostree.readthedocs.io/) 下搜索提供某些功能的应用程序。 快照还更新了其他几个包。

快照 [20221203](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/K6F5H6EZ6KZGNW6ENLZZITSJOUIUZODY/) 更新了 [autoyast2](https://github.com/yast/yast-autoinstallation) 4.5.11，避免了当 autoinst.ycp 文件为空或丢失时可能发生的崩溃。对于不清楚的读者，YCP 表示 YaST 控制编程语言（YaST Control Programming language），它是通过 [ycp-killer](https://github.com/yast/ycp-killer) 和其他库和工具移植到 Ruby 的。[openblas_pthreads](https://github.com/xianyi/OpenBLAS) 0.3.21 的更新有一些 [Intel](https://www.intel.com/) [SkyLakeX](https://en.wikichip.org/wiki/intel/cores/skylake_x) 编译修复，并且该软件包修复了 [Power10](https://en.wikipedia.org/wiki/Power10) 的性能回归。[samba](https://www.samba.org/) 的 [git](https://github.com/git)+ 更新引入了一个规范标志（spec flag）。

快照 [20221202](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MSVAS35OPS4DJIEK7HQYADVFFUYLDYTJ/) 让 [Mozilla Firefox](https://www.mozilla.org/) 107.0.1 修复了一个问题，即颜色管理对某些用户不可用，并且浏览器修复了另一个问题，即显示警告对话框时无法访问 DevTools 用户界面。[yast2](https://github.com/yast/yast-yast2) 4.5.20 更新中添加了一个允许统一定义硬件架构过滤器的新类（class）。文本编辑器 [gedit](https://wiki.gnome.org/Apps/Gedit) 43.2 的更新对 [API](https://en.wikipedia.org/wiki/API) 进行了修复，并且还更新了一些翻译。[Vim](https://www.vim.org/) 是另一个在快照中收到更新的文本编辑器，它有许多错误修复；[vim](https://www.vim.org/) 9.0.0978 修复了在终端窗口中键入字母时的崩溃、声音虚拟中的持续集成失败、[autocmd](https://vimdoc.sourceforge.net/htmldoc/autocmd.html) 窗口内存泄漏和无效内存访问以及许多其他问题。跨平台小部件工具包 GTK3 3.24.35 更新进行了多项更改。[GTK3](https://www.gtk.org/) 修复了运动压缩问题，重构了即时消息客户端更新的处理，删除了上游补丁并添加了对标题栏手势的支持。快照中要更新的其他软件包是 [pango](https://pango.gnome.org/) 1.50.12、[hxtools](https://inai.de/projects/hxtools/) 20221120、[libostree](https://ostreedev.github.io/ostree/) 2022.7 等。

本月的第一个快照是快照 [20221201](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ZY3E4EOFL27S2Q36ZNTHYMNKVZKQNPEZ/)；它将 [pipewire](https://pipewire.org/) 更新到 0.3.61 版本。类似于音频格式 MP3，可实现无损压缩文件的 [Linux](https://www.kernel.org/) 音频和视频包 [flac](https://xiph.org/flac/) 更新至 1.4.2 版本。开源智能卡工具和中间件包 [opensc](https://github.com/OpenSC/OpenSC)，更新至 0.23.0 版本。该软件包进行了一些常规改进，并增加了对对称加密和解密、包装和解包操作以及初始化向量的支持。快照还更新了几个其他软件包，如 [freecell-solver](https://fc-solve.shlomifish.org/) 6.8.0 和更新了一些用于高级 [MediaTek](https://www.mediatek.com/) wifi 芯片固件的 [kernel-firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git) 20221130。

------

原文：[GLib, GTK, NetworkManager update in Tumbleweed ](https://news.opensuse.org/2022/12/08/glib-gtk-networkmanager-up-in-tw/)，作者：Douglas DeMaio
