---
author: Hanjingxue Boling
date: 2021-05-01 03:40:00 +0800
layout: post
license: CC-BY-SA-3.0
title: LLVM、KDE Gear、GNOME 更新
image: /assets/posts/2021-05/LLVM, KDE Gear, GNOME 更新.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- LLVM
- KDE Gear
- GNOME
---

LLVM、KDE Gear、GNOME 在 Tumbleweed 的快照中获得更新。

本周发布了六个 openSUSE Tumbleweed 快照。

这些快照提供了 [curl](https://curl.se/)、[KDE Gear](https://apps.kde.org/)、[LLVM](https://llvm.org/)、[GNOME 40](https://forty.gnome.org/)、[Mozilla Firefox](https://www.mozilla.org/) 和 [Thunderbird](https://www.thunderbird.net/) 等软件包的更新版本。

[20210428](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/QIPXE4EQCQTERY3PDRMRYRLW7AEE5W2V/) 快照将 [Linux 内核](https://www.kernel.org/)更新为 5.12 版，文本编辑器 [vim](https://www.vim.org/) 更新为 8.2.2800 版。[virtualbox](https://www.virtualbox.org/) 更新到 6.1.20，解决了在使用 [Hyper-V](https://en.wikipedia.org/wiki/Hyper-V) 的情况下虚拟机操作系统的挂起问题，并且虚拟机打包增加了对 5.11 和 5.12 版内核的支持。Domaine name cacher [dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html) 2.85 增加了 `--dynamic-host` 选项，调试器 [strace](https://strace.io/) 5.12.0 进行了改进并实现了显示 SELinux 上下文的选项。

Daniel Stenberg 在4月14日的视频中详细介绍了 [curl 7.76.1](https://youtu.be/3Vj4cdzLZx4) 的补丁发布，并将其纳入快照 [20210427](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ES3BJGXLFL65BXHBRSLS2CJQEWTPLWYE/) 。curl 的发布没有新的功能，但 Stenberg 在视频中承认了贡献，并强调了相较于 HTTPS ，HTTP/2 的选择。开源文件管理器 [less](http://www.greenwoodsoftware.com/less/) 更新到了 581 版本，它修复了一些崩溃，并在版本中增加了几个新的选项。实用探测包 [os-prober](https://joeyh.name/code/os-prober/) 更新至 1.78 版，固件包 [shim-leap](https://github.com/rhboot/shim) 更新至 15.4 版。

快照 [20210426](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JN6UAEDOJZCANCKMOBMJXQDCDC6RCUNE/) 更新了大约15个软件包，其中包括 Linux 内核 5.11.16 和 [java-11-openjdk](https://openjdk.java.net/projects/jdk/11/) 11.0.11.0 的版本更新，其更新量非常大，解决了两个[常见漏洞和暴露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。在 [container-selinux](https://github.com/containers/container-selinux) 2.160.1 的更新中，对容器运行时的二进制标签进行了修复。[ncompress](https://vapier.github.io/ncompress/) 5.0 的一个主要版本清理了一些代码并修复了递归模式。通用加密库 [libgcrypt](https://www.gnupg.org/software/libgcrypt/index.html) 在 1.9.3 的更新中为 [x86_64](https://en.wikipedia.org/wiki/X86-64) 提供了一些加速的实现。快照中需要更新的其他软件包有 [pipewire](https://gitlab.freedesktop.org/pipewire/pipewire/-/releases) 0.3.26, [rubygem-nokogiri](https://rubygems.org/gems/nokogiri) 1.11.3, [python-pydot](https://pypi.org/project/pydot/) 1.4.2 等。

[KDE Gear 21.04.0](https://kde.org/announcements/gear/21.04/)，也就是 KDE 应用程序的新名字，在快照 [20210425](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DKWLMVHPAFGFULOIAXKS3NUEOGKBIZAL/) 可用。文件存档器 [Ark](https://apps.kde.org/ark/) 中新增一个新的菜单选项，以显示有关 [kpart](https://techbase.kde.org/Development/Tutorials/Using_KParts) 的对话框。文件管理器 [Dolphin](https://apps.kde.org/dolphin/) 删除了一些输入方法，并修复了首次启动时位置栏的对齐问题。KDE 的文本编辑器 [Kate](https://kate-editor.org/) 修复了一个内存泄漏和一些编译器警告。视频编辑器  [Kdenlive](https://kdenlive.org/en/) 修正了一些崩溃和从剪贴板导入时的关键帧限制。[GNOME 40](https://forty.gnome.org/) 有多个更新。对 [gedit](https://wiki.gnome.org/Apps/Gedit) 40.1 进行了翻译，文档查看器 evince 40.1 增加了三个补丁以移除更多的 [SyncTeX](https://help.gnome.org/users/evince/stable/synctex-compile.html.en)， [gnome-tweaks](https://gitlab.gnome.org/GNOME/gnome-tweaks) 40.0 对测试版进行了修正，该版本无法识别在候选版本中运行的 GNOME Shell 。[gtk3](https://www.gtk.org/) 和 [gtk4](https://www.gtk.org/) 都分别更新到了 3.24.28 和 4.2.0 。GTK4 为 [Wayland](https://wayland.freedesktop.org/) 带来了一些事件匹配的修复，以避免错过布局。其他在快照中更新的软件包有 [NetworkManager](https://wiki.gnome.org/Projects/NetworkManager) 1.30.4、[glib2](https://wiki.gnome.org/Projects/GLib) 2.68.1、[pango](https://pango.gnome.org/) 1.48.4、[rsyslog](https://www.rsyslog.com/) 8.2104.0 和 [wireshark](https://www.wireshark.org/) 3.4.5，其中修复了 GeoIP 信息的打印。

在快照 [20210423](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EX2H4OGBPHRV27MINSTGZ5MKFLAMJB7Z/) 中， Mozilla Firefox 的版本将更新到 88.0 ，Thunderbird 的版本将更新到 78.10.0 。该浏览器有一个新功能，PDF表格现在支持嵌入 JavaScript 的 PDF 文件。该开源浏览器还对麦克风和摄像头的提示进行了修改，减少了在网站上要求授予设备访问权限的提示次数。Thunderbird 电子邮件客户端修复了9个 CVE；其中一个可能在 FTP 服务器上使用编码的 URL 执行任意的 FTP 命令。[Redis](https://redis.io/) 6.2.2 修复了回归问题，[Xen](https://xenproject.org/) 更新恢复了两年前默默删除的一个变化。[YaST](https://yast.opensuse.org/) 更新了多个软件包，其中许多需要清理一些规格文件。

本周即将到来的快照，[20210422](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/AKPMC2NLBFYAOE5WIK2FDSCW654ZPM6W/) ，给音频用户提供了Audacity 3.0.2的更新；该音频软件增加了一些新的输出偏好，并改进了诊断报告。[llvm12 12.0.0](https://releases.llvm.org/12.0.0/docs/ReleaseNotes.html) 的主要版本可用，编译器带来了大量更新。架构目标、[WebAssembly](https://webassembly.org/) 目标、[go](https://golang.org/) 绑定、C [应用编程接口](https://en.wikipedia.org/wiki/API)等都有变化。[AppStream](https://github.com/ximion/appstream) 做了一些解析方面的改进，并改进了文字包，以应对文字过长的情况。由大家喜欢的字体专家 [Behdad Esfahbod](https://en.wikipedia.org/wiki/Behdad_Esfahbod) 开发的文本塑造包 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 改进了一些形状连接脚本，并提供了文档改进。快照中更新的其他软件包还有 [hwinfo](https://github.com/openSUSE/hwinfo) 21.73、[sqlite](https://www.sqlite.org/index.html) 3.35.5、[sudo](https://www.sudo.ws/) 1.9.6 等等。

------

原文：[LLVM, KDE Gear, GNOME Update in Tumbleweed](https://news.opensuse.org/2021/04/30/llvm-kde-gear-gnome-update-in-tw/)，作者：Douglas DeMaio
