---
author: Poplar at twilight
date: 2023-09-29 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Tumbleweed 获得 systemd-boot 支持
image: /assets/posts/2023-09/dboot.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 本周的快照继续为想要增强系统的用户提供软件更新。

本周快照的更新带来了大量更改、错误修复和功能改进。

快照 [20230926] 发布了 2D 图形库 [cairo] 五年来首个稳定版本。cairo 1.18.0 的更新包含对 PDF 中 Type 3 颜色字体的支持，并进行了多项优化，其中包括增强对 Quartz surface 的支持和删除 XML surface。图像编辑器 [ImageMagick] 7.1.1.17 修改了补丁并引入了替代配置包，消除了对 [p7zip] 的冗余依赖。[libreoffice] 7.6.1.2 的更新解决了编辑日期字段时的崩溃问题，修复了矩形的动画效果并修复了 `SUM()` 计算的准确性问题。[transactional-update] 4.4.0 引入了新的 `setup-fips` 命令，并改进了通过各种方法创建的快照的清理流程。以前，该软件仅清理由 transactional-update shell 脚本创建的快照。[yast2-bootloader] 5.0.2 的更新修复了非 [x86_64] 架构的测试套件中的问题，并引入了对 x86_64 [systemd-boot] 的支持，可以通过每个产品的产品描述文件中的`enable_systemd_boot` 标志来启用/禁用它。[yast2-installation] 5.0.1 的更新适配了 yast2-bootloader 中的这些更改，以[为 systemd-boot 提供实验支持]。快照中还更新了其他几个软件包。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[20230926]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ZKE6L5QGB7EXO2KYBVU7RYMIWM6I3EWL/
[cairo]: https://www.cairographics.org/
[ImageMagick]: https://imagemagick.org/index.php
[p7zip]: https://7-zip.org/
[libreoffice]: https://www.libreoffice.org/
[transactional-update]: https://github.com/openSUSE/transactional-update
[yast2-bootloader]: https://github.com/yast/yast-bootloader
[systemd-boot]: https://media.ccc.de/v/all-systems-go-2023-189-systemd-boot-integration-in-opensuse
[x86_64]: https://en.wikipedia.org/wiki/X86-64
[yast2-installation]: https://github.com/yast/yast-installation
[为 systemd-boot 提供实验支持]: https://media.ccc.de/v/all-systems-go-2023-189-systemd-boot-integration-in-opensuse

快照 [20230925] 更新了一个使计算机程序运行得更快的软件包 [Highway]；Highway 1.0.7 引入了 [LoadNOr、GatherIndexN 和 ScatterIndexN] 等新功能。Highway 还修复了 [WASM]、[GCC] 13、GCC 8.2、[QEMU] 7.2 等。与系统块设备连接的 [GObject] 库 [udisks2] 已更新至 2.10.0 版本，并在使用 [libfdisk] 进行分区时进行了改进，还支持原生 [NVMe] 设备。该软件包还增强了文件系统的处理并添加了新功能，例如设置文件系统和分区 [UUID]。[libHX] 4.15 的更新引入了用于计算最小正残差的新函数，并增强了 `HX_strrtrim` 函数以处理更长的字符串，从而提高其字符串操作能力。用于操作块设备的库 [libblockdev] 已将主要版本更新至 3.0.2。此次更新的改进包括使用 [ntfsinfo] 来实现更快的操作，带来了广泛的 [API] 更改，删除了某些插件，并引入 NVMe 支持等新功能。快照中更新了一些其他软件包。

[20230925]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/RBZPG3MPQI6NGJ7VDGRRATEEVQ46URBZ/
[Highway]: https://github.com/google/highway
[LoadNOr、GatherIndexN 和 ScatterIndexN]: https://github.com/google/highway/releases
[WASM]: https://webassembly.org/
[GCC]: https://gcc.gnu.org/
[QEMU]: https://www.qemu.org/
[GObject]: https://docs.gtk.org/gobject/
[udisks2]: https://lazka.github.io/pgi-docs/UDisks-2.0/index.html
[libfdisk]: https://cdn.kernel.org/pub/linux/utils/util-linux/v2.28/libfdisk-docs/
[NVMe]: https://en.wikipedia.org/wiki/NVM_Express
[UUID]: https://en.wikipedia.org/wiki/Universally_unique_identifier
[libHX]: https://inai.de/projects/libhx/
[libblockdev]: https://github.com/storaged-project/libblockdev
[ntfsinfo]: https://linux.die.net/man/8/ntfsinfo
[API]: https://en.wikipedia.org/wiki/API

快照 [20230922] 更新了 [DNS] 协议包 [bind] 9.18.19；修复了一些 [CVE]。[CVE-2023-3341] 和 [CVE-2023-4236] 均已修复，后者在处理负载较重的 DNS-over-TLS 查询时可能会发生。这可能会导致内部数据结构被错误地重用，并可能对 DNS 服务器的稳定性和可靠性产生影响。[gtk4] 4.12.2 的更新可防止 [GtkTooltip] 中的工具提示跨越本机边界，并改进了 [GSK] 中的梯度匹配和渲染。惠普 Linux 成像和打印软件包 [hplip] 现已升级到 3.23.5 版本，现在支持多种新打印机和型号，例如 HP Smart Tank 系列。[xwayland] 23.2.1 的更新提供了更稳定和更实用的体验，同时添加了检查以验证函数调用是否存在。[Xen] 4.17.2 的更新实现了两个安全修复。Xen 解决了 64 位 [PV] 客户端在处理内存不足时过早丢弃顶层阴影引用的安全问题 [CVE-2023-34322]；该问题可能导致权限升级、拒绝服务 (DoS) 和信息泄漏。[CVE-2023-20588] 是另一个漏洞。快照中更新了其他几个软件包，包括 [ncurses] 6.4.20230909、[nodejs20] 20.7.0、[python-Pillow] 10.0.1 等。

[20230922]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/L6UJPQ7JMYF5INAMB5M62WLGPBOMYZSE/
[DNS]: https://en.wikipedia.org/wiki/Domain_Name_System
[Bind]: https://bind9.readthedocs.io/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures41]: 
[CVE-2023-3341]: https://www.suse.com/security/cve/CVE-2023-3341.html
[CVE-2023-4236]: https://www.suse.com/security/cve/CVE-2023-4236.html
[gtk4]: https://www.gtk.org/
[GtkTooltip]: https://docs.gtk.org/gtk3/class.Tooltip.html
[hplip]: https://developers.hp.com/hp-linux-imaging-and-printing
[xwayland]: https://wayland.freedesktop.org/xserver.html
[GSK]: https://docs.gtk.org/gsk4/class.Renderer.html
[CVE-2023-34322]: https://www.suse.com/security/cve/CVE-2023-34322.html
[CVE-2023-20588]: https://www.suse.com/security/cve/CVE-2023-20588.html
[Xen]: https://xenproject.org/
[ncurses]: https://en.wikipedia.org/wiki/Ncurses
[nodejs20]: https://nodejs.org/en/
[python-Pillow]: https://pypi.org/project/Pillow/
[PV]: https://en.wikipedia.org/wiki/Paravirtualization

快照 [20230921] 更新了 [ethtool] 6.5；添加了一项功能来检查特定驱动程序的寄存器转储，并修复了一些问题，例如某些设置的问题和空槽搜索问题。[iproute2] 6.5 在使用 `rdma` 命令时会报告设备协议，这很方便。使用 `iplink` 时，它不会使用提供的所有选项，并且可能会给出错误消息。[kernel-source] 更新至 6.5.4，改进了重新连接后处理 [SMB3] 请求的能力，具有与各种硬件组件的时钟和驱动程序相关的驱动程序修复和增强功能。[lvm2] 2.03.22 的更新修复了报告字段类型，以提高数据准确性并增强 Virtual Data Optimizer，并确保 Linux 存储系统中更高效的数据管理。音频包 [pipewire] 更新至 0.3.80 版本，并改进了混音器 I/O 区域的更好同步，以防止潜在的崩溃。该更新还采用了 [ALSA]，可以为批处理设备提供更智能的周期大小选择，并增强了音频适配器标签和延迟处理功能。PDF 渲染库 [poppler] 23.09.0 改进了数字签名，现在提供了要签名的证书的关键位置。

[20230921]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JPGP4ED7AMECXM2ENXJ7NAPCGN6BOR5C/
[ethtool]: https://mirrors.edge.kernel.org/pub/software/network/ethtool/
[iproute2]: https://git.kernel.org/pub/scm/network/iproute2/iproute2.git
[SMB3]: https://en.wikipedia.org/wiki/Server_Message_Block
[lvm2]: https://en.wikipedia.org/wiki/Logical_Volume_Manager_(Linux)
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[poppler]: https://poppler.freedesktop.org/
[kernel-source]: https://www.kernel.org/
[pipewire]: https://pipewire.org/

继上周的博客发布后不久，快照 [20230920] 也发布了，它为 [GNOME] 用户带来了一份周末礼物。[GNOME 45] 带来了一些变化。顶部栏中的新活动按钮具有动态工作区指示器，使其更加用户友好并取代了旧的应用程序菜单。各种应用程序的搜索性能更快，顶部栏中的新相机指示器会显示相机何时使用。GNOME 45 引入了一个新的默认图像查看器，该查看器快速、干净且自适应，并且文件应用程序现在速度更快且与搜索更加无缝。GNOME 显示管理器 [gdm] 45.0.1 修复了严重的崩溃问题，同时进行了大量代码清理并添加了对 [Wayland] 中多席位配置的支持。此快照还包含 [Flatpak] 1.15.4 的更新。Flatpak 处理了两个 CVE；修复了导致显示权限和元数据时现在会转义的特殊字符的 [CVE-2023-28101]，这可以防止恶意应用程序使用精心设计的元数据操纵权限列表。对于 [CVE-2023-28100]，Flatpak 应用程序在 Linux 虚拟控制台上运行，并且不再允许 ioctl。此安全增强功能可防止使用虚拟控制台时的潜在漏洞。快照中还有其他几个包更新，其中 [postgresql] 16 的主要版本优化了聚合函数，并增强了排序，从而加快了查询速度。根据其[发布公告]，批量加载性能提高了 300%。快照中的另一个主要版本更新是 [gedit] 46.1，它解决了构建问题，更新了其 Flatpak 并进行了一些代码重构以改进组织。

[20230920]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WV5ZYTYK762Z4UHPNZQJVFZYQJRTNMTX/
[GNOME]: https://www.gnome.org/
[GNOME 45]: https://release.gnome.org/45/
[gdm]: https://wiki.gnome.org/Projects/GDM
[Flatpak]: https://flatpak.org/
[Wayland]: https://wayland.freedesktop.org/
[CVE-2023-28101]: https://www.suse.com/security/cve/CVE-2023-28101.html
[CVE-2023-28100]: https://www.suse.com/security/cve/CVE-2023-28100.html
[postgresql]: https://www.postgresql.org/
[发布公告]: https://www.postgresql.org/about/news/postgresql-16-released-2715/
[gedit]: https://wiki.gnome.org/Apps/Gedit

------

原文：[Tumbleweed Gets systemd-boot Support](https://news.opensuse.org/2023/09/29/tw-gets-systemd-boot-support/)，作者：Douglas DeMaio
