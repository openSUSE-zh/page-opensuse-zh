---
author: Hanjingxue Boling
date: 2022-10-28 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: GStreamer、GNOME 和 systemd 在 Tumbleweed 中更新
image: /assets/posts/misc/systemd-logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 继续在本周每日发布新快照，此次新纪录是 15 个。

本周的滚动更新为用户带来了 [fetchmail](https://www.fetchmail.info/)、[GNOME](https://www.gnome.org/)、[GStreamer](https://gstreamer.freedesktop.org/)、[rsync](https://rsync.samba.org/) 和 [systemd](https://freedesktop.org/wiki/Software/systemd/) 等软件包的更新。

快照 [20221026](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3GKBGS352GFFCTUQ6K7373KPWEKHYOGM/) 更新了一些软件包。文本编辑器 [vim](https://www.vim.org/) 9.0.0814 修复了 [Kitty 终端](https://sw.kovidgoyal.net/kitty/index.html)和无法识别的 [Clang](https://en.wikipedia.org/wiki/Clang) 格式配置文件。vim 还使用空 shell 命令修复了内存泄漏，并且 [OpenVPN](https://openvpn.net/) 文件也无法识别。用于智能卡读卡器的 Linux 驱动程序包 [pcsc-towitoko](https://github.com/cprados/towitoko-linux) 2.0.8 更正了为西班牙国民身份证等某些卡设置的过低超时值。可移植的外部函数接口包 [libffi 3.4.4](https://github.com/libffi/libffi) 具有重要的 [AArch64](https://en.wikipedia.org/wiki/AArch64) 修复，其中包括对具有[链接时优化](https://developer.arm.com/documentation/101458/2100/Optimize/Link-Time-Optimization--LTO-/What-is-Link-Time-Optimization--LTO-)的 Linux 构建的支持。包装库 [libp11](https://github.com/OpenSC/libp11) 0.4.12 修复了几个内存泄漏和一些在令牌上的存储证书。

[gstreamer](https://gstreamer.freedesktop.org/) 1.20.4 的更新在快照 [20221025](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/22MJFGX6526DQONOVPOOHHHYP547ACAR/) 中发布，它修复了一个在更新未更改的 ping 源时发生的崩溃，更新了翻译，并且现在在更新客户端剪贴板时总是清除 [MIME 类型](https://en.wikipedia.org/wiki/Media_type)表。几个 gstreamer 插件也更新到 1.20.4 版本。xwayland 22.1.4 的更新提高了 Wayland 构建要求并修复了一些过度缓存。[gnome-maps](https://wiki.gnome.org/Apps/Maps) 43.1 的更新修复了与 [GTK4](https://www.gtk.org/) 端口相关的各种问题并修复了几个[拖放](https://en.wikipedia.org/wiki/Drag_and_drop)问题。文件压缩包 [zchunk](https://github.com/zchunk/zchunk) 1.2.3 增加了许可证扫描报告和状态的可用性。快照中更新了其他几个软件包，包括 [yast2-trans](https://software.opensuse.org/package/yast2-trans)，它更新了捷克语、荷兰语、斯洛伐克语、日语和加泰罗尼亚语。

快照 [20221024](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/OPNWWMPHZODBGIEI7RYQVFJS2CBKZ72Z/) 中仅更新了两个包。[autoyast2](https://github.com/yast/yast-autoinstallation) 4.5.6 修复了配置文件位置解析和 `add repo` URL 方案的问题。autoyast2 还为选定的网络后端添加了包，以防止它在软件部分中被声明。另一个需要更新的软件包是从 20221019 恢复到 20220714 版本的 selinux-policy。

[gnome-software](https://gitlab.gnome.org/GNOME/gnome-software) 43.1 的更新在快照 [20221023](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XZ3S5XI6A7CWX6EK3MXUM2KNHC2N7W6U/) 中到达。[GNOME 社区](https://www.gnome.org/)发布的次要版本修复了在同时安装和卸载应用程序时搜索未完成的问题。gnome-software 修复了存在包冲突时的发行版升级，并修复了在启动期间显示脱机更新错误时的崩溃。浏览器 [Mozilla Firefox](https://www.mozilla.org/) 更新至 106.0.1 版本，它解决了使用 [AMD](https://www.amd.com/) Zen 1 [CPU](https://en.wikipedia.org/wiki/Central_processing_unit) 的用户遇到的崩溃问题。本次快照更新了 [GCC](https://gcc.gnu.org/) 12，添加了与 [RISC-V](https://riscv.org/) 相关的补丁，并将嵌入式库 newlib 更新为 4.2.0 版本。Linux [kernel-source](https://www.kernel.org/) 6.0.3 的更新对在释放请求后对非易失性内存的处理效果进行了一些更改。域名查询包 [whois](https://github.com/rfc1036/whois) 5.5.14 添加了 [whois.auda.org.au](https://whois.auda.org.au/) 的隐藏字符串。DBus 接口 [fwupd](https://fwupd.org/) 1.8.6 上的超薄层封装修复了获取 [I²C 总线编号](https://en.wikipedia.org/wiki/I%C2%B2C) 时的回归问题。渲染扩展库 [libXrender](https://xorg.freedesktop.org/wiki/) 还在 0.9.11 版本更新中修复了一个回归问题。

快照 [20221022](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NH3N5DUWIBLXNV7IZWVJRX3M7YLKOSDC/) 更新了3D 图形库 [Mesa](https://www.mesa3d.org/) 22.2.2。Mesa 添加了一个补丁来修复 [LLVM](https://llvm.org/) 优化，以避免在 ARMv7 上出现故障。[systemd](https://freedesktop.org/wiki/Software/systemd/) 251.6 更新避免了导致安装错误的注释中的扩展宏。该软件包还确保从 [RTM 镜像](https://en.wikipedia.org/wiki/Software_release_life_cycle#RTM)安装时不会在系统上复制相同的种子。[cpupower](https://linux.die.net/man/1/cpupower) 6.0.2 的主要版本更新删除了 powercap 功能以修补最新的 [kernel-sources](https://www.kernel.org/)。[rsync](https://rsync.samba.org/) 包在 3.2.7 版本中修复了远程发送者过滤行为的客户端验证，并且优化了 `--fuzzy` 选项，以减少考虑大文件池时的计算量，这使得速度提高了约2倍。[Firefox](https://www.mozilla.org/) [106.0](https://www.mozilla.org/en-US/security/advisories/mfsa2022-44/) 的主要版本更新修复了六个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；例如如果网站以特定方式调用 `window.print()`，可能会导致浏览器[拒绝服务](https://en.wikipedia.org/wiki/Denial-of-service_attack)的 [CVE-2022-42929](https://www.mozilla.org/en-US/security/advisories/mfsa2022-44/#CVE-2022-42929)。[Harfbuzz](https://github.com/harfbuzz/harfbuzz) 5.3.1 和其他几个软件包在快照中进行了更新。

快照 [20221021](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TCIEP2J32ZLLJZBYCR4E5XUMZKGSF376/) 仅更改了一个包；[fetchmail](https://www.fetchmail.info/) 删除了一个需要 [python-rpm-macros](https://github.com/openSUSE/python-rpm-macros) 的子包。

快照 [20221020](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/SFCYFDH5I3BKD2N2XQ7FUX42C7OEQ2ZY/) 也更新了 [fetchmail](https://www.fetchmail.info/)。Fetchmail 6.4.34 更新了塞尔维亚语翻译并修复了一个错误，该错误会在 SMTP 接收者拒绝投递时启用软退回选项，但仍会从邮件存储中删除邮件。[NetworkManager](https://networkmanager.dev/) 1.40.2 的更新修复了几个[竞争条件](https://en.wikipedia.org/wiki/Race_condition)行为，如果所有地址都未能通过 [IPv6](https://en.wikipedia.org/wiki/IPv6) [重复地址检测](https://www.ibm.com/docs/en/zos/2.2.0?topic=discovery-duplicate-address-detection)，它现在会拒绝 DHCPv6 租约。[Plasma 5.26.1](https://kde.org/announcements/plasma/5/5.26.1/) 更新带来了错误修复。软件中心 [Discover](https://apps.kde.org/discover/) 提高了 [Flatpak](https://flatpak.org/) 测试的可靠性，但也禁用了持续集成上的测试。当服务器没有响应时，Plasma 的 Audio Volume Control 现在应该不会崩溃，并且 [Plasma Desktop](https://invent.kde.org/plasma/plasma-desktop) 使 [Pager](https://userbase.kde.org/Plasma/Pager) 小部件的拖放更加可靠。[gnome-control-center](https://gitlab.gnome.org/GNOME/gnome-control-center) 43.1 的更新修复了编辑网络时崩溃的问题。[virtualbox](https://www.virtualbox.org/) 6.1.40 更新修复了在控制器重置端口，设备分离时的崩溃。[python-setuptools](https://pypi.org/project/setuptools/) 65.5.0 改进了其文档中关于当前工作目录中的冲突条目和可编辑安装的信息。该软件包还修复了可编辑安装和直接从 distutils 继承的自定义 `build_ext` 命令的向后兼容性。本周的第一个快照还更新了其他几个包。

------

原文：[GStreamer, GNOME, systemd update in Tumbleweed](https://news.opensuse.org/2022/10/28/gstreamer-gnome-systemd-up-in-tw/)，作者：Douglas DeMaio