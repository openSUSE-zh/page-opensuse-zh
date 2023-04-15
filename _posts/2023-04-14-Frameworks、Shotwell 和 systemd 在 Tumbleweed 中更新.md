---
author: Hanjingxue Boling
date: 2023-04-14 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Frameworks、Shotwell 和 systemd 在 Tumbleweed 中更新
image: /assets/posts/2023-04/shotwell.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 自上周五以来，已经发布了六个快照，更新了一些 [GNOME](https://www.gnome.org/) 应用程序、[KDE](https://kde.org/) Framework、[LLVM](https://llvm.org/) 编译器和其他几个软件包。

快照 [20230412](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CUR6A2D3R3HQC37RJGYVTWUDLGJCWMVQ/) 将 [GNOME](https://www.gnome.org/) 网络摄像头应用程序 [cheese](https://wiki.gnome.org/Apps/Cheese) 从版本 43.0 更新到 44.0。照片和视频程序 cheese 更新了翻译并避免创建重复的相机设备，这与 [GStreamer](https://gstreamer.freedesktop.org/) 发出调用有关。[GNOME](https://www.gnome.org/) 的窗口管理器 [Mutter](https://gitlab.gnome.org/GNOME/mutter) 44 进行了一些更改，使其更具弹性并避免了 [gnome-shell](https://gitlab.gnome.org/GNOME/gnome-shell) 上的一种崩溃。开发库 [SDL2](https://libsdl.org/) 2.26.5 的更新修复了 [dbus](https://www.freedesktop.org/wiki/Software/dbus/) 无法初始化时 [Linux 内核](https://www.kernel.org/)崩溃的问题。 它还为 Linux 上的 DualSense Edge 无线控制器添加了映射。[apache2](https://httpd.apache.org/) 2.4.57 及其子包的更新修复了先前版本中引入的回归。[yast2-storage-ng](https://github.com/yast/yast-storage-ng) 4.6.5 的更新调整了对 Dell [BOSS](https://www.dell.com/support/manuals/de-de/boss-s-1/boss_s1_ug_publication/%C3%BCbersicht?guid=guid-b20ef25b-b7e3-40f2-b7cd-e497358cd10a&lang=en-us) 设备的检测。AV1 编码器 [rav1e](https://github.com/xiph/rav1e/) 0.6.4+0 是本次快照中变更最多的软件包。该软件包启用了 AVX2 12 位逆变换 x86 程序集以及新的 [SSE4.1](https://en.wikipedia.org/wiki/SSE4) HBD 逆变换 x86 程序集。

[hxtools](https://inai.de/projects/hxtools/) 和日语词典 [edict](https://software.opensuse.org/package/edict) 的更新各有一个匹配的 20230411 版本，它也与快照 [20230411](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MZXWUGJIAJP4JHVUCP5YSYHVKEHKBX5S/) 匹配。在 hxtools 删除了一个选项并更改了一个选项行为时，edict 没有记录任何更改日志。轻量级目录访问协议 [389-ds](https://github.com/389ds/389-ds-base) 更新至 2.3.2 版本。389-ds 为 WebUI 添加了测试，修复了[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)并为 setuptools 应用了上游修复程序。用户级数据包捕获包 [libpcap](https://www.linuxfromscratch.org/blfs/view/svn/basicnet/libpcap.html) 1.10.4 的更新修复了启动[守护程序](https://en.wikipedia.org/wiki/Daemon_(computing))服务的名称。传输层安全库 [gnutls](https://www.gnutls.org/) 3.8.0 的更新解决了 [CVE-2023-0361](https://www.suse.com/security/cve/CVE-2023-0361.html)。此漏洞可能允许侧信道足以恢复密钥加密的 [RSA](https://en.wikipedia.org/wiki/RSA_(cryptosystem)) 密文。gnutls 还通过 <https://gnutls.org/gnutls-release-keyring.gpg> 更新了密钥环。[yast2-trans](https://software.opensuse.org/package/yast2-trans) 更新了七个翻译；[dracut](https://dracut.wiki.kernel.org/index.php/Main_Page) 删除了 [mkinitrd](https://linux.die.net/man/8/mkinitrd) 包装器。

快照 [20230410](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VZC4GLKGQKVOV3XLS42GSOIZBM4IXZX4/) 仅更新了两个包。 [GNOME](https://www.gnome.org/) 个人照片管理器应用程序 [shotwell](https://wiki.gnome.org/Apps/Shotwell) 已更新至 0.31.90 版本。新版本修复了图像连续偏移时区偏移的问题，并修复了未设置曝光时间的问题。照片管理器还启用了人脸识别。另一个要更新的包是视频驱动程序包 [xf86-video-savage](https://github.com/freedesktop/xorg-xf86-video-savage) 2.4.0；新版本有一个小的变化，改进了对使用 [Xorg](https://www.x.org/wiki/) 1.19 及更高版本构建的支持。

快照 [20230409](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/C425HDRRFR4GXUHXTHKMNXEQYJCHMBQE/) 更新了 [KDE Frameworks 5.105.0](https://kde.org/announcements/frameworks/5/5.105.0/)。具有 [Qt](https://www.qt.io/) 附加库的 Frameworks 对文本编辑器 [KTextEditor](https://api.kde.org/frameworks/ktexteditor/html/) 进行了一些小的缩进修复。[Breeze 图标](https://github.com/KDE/breeze-icons)为 [Redshift](https://github.com/jonls/redshift) 图标添加了一些缺失的半透明和新的 breeze-dark 显示。用于电脑、手机、电视和其他设备的 [Kirigami](https://github.com/KDE/kirigami) 修复了[标题不可见内容](https://github.com/KDE/kirigami/commit/6181af63d961bb10ac3fe24afba00fc07dd35f80)占用空间的问题，并调整了[默认页面分类设置](https://github.com/KDE/kirigami/commit/6181af63d961bb10ac3fe24afba00fc07dd35f80)。音视频处理包 [pipewire](https://pipewire.org/) 0.3.68 的更新添加了一个新的[实时传输协议](https://en.wikipedia.org/wiki/Real-time_Transport_Protocol)会话模块，并为流和节点添加了一个新的运行时调试属性，以触发将原始样本保存到 wav 文件。音乐播放器 [amarok](https://invent.kde.org/multimedia/amarok) 有一个小的调整；[manpages-l10n](https://build.opensuse.org/package/show/openSUSE:Factory/manpages-l10n) 4.18.0 进行了一些翻译改进。

编译器和工具链包 [llvm16](https://llvm.org/) 在快照 [20230408](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/BZQOLDKW7YCN7MFBKMH3EHKBQIIIDSEH/) 中发布了该版本的第一个次要版本。llvm16 16.0.1 添加了一个 rebase 补丁和一些错误修复。[libreoffice](https://www.libreoffice.org/) 7.5.2.2 更新修复了七个错误。其中之一返回了在中文、日文和韩文界面中消失的标题样式标签。libreoffice 修复了导致 [Writer](https://www.libreoffice.org/discover/writer/) 崩溃的另一个标题导航器。快照中要更新的其他软件包是 [ibus-table](https://github.com/kaio/ibus-table) 1.17.0、[yast2-packager](https://github.com/yast/yast-packager) 4.6.1 和 [yast2-ruby-bindings](https://github.com/yast/yast-ruby-bindings) 4.6.2。

上周五的快照 [20230407](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YKNKPDELQNY6DAJXAGIE7GOG7F2DTYLO/) 很小，但它已将 [systemd](https://freedesktop.org/wiki/Software/systemd/) 更新到 253.3 版本。不属于稳定版本的修复被合并到这个快照版本中，就像一个[关于发布标签的 github 工作流](https://github.com/openSUSE/systemd/commit/a3f2884ef29dee2ace12afe74b9d8d539237a10a)。更新后的版本还将 [tag ‘v253.3’ 合并到 SUSE/v253 中](https://github.com/openSUSE/systemd/commit/66f3a8a47d5bf6aea3f6fb181c01550a1a54406e)，并进行了与 [mkosi 依赖项](https://github.com/openSUSE/systemd/commit/c5bc8bb0805b2bc9ca01dbf01fcb318e92edda43)相关的持续集成操作。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.95 的更新禁用了一些 [NVMe](https://nvmexpress.org/) 检测并[使用 Fedora 添加了一个 GitHub Action](https://github.com/openSUSE/libstorage-ng/pull/924)。[GCC](https://gcc.gnu.org/) 13 有一些小的支持并添加了 [cross-bpf](https://gcc.gnu.org/wiki/BPFBackEnd) 包。

------

原文：[Frameworks, Shotwell, systemd update in Tumbleweed](https://news.opensuse.org/2023/04/14/frameworks-shotwell-systemd-up-in-tw/)，作者：Douglas DeMaio
