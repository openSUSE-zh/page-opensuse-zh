---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-09-10 23:15:00 +0800
layout: post
license: CC-BY-SA-3.0
title: KDE Gear、Plasma 和 systemd 在 Tumbleweed 中更新
image: /assets/posts/2021-09/2021_09_10_KDE_Gear、Plasma_和_systemd_在_Tumbleweed_中更新.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- KDE
- systemd
---

本周的五个 openSUSE Tumbleweed 快照中，有一个为使用滚动发行的用户带来了大量的软件包更新的快照。

快照 [20210904](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/Y4GVG5YDVNASCWUR4CMZ2O4OTIPGZRYE/) 带来了 [systemd](https://freedesktop.org/wiki/Software/systemd/)、[GTK4](https://www.gtk.org/)、[Mesa](https://www.mesa3d.org/)、[KDE](https://kde.org/) 的 [Plasma](https://kde.org/plasma-desktop/) 和 [Gear](https://kde.org/announcements/gear/21.08.1/) 以及许多其他软件包的更新。

最近发布的是快照 [20210908](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/Z7PYWGBGGWYGXBCZR3BIB553GLWGTYRB/)；它更新了 [fuse3](https://github.com/libfuse/libfuse) 3.10.5，并对用户空间包中的文件系统的单元测试进行了各种改进，使其更加强大。[mpg123](https://www.mpg123.de/download.shtml) 1.29.0 的更新增加了一个 `--enable-runtime-tables` 。[yast2](https://yast.opensuse.org/) 4.4.17 的更新为本周早些时候发布的 [systemd](https://freedesktop.org/wiki/Software/systemd/) 软件包提供了一些维护。其他一些软件包如 [glslang](https://github.com/KhronosGroup/glslang) 11.6.0、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.36 和 [pinentry](https://github.com/gpg/pinentry) 1.2.0 也在快照中被更新。

快照 [20210907](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FA6FUFD6MQRNP5QUYK5VV3WK4RNX56BK/) 更新了七个软件包。软件包管理器 [zypper](https://en.opensuse.org/SDB:Zypper_usage) 1.14.49 做了一个避免调用 su 的修改，因为它对 sudo 用户 umask 的限制可能过于严格。软件包管理库 [libzypp](https://github.com/openSUSE/libzypp) 也更新到了 17.28.3 版本，它有一个避免破坏单个 [rpm](http://rpm.org/) 处理的政策修改。AV1 解码器包 [dav1d](https://code.videolan.org/videolan/dav1d) 0.9.2 有一些针对 [x86_64](https://en.wikipedia.org/wiki/X86-64) 的[SSE](https://en.wikipedia.org/wiki/Streaming_SIMD_Extensions) 3 和 SSE4 优化。其他在快照中更新的软件包有  [geoclue2](https://www.linuxfromscratch.org/blfs/view/svn/basicnet/geoclue2.html) 2.5.7、[mozilla-nss 3.69.1](https://www.linuxfromscratch.org/blfs/view/svn/postlfs/nss.html)、[supermin](https://download.libguestfs.org/supermin/) 5.2.1 和 [plymouth](https://www.freedesktop.org/software/plymouth/releases/) 的更新。

快照 [20210906](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MT56C7WEWS5RWDV3CTBM3UMB24JMSVNX/) 有两个软件包更新。iproute2 在 5.14 更新版本中增加了 Docker 本地网络驱动 MacVLAN 的 `-nodst` 选项。该软件包还增加了对无线广域网设备的支持。20210901.1550 [权限](https://software.opensuse.org/package/permissions)更新中有大约四个月的更新，它清理了一些路径并更新了 [ksdesud](https://manned.org/kdesud/b14ce481) 和 `ksgrd_network_helper` 路径。

快照 [20210904](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/Y4GVG5YDVNASCWUR4CMZ2O4OTIPGZRYE/) 中的 [GTK4](https://www.gtk.org/) 4.4.0 更新添加了对 [gnome-shell](https://wiki.gnome.org/Projects/GnomeShell) 标题栏手势协议的支持，并进行了更改以使用 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 获取颜色字体信息。本次快照还发布了 [systemd](https://freedesktop.org/wiki/Software/systemd/) 249.4 的更新；新的 systemd 版本经过了广泛的测试，并已添加更新所需的依赖项。[Mesa 21.2.1](https://lists.freedesktop.org/archives/mesa-dev/2021-August/225464.html) 是 mesa 21.2 系列的第一个错误修复版本，主要是[对 fossilize_db 的修复](https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/11485)。本次快照还更新了 [Mozilla Firefox](https://www.mozilla.org/) 91.0.2 和 [Mozilla Thunderbird](https://www.thunderbird.net/) 91.0.3。浏览器在清除跟踪器时不再清除认证数据；这样做是为了避免重复提示输入密码。电子邮件客户端修复了一些用户体验设置问题，并推送了一个针对有时会发送不必要的 “SMTPUTF8” 的修复程序，这 BUG 会导致一些服务器拒绝电子邮件。[KDE Plasma 5.22.5](https://kde.org/announcements/plasma/5/5.22.5/) 修复了 [ksystemstats](https://commits.kde.org/ksystemstats) 对 IPV6 地址的处理，并且对 [Plasma 桌面](https://commits.kde.org/plasma-desktop)进行了多项修复，包括对[ emoji 表情符号选择器](https://bugs.kde.org/show_bug.cgi?id=441097)的修复和对一些涉及[悬停在工具提示](https://bugs.kde.org/show_bug.cgi?id=439094)上的不一致行为的修复。[KDE Gear 21.08.1](https://kde.org/announcements/gear/21.08.1/) 修复了 [Kdenlive](https://kdenlive.org/en/) 中与 [GCC](https://gcc.gnu.org/) 有关的亮度效应损坏。Gear 还修复了 [Konsole](https://konsole.kde.org/) 中涉及[关闭分割视图](https://bugs.kde.org/show_bug.cgi?id=440976)的问题。以太网 station-activity-monitor 软件包 [arpwatch](https://linux.die.net/man/8/arpwatch) 有一个重要的版本更新到 3.1 ，它提供了一个值得注意的上游变化，即为 [massagevendor](https://linux.die.net/man/8/massagevendor) 增加了 [Python 2](https://www.python.org/) 的兼容性。[Linux 内核](https://www.kernel.org/)更新到 5.14.0 版本，更新并启用了 ARMv6 和 ARMv7 的配置。其他在快照中更新的软件包有 [Flatpak](https://flatpak.org/) 1.11.3、[hwdata](https://github.com/vcrhonek/hwdata) 0.351、[libvirt](https://libvirt.org/) 7.7.0、[php7](https://www.php.net/) 7.4.23、[qemu](https://www.qemu.org/) 6.1.0 以及其他几个。

本周开始的快照是 [20210902](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GSIGHDFGQQLVRX4PUBVKXFXM2DNBX65B/)。Linux 蓝牙协议 [bluez](http://www.bluez.org/) 5.61 提供了几个高级音频分布配置文件的修复，并修复了一个存储可发现设置的问题。磁盘加密包 [cryptsetup](https://gitlab.com/cryptsetup/cryptsetup/-/wikis/home) 更新到 2.4.0 版本，并提供了对 [OpenSSL3](https://www.openssl.org/) 的后端支持。打印包 hplip 3.21.6 中增加了对新发行版的支持， transactional-update 3.5.2 修复了与 [SELinux](https://github.com/SELinuxProject/selinux) 的覆盖同步错误。


------

原文：[KDE Gear, Plasma, systemd Update in Tumbleweed](https://news.opensuse.org/2021/09/10/kde-gear-plasma-systemd-update-in-tw/)，作者：Douglas DeMaio

<!--在上面写上原文来源与作者-->