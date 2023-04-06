---
author: Hanjingxue Boling
date: 2023-04-06 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Firefox，systemd 在 Tumbleweed 中更新
image: /assets/posts/misc/systemd-logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE Tumbleweed 持续滚动，不断释出快照。

本周的几个中型快照为 Tumbleweed 用户提供了一系列系统组件更新。

快照 [20230404](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/Z4N3K3ECY2AACZB4OQIDZYKP2DDW5NKR/) 更新了 [systemd](https://freedesktop.org/wiki/Software/systemd/) 253.2；此次更新将文件系统检查器 [systemd-fsck](https://www.freedesktop.org/software/systemd/man/systemd-fsck@.service.html) 逻辑项目移至 udev 用户空间子包。[规范文件](https://en.opensuse.org/openSUSE:Specfile_guidelines)还添加了 `coredump` 文件。[Mozilla Firefox](https://www.mozilla.org/) 处理了 13 个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。其中之一是 [CVE-2023-28176](https://www.suse.com/security/cve/CVE-2023-28176.html)，它的严重性很高，被描述为[内存安全漏洞](https://en.wikipedia.org/wiki/Memory_safety)。Web 服务发现主机守护程序 [wsdd](https://github.com/christgau/wsdd) 已更新至 0.7.1 版本。wsdd 修复了由于 [Python](https://www.python.org/) 3.10 [API](https://en.wikipedia.org/wiki/API) 接口变更而导致的回归，并且它还强调了强制将这个 [Python](https://www.python.org/) 版本用于 [openSUSE Leap](https://get.opensuse.org/leap/15.4/)。硬件标识和配置数据包 [hwdata](https://github.com/vcrhonek/hwdata) 0.369 更新了 PCI、USB 和供应商标识。[yast2-storage-ng](https://github.com/yast/yast-storage-ng) 4.6.4 在克隆时导出精简 [LVM](https://en.wikipedia.org/wiki/Logical_volume_management) 卷。快照中还有一些 [YaST](https://yast.opensuse.org/) 包有更新。

快照 [20230403](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IWEBYRKUNHMTGTF4KIV7IFND26VGN7JF/) 仅更新了几个软件包。[aaa_base](https://github.com/openSUSE/aaa_base) 重新添加了一个有条件的 [glibc](https://www.gnu.org/software/libc/) 依赖项并使其成为固定依赖。[libcap](https://sites.google.com/site/fullycapable/Home) 2.68 更新强制将一些内部函数隐藏在库之外。该软件包还对文档和[联机帮助页](https://manpages.opensuse.org/)分别进行了一些清理并添加支持。[systemd-rpm-macros](https://en.opensuse.org/openSUSE:Systemd_packaging_guidelines) 20 的主要版本更新弃用了一些支持选项，并确保在 `/etc/sysconfig/service` 不存在时重新启动服务。

[NVMe](https://en.wikipedia.org/wiki/NVM_Express) 存储的 CLI 实用程序 nvme-cli 已在快照 [20230402](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GUZLJDNKFAFRIXFMOEYHIT54ZZ2WTURV/) 中更新。[nvme-cli](https://github.com/linux-nvme/nvme-cli) 2.4 版本添加了一个智能云日志插件，并启用了一些选项，包括 `--tls_key` 和 `--tls`。另一个在快照中更新的，与 NVMe 相关的是 [libnvme](https://github.com/linux-nvme/libnvme) 1.4，它添加了直接媒体接口（DMI）sysinfo 的定义，并从 DMI 中过滤掉无效的 [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier)。[CVE-2023-1393](https://www.suse.com/security/cve/CVE-2023-1393.html) 已通过 [xwayland 23.1.1](https://www.linuxfromscratch.org/blfs/view/svn/x/xwayland.html) 和 [xorg-x11-server 21.1.8](https://www.x.org/wiki/) 修复；该漏洞可能会用于本地提权。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.92 和 [yast2-storage-ng](https://github.com/yast/yast-storage-ng) 4.6.3 更新了巴西葡萄牙语翻译。

快照 [20230401](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/QOMHLPOCKR2MFCA6LMB2XOAWGO7A5K3Q/) 更新了 [Linux 内核](https://www.kernel.org/)；[kernel-source](https://www.kernel.org/) 6.2.9 禁用了 Atheros 第 4 代 [AR8031](https://www.digikey.com/en/datasheets/qualcomm/qualcommar8031dsatherosrev10aug2011) 的休眠模式；解决了与 [arm](https://www.arm.com/) 架构相关的多个修复。快照还更新了一些 [GNOME](https://www.gnome.org/) 软件包。[gnome-shell](https://gitlab.gnome.org/GNOME/gnome-shell) 44.0+42 和 [gnome-control-center](https://gitlab.gnome.org/GNOME/gnome-control-center) 44.0+20 均已更新。后者修复了一个不同步的网络时间协议开关。[GNOME](https://www.gnome.org/) 的 wayland 显示服务器和窗口管理器 [mutter](https://gitlab.gnome.org/GNOME/mutter) 44.0+18 清理了规范文件并为 bash 使用了更具互操作性的路径。Xen 已更新至 4.17.0_06。此处更新还提供了多个与 [GCC](https://gcc.gnu.org/) 13 问题相关的虚拟化包补丁。其中在快照中更新的软件包有文本编辑器 [vim](https://www.vim.org/) 9.0.1392、[xfce4-panel](https://www.xfce.org/) 4.18.3、[coreutils](https://www.gnu.org/software/coreutils/) 9.2 和其他几个软件包。

快照 [20230331](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ILKTUNMSR64T5Z5D2UTONTLJETL27A2X/) 和快照 [20230330](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3QNVZMC5MTWVSFGNRCHTXFUDNKEOT5P2/) 中要更新的软件包数量较少。其中要更新的一些关键包是 [ImageMagick](https://imagemagick.org/index.php) 7.1.1.5，它消除了编写 JPS 图像格式时的内存泄漏；以及 [ruby3.2](https://www.ruby-lang.org/en/) 3.2.2，它处理了两个 CVE。[CVE-2023-28755](https://www.ruby-lang.org/en/news/2023/03/28/redos-in-uri-cve-2023-28755/) 修复了错误处理无效 URL 的 URI 解析器，[CVE-2023-28756](https://www.ruby-lang.org/en/news/2023/03/30/redos-in-time-cve-2023-28756/) 修复了错误处理无效字符串的时间解析器。图形库 [gegl](https://www.gegl.org/) 0.4.44 修复了被 [glib](https://gitlab.gnome.org/GNOME/glib) 2.75.3 和 [yast2](https://github.com/yast/yast-yast2) 4.6.2 替换为 [dracut](https://dracut.wiki.kernel.org/index.php/Main_Page) 的 [mkinitrd](https://linux.die.net/man/8/mkinitrd) 模块调用的崩溃。

------

原文：[Firefox, systemd update in Tumbleweed](https://news.opensuse.org/2023/04/06/firefox-systemd-up-in-tw/)，作者：Douglas DeMaio
