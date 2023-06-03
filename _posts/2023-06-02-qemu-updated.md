---
author: Hanjingxue Boling
date: 2023-06-02 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 更新了 QEMU 的主要版本
image: /assets/posts/2023-06/qemu.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE 大会][osconf]并没有减缓 [openSUSE] [Tumbleweed] 快照在本周频繁发布的速度。

[osconf]: https://events.opensuse.org/conferences/oSC23
[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[QEMU]: https://wiki.qemu.org/ChangeLog/8.0

自上周五会议开始以来，Tumbleweed 已经发布了三个快照，并且在大会几天后发布了 [QEMU] 的新主要版本。

快照 [20230530] 更新了模拟器和虚拟器 [QEMU]。[qemu 8.0] 的更新修复了依赖关系并改进了 [spec 文件][spec]；该软件包添加了对 [KVM] 下，[Linux 内核][kernel]版本高于 5.12 的 [Xen] 虚拟机的支持。两种新的模拟 CPU 类型是 [arm] 的 [Cortex-A55] 和 [Cortex-R52]。qemu 还添加了一些 [RISC-V] 支持扩展，改进了 [s390x] 的设备处理并修复了一些模拟指令。[Python 包索引][pip]在快照中更新。[python-pip][pip] 23.1.2 将 [setuptools] 升级到 67.7.2 并添加了 `--keyring-provider` 标志。[python310] 3.10.11 更新修复了一个旧的 [CVE]。可能允许用户协助的远程攻击者覆盖任意文件的 [CVE-2007-4559] 已得到修复，python 还修复了在解除分配深层嵌套的过滤器对象时导致崩溃的错误。快照中要更新的另一个软件包是文件系统 [Btrfs] 6.3。Btrfs 添加了一个补丁，删除了一些旧文件并提供了与 [GitHub] action 的一些集成。此快照还更新了一些 GNOME 软件包。[gnome-software] 44.2 进行了一些修复，例如修复了在启用多个 [Flathub] remote 时列出 Flatpak 插件的错误。可扩展屏幕阅读器 [Orca] 已更新至版本 44.1，并通过检查重复对象事件提高了性能。[gnome-control-center] 44.2 版本在 [GTK] 模板使用中修复了导致某些系统崩溃的问题。

[20230530]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TZRO6PHQQ6CAQO4GTT7PFUUQPBKFY6K6/
[qemu 8.0]: https://wiki.qemu.org/ChangeLog/8.0
[spec]: https://en.opensuse.org/openSUSE:Specfile_guidelines
[xen]: https://xenproject.org/
[kvm]: https://www.linux-kvm.org/page/Main_Page
[kernel]: https://www.kernel.org/
[arm]: https://www.arm.com/
[Cortex-A55]: https://developer.arm.com/Processors/Cortex-A55
[Cortex-R52]: https://developer.arm.com/Processors/Cortex-R52
[RISC-V]: https://riscv.org/
[s390x]: https://en.wikipedia.org/wiki/IBM_System/390
[pip]: https://pypi.org/
[setuptools]: https://pypi.org/project/setuptools/
[cve]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[CVE-2007-4559]: https://nvd.nist.gov/vuln/detail/CVE-2007-4559
[python310]: https://www.python.org/
[Btrfs]: https://btrfs.wiki.kernel.org/
[github]: https://github.com/
[gnome-software]: https://gitlab.gnome.org/GNOME/gnome-software
[flathub]: https://flathub.org/
[Orca]: https://wiki.gnome.org/Projects/Orca
[gnome-control-center]: https://gitlab.gnome.org/GNOME/gnome-control-center
[gtk]: https://www.gtk.org/

前一天到达的快照是 [20230529]。该快照更新了 [Linux 内核][kernel]；[kernel-source][kernel] 6.3.4 对网络、scsi、netfilter、绑定等不同领域进行了修复。[grep] 3.11 的更新修复了 `-P` 选项的模式匹配问题。像 `[\d]` 这样的模式现在又可以工作了，这在以前的版本是失效的。[libqt5-qtwebengine] 5.15.14 中修复了与 Chromium 相关的多个 CVE；其中包括栈缓冲区溢出、堆溢出、越界内存访问以及其他可能被攻击者利用来破坏系统的漏洞。

[20230529]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XA7IOHYH5RWCQ3V77XR3U3NAVRCEWFKE/
[grep]: https://www.gnu.org/software/grep/
[libqt5-qtwebengine]: https://software.opensuse.org/package/libqt5-qtwebengine

[gstreamer] 1.22.3 的更新修复了 [ffmpeg] 6 的视频解码器死锁以及输入流的一些回归处理。像素编码器 [babl] 0.1.106 通过将平衡的 RGB 缓存到 XYZ 矩阵来加快启动速度。快照中更新的其他几个软件包包括窗口管理器 [icewm] 3.3.5、[diffutils] 3.10、[xfce4-panel] 4.18.4 和 [crypto-policies]。

[gstreamer]: https://gstreamer.freedesktop.org/
[ffmpeg]: https://www.ffmpeg.org/
[babl]: https://gegl.org/babl/
[icewm]: https://ice-wm.org/
[diffutils]: https://www.gnu.org/software/diffutils/
[xfce4-panel]: https://docs.xfce.org/xfce/xfce4-panel/start
[crypto-policies]: https://github.com/linux-system-roles/crypto_policies

快照 [20230526] 有八个包更新。[ImageMagick] 7.1.1.10 修复了安全漏洞 [CVE-2023-2157]。[Mozilla Firefox] 113.0.2 修复了一个错误，该错误导致它在打开开发人员工具 Web 控制台的某些页面上冻结。Mozilla 还修复了一个与书签和历史侧边栏的垂直大小调整相关的错误。编程语言 [guile] 更新到 3.0.9 版本，引入了新的界面、功能并更新了一些补丁。[libreoffice] 7.5.3.2 刷新了一些补丁并修复了 Microsoft PPTX 格式问题。[libstorage-ng] 4.5.110 通过 [Weblate] 更新了格鲁吉亚语翻译。快照中还修复了两个 CVE；[mariadb] 10.11.3 修复了 [CVE-2022-47015]，它在 10.3.34 到 10.9.3 版本中存在针对 MariaDB 服务器的拒绝服务漏洞。[xen] 更新至 4.17.1 版本，解决了 [CVE-2022-42336]；它在特定于 [AMD] 系列 17h 和 Hygon 系列 18h 处理器的 AMD 硬件上存在安全漏洞。

[20230526]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LQTCXUPS4BMCIHXBAUKEWVN47DUNV3BQ/
[ImageMagick]: https://imagemagick.org/index.php
[CVE-2023-2157]: https://www.suse.com/security/cve/CVE-2023-2157.html
[Mozilla Firefox]: https://www.mozilla.org/
[guile]: https://www.gnu.org/software/guile/
[libreoffice]: https://www.libreoffice.org/
[weblate]: https://weblate.org/
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[mariadb]: https://mariadb.org/
[CVE-2022-47015]: https://www.suse.com/security/cve/CVE-2022-47015.html
[CVE-2022-42336]: https://www.suse.com/security/cve/CVE-2022-42336.html
[amd]: https://www.amd.com/

------

原文：[Major QEMU Version Lands in Tumbleweed](https://news.opensuse.org/2023/06/02/major-v-lands-in-tw/)，作者：Douglas DeMaio
