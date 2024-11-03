---
author: Poplar at twilight
date: 2024-11-02 07:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 十月
image: /assets/posts/misc/new-tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本月，[Tumbleweed] 就像一个经过精心调试的引擎，精准而快速地完成了重要更新和错误修复。除了重要的安全补丁外，[GNOME]、[systemd]、[qemu] 等也有更新。处理了特别是针对 [Firefox]、[openssl] 和 [virtualbox] 软件包的各种 [CVE]，以提高系统的安全性。本月还更新了 [GNOME] 和 [KDE] 的桌面组件。

除了本月的所有软件包更新外，Tumbleweed 还进行了全新的[视觉改造]，更新了 Tumbleweed 的 LOGO 和包含白天和夜间主题变体的新壁纸。

[视觉改造]: ./2024-11-02-monthly-update.md

与往常一样，如果出现任何问题，请记住使用 [snapper] 进行回滚。

祝您在风滚草上玩得愉快！👻

有关当月更改日志的更多详细信息，请访问 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- **[LibreSSL] 4.0**：新的大版本进行了一些重大变更和删除，其中值得注意的有：
    - `openssl(1)` 中的 cms 命令现在支持 `CRLfile` 选项，以便在验证过程中指定额外的 CRL；
    - 更新还更改了 libtls 中的协议处理，完全忽略了不支持的 TLSv1.0 和 TLSv1.1 协议；
    - 删除了有潜在危险的 `EVP_PKEY*_check(3)` 函数；
    - 不再支持 Whirlpool 哈希函数。
- **[bind] 9.20.3**：
    - 新增了 `WALLET` 记录类型，允许将域名映射到加密货币钱包；
    - 引入了查询响应日志功能，通过响应类别提供摘要；
    - 做出了一项重要更改，在 DNS 记录传输过程中，如果记录过多导致失败，可以从 `IXFR` 回退到 `AXFR`；
    - 解决了一些问题，如只向前区域（forward-only zones）中不正确的统计数据、导致错误查询的静态存根错误；
    - 改进了 DNSSEC 验证和区域文件操作等长期运行流程。
- **[GNOME] 47.1**：
    - [gnome-shell] 的增强功能包括改进了快速设置的可访问性、更好地使用平板电脑用户界面强调色以及更准确的插入框阴影；
    - 翻译更新包括了各种布局修复、填充调整和崩溃修复；
    - [gnome-shell-extensions] 增加了经典模式中缺少的顶栏指示器；
    - [gnome-sudoku] 用户将获得多项用户界面修复，包括改进浅色模式下的工具提示，以及更好地处理撤销功能；
    - [gnome-text-editor] 的更新引入了对默认为隐式尾随换行符的文档的修复，并改进了小屏幕上的文本换行；
    - [gnome-bluetooth] 的更新解决了取消配对时崩溃的问题，并增加了对 Kawai CA501 音乐键盘的支持以及其他改进；
    - [gnome-control-center] 修复了后台名称处理中的可访问性回归问题；
    - 该软件包还对外观、颜色和用户等多个模块进行了改进。
- **[xz] 5.6.3**：
    - 主要变更包括 x86-64 内联汇编与旧版 [GNU Binutils] 的兼容性修复，以及针对 OpenBSD/sparc64 上的 [GCC] 4.2 的构建修复；
    - [xzdec] 工具现在能在使用 -M 等不支持的选项时正确显示错误；
    - [lzmainfo] 解决了舍入字典和未压缩大小时的整数溢出问题；
    - 在构建改进方面，基于 Autotools 的构建系统现在能更好地处理链接时优化（link-time optimization, `-flto`），[Solaris] 用户也能受益于 version.sh 中对重新生成 configure 文件的修复；
    - [CMake] 系统也得到了改进，包括优先使用 C11 而不是 C99 编译器，以及在链接到共享 [liblzma] 时避免不必要的线程标志；
    - 此外，还更新了加泰罗尼亚语、简体中文和巴西葡萄牙语的翻译。
- **[KDE Plasma] 6.2.1**：
    - 修复了 [Breeze] 在没有文本或图标时调整复选框大小的问题；
    - [Discover] 解决了与 Snap 包中的空通道相关的崩溃问题；
    - Plasma Addons 改进了网络浏览器小程序的比例选择；
    - [KWin] 进行了多项修复，包括使用自定义几何体优化渲染、正确处理 X11 键盘修饰符以及防止与窗口堆叠和时间戳相关的崩溃；
    - [Powerdevil] 改进了亮度控制并修复了显示滑块的问题；
    - Spacebar 修复了 SMS 发送问题，以进一步完善 [Plasma Mobile] 环境中的通信功能。
- **[KDE Gear 24.08.2]**：
    - [Dolphin] 修复了与 URL 中的尾部斜杠和文件名中的 `&` 符号显示相关的问题；
    - [Elisa] 解决了阻止播放没有元数据的曲目的问题；
    - 视频编辑器 [Kdenlive] 修复了多个错误，包括标题制作者更新、崩溃修复以及特效和关键帧处理的改进；
    - [Spectacle] 对截图清晰度以及模糊和像素化工具等用户界面元素进行了改进。
- **[Qt] 6.8.0**：该版本对整个 Qt 框架进行了重要更新，提高了性能和稳定性，具体如下：
    - libQt6Core 和 libQt6Gui 等核心库进行了错误修复并提高了性能；
    - Qt Multimedia 改进了对系统 Eigen headers 的支持，并优化了 x86 兼容性；
    - Qt WebEngine 和 Qt WebView 增强了网页渲染功能，并包含防止 ARM 系统构建失败的补丁；
    - Qt Quick 3D 和 Qt ShaderTools 等图形模块提供了更好的 3D 渲染和着色器处理；
    - 总体而言，本次更新增强了用户界面、多媒体和网络组件的功能。
- **[NetworkManager] 1.50.0**：
    - 在此更新中，已弃用对 `dhclient` 的支持，除非明确启用，否则默认情况构建时不再默认内置；
    - 现在推荐使用内部 DHCP 客户端，它自 1.20 版以来一直是默认设置；
    - 现在，在对系统主机名执行反向 DNS 查找时，该软件包会考虑 `/etc/hosts`；
    - 通过 ndisc 增加了对单个网络上多个网关的支持；
    - 现已支持 Wi-Fi AP 模式的 `channel-width` 配置；
    - 其他增强功能包括改进了网桥端口上 VLAN 的处理，以及更好地处理格式错误的 LLDP 数据包以避免崩溃。
- [cups] 2.4.11：
    - 此更新解决了与 Internet 打印协议（IPP）响应验证、PostScript 打印机描述（PPD）值处理和 Web UI 增强有关的几个问题；
    - 值得注意的变化包括将 `cupsd` 的最大文件描述符限制更新为 64k-1，并修复了 `lpoptions -d` 命令中已发现但未添加打印机的问题；
    - 增强了对 Web UI 中复选框的支持，并改进了打印机状态通知和 IPP Everywhere 打印机设置；
    - 此外，还包含了与 IPP 验证和 PPD 字符串处理相关的若干提交，以解决本地化字符串处理等问题。

[KDE Gear 24.08.2]: https://kde.org/announcements/gear/24.08.2/
[gnome-shell-extensions]: https://wiki.gnome.org/Projects/GnomeShell/Extensions
[xzdec]: https://linux.die.net/man/1/xzdec
[lzmainfo]: https://linux.die.net/man/1/lzmainfo
[GNU Binutils]: https://www.gnu.org/software/binutils/
[Solaris]: https://en.wikipedia.org/wiki/Oracle_Solaris
[liblzma]: https://github.com/kobolabs/liblzma
[Powerdevil]: https://github.com/KDE/powerdevil
[Plasma Mobile]: https://plasma-mobile.org/
[spectacle]: https://apps.kde.org/spectacle/
[CupS]: https://en.wikipedia.org/wiki/CUPS

## 关键包更新

- **[systemd] 256.7**：
    - 该版本由 26 位开发者贡献，共有 83 次 commit；
    - 主要改进包括完善了对管理 `nspawn` 容器的支持、`ld.so.cache` 的处理以及查询响应系统中更好的日志机制；
    - 该版本还解决了 seccomp 同步问题，并改进了 ARP 协议 (`sd-ipv4acd`) 的错误处理。
- **[kernel-source] 6.11.3**：
    - 主要更新包括改进静态调用处理，特别是模块故障和静态密钥递减（static key decrements）；
    - 多个 SCSI 修复解决了空驱动器重置时的输入/输出错误和 PCI 队列映射覆盖等问题；
    - 在图形方面，优化了[英特尔]和 [AMDGPU] 驱动程序，包括电源管理和显示渲染修复；
    - 网络更新包括修复 [Realtek] PHY 驱动程序、VLAN 处理以及防止数据包长度初始化中可能出现的下溢（underflow）情况；
    - 更新还引入了各种内存泄漏修复、蓝牙改进以及 [netfilter] 和 IPv4/IPv6 处理增强。
- **[gpg2] 2.5.1**：
    - 像 `--add-recipients` 和 `--change-recipients` 这样的新命令在管理收件人方面提供了更大的灵活性，并为签名处理增加了 `--proc-all-sigs` 选项；
    - 改进包括修复密钥检索、PKCS#12 解析更新以及使用环回 pinentry 时 `KEYTOCARD` 命令的解决方案；
    - 该版本更新现在还利用 libgpg-error 中的进程生成 [API] 来提高系统兼容性。
- **[gtk4] 4.16.3**：
    - 此更新增强了通过在 XDG 目录中搜索来处理默认光标主题的方式，以确保更好地兼容 [Wayland] 环境；
    - 默认光标大小现在与 `gsettings` 模式相匹配，可提供更一致的用户体验；
    - 改进了 portal 设置的回退流程，因为在切换到无 portal 设置的回退时，`settings_portal` 会被清除；
    - 此版本还包括更新的翻译。
- **[php8] 8.3.13**：
    - 此次更新对该软件包的内核和扩展包进行了一些必要的修复；
    - 日历扩展解决了 `jdtounix` 等日期函数中的溢出问题；
    - CLI 更新则防止了 HTTP 头信息的重复；
    - 内核更新解决了分段故障、内存泄漏和断言错误，从而稳定了嵌套框架和哈希表；
    - 在 DOM 中，修复了空指针和内存泄漏问题，使 XML 处理更流畅；
    - LDAP 现在可以处理 `ldap_modify_batch` 中的内存泄漏问题；
    - SOAP 补丁解决了分段故障和内存泄漏问题。
- **[wicked] 0.6.77**：
    - 该版本增强了 IPv4/IPv6 节点生成和特定接口设置；
    - 改进了跨接口（包括环回接口）的 sysctl 继承，但排除了 `use_tempaddr` 和 `accept_dad` 等设置；
    - 路由更新解决了目标处理问题；
    - 手册页面的增强则澄清了配置细节；
    - 新选项包括 DHCP4 的 `ignore-rfc3927-1-6` 设置；
    - 兼容性改进解决了已废弃的 `INTERFACETYPE=dummy` 问题；
    - 更新修复了 ethtool 操作中的数据泄露问题。

[virtualbox]: https://www.virtualbox.org/

## 错误修复和安全更新

本月解决了几个关键的安全漏洞：

- **[Firefox] 131.0.3**：
    - [CVE-2024-9936] 是一个漏洞，允许攻击者操纵选择节点缓存，可能导致崩溃；
    - [CVE-2024-9392] 可能允许在 131 版本以下的 Firefox 和 [Thunderbird] 中加载任意跨域页面。
- **[libnbd] 1.20.3**：
    - [CVE-2024-7383] 由于连接到 NBD 服务器时 TLS 证书验证不正确而允许中间人攻击。
- **[OpenSSL]**：
    - [CVE-2024-9143] 是一个漏洞，可能会导致内存访问越界，从而可能导致崩溃或远程代码执行，但可能性很小；
    - [CVE-2023-50782] 是一个漏洞，amy 允许远程攻击者解密使用 RSA 密钥交换的 TLS 服务器中捕获的消息，从而导致机密或敏感数据泄露。
- **[qemu] 9.1.0**：
    - [CVE-2024-8612] 可能会泄露未初始化的数据并导致潜在的信息泄露。
- **[virtualbox] 7.1.4**：
    - [CVE-2024-21248] 允许低权限攻击者破坏系统，从而可能导致未经授权的数据访问、修改或部分拒绝服务；
    - [CVE-2024-21273] 允许高权限攻击者未经授权访问所有数据，从而可能影响其他产品；
    - [CVE-2024-21259] 允许高权限攻击者潜在地接管系统，从而影响机密性、完整性和可用性；
    - [CVE-2024-21263] 允许低权限攻击者造成完全拒绝服务并获得对某些数据的未经授权的读取访问权限。
- **[libarchive] 3.7.6**：
    - [CVE-2024-20696] 和 [CVE-2024-26256] 是远程代码执行漏洞。
- **[webkit2gtk3] 2.46.1**：
    - Apple 用户会受益于 [CVE-2024-40866] 和 [CVE-2024-44187] 的修复。
- **[gnome-shell]**：
    - [CVE-2024-36472] 可能允许基于网络响应启动门户帮助程序，从而启用不受信任的 JavaScript 执行，从而可能导致资源消耗或其他影响。
- **[oath-toolkit] 2.6.11.12**：
    - [CVE-2024-47191] 可能允许通过不正确的用户文件访问来提升 root 权限，包括符号链接处理。
- **[unbound] 1.21.1**：
    - [CVE-2024-8508] 允许拒绝服务，这可能会导致名称压缩期间 CPU 使用率过高。

[CVE-2024-8508]: https://www.suse.com/security/cve/CVE-2024-8508.html
[CVE-2024-47191]: https://www.suse.com/security/cve/CVE-2024-47191.html
[oath-toolkit]: https://software.opensuse.org/package/oath-toolkit?locale=wa
[CVE-2024-36472]: https://www.suse.com/security/cve/CVE-2024-36472.html
[CVE-2024-44187]: https://www.suse.com/security/cve/CVE-2024-44187.html
[CVE-2024-40866]: https://www.suse.com/security/cve/CVE-2024-40866.html
[CVE-2024-26256]: https://www.suse.com/security/cve/CVE-2024-26256.html
[CVE-2024-20696]: https://www.suse.com/security/cve/CVE-2024-20696.html
[libarchive]: https://www.libarchive.org/
[CVE-2024-21263]: https://www.suse.com/security/cve/CVE-2024-21263.html
[CVE-2024-21259]: https://www.suse.com/security/cve/CVE-2024-21259.html
[CVE-2024-21273]: https://www.suse.com/security/cve/CVE-2024-21273.html
[CVE-2024-21248]: https://www.suse.com/security/cve/CVE-2024-21248.html
[CVE-2024-9936]: https://www.suse.com/security/cve/CVE-2024-9936.html
[CVE-2024-9392]: https://www.suse.com/security/cve/CVE-2024-9392.html
[CVE-2024-7383]: https://www.suse.com/security/cve/CVE-2024-7383.html
[libnbd]: https://gitlab.com/nbdkit/libnbd
[CVE-2024-9143]: https://www.suse.com/security/cve/CVE-2024-9143.html
[CVE-2023-50782]: https://www.suse.com/security/cve/CVE-2023-50782.html

## 结论

Tumbleweed 在 2024 年 10 月为用户带来了重大更新，并为他们提供了安全且高性能的系统。更新 systemd、pgp、php、GTK4 等关键软件包可以使您的系统保持最新状态并获得最新快照。订阅 openSUSE Factory 邮件列表，随时了解最新快照。

订阅 openSUSE Factory 邮件列表，随时了解最新快照。对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

## 为 openSUSE Tumbleweed 做出贡献

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - October 2024](https://news.opensuse.org/2024/10/30/tw-monthly-update-october/)，作者：Douglas DeMaio

[tiff]: http://www.simplesystems.org/libtiff/
[udev]: https://en.wikipedia.org/wiki/udev
[kalarm]: https://apps.kde.org/kalarm/
[Kate]: https://apps.kde.org/kate/
[KWallet]: https://github.com/KDE/kwallet
[knewstuff]: https://github.com/KDE/knewstuff
[DPI]: https://en.wikipedia.org/wiki/Dots_per_inch
[kdeclarative]: https://api.kde.org/frameworks/kdeclarative/html/index.html
[kcoreaddons]: https://api.kde.org/frameworks/kcoreaddons/html/index.html
[Breeze]: https://github.com/KDE/breeze
[CI]: https://en.wikipedia.org/wiki/Continuous_integration
[attica]: https://api.kde.org/frameworks/attica/html/index.html
[sddm-kcm]: https://github.com/KDE/sddm-kcm
[Plasma Workspace]: https://invent.kde.org/plasma/plasma-workspace
[Plasma Desktop]: https://kde.org/plasma-desktop/
[CPython]: https://en.wikipedia.org/wiki/CPython
[MIPS]: https://en.wikipedia.org/wiki/MIPS_architecture
[pavucontrol]: https://freedesktop.org/software/pulseaudio/pavucontrol/
[Open vSwitch]: https://www.openvswitch.org/
[Kongress]: https://apps.kde.org/kongress/
[V3D]: https://docs.mesa3d.org/drivers/v3d.html
[libopenh264]: https://github.com/cisco/openh264/releases
[MPTCP]: https://en.wikipedia.org/wiki/Multipath_TCP
[Wine]: https://www.winehq.org/
[Bluez Qt]: https://github.com/KDE/bluez-qt
[Breeze Icons]: https://github.com/KDE/breeze
[Dr Konqi]: https://invent.kde.org/plasma/drkonqi
[Wicked]: https://software.opensuse.org/package/wicked
[Go]: https://go.dev/
[GTK3]: https://www.gtk.org/
[netpbm]: https://netpbm.sourceforge.net/
[ghostscript]: https://www.ghostscript.com/index.html
[Thunderbird]: https://www.thunderbird.net/en-US/
[ovmf]: https://github.com/tianocore/tianocore.github.io/wiki/OVMF
[java-21-openjdk]: https://openjdk.org/projects/jdk/21/
[orc]: https://gstreamer.freedesktop.org/modules/orc.html
[libgcrypt]: https://gnupg.org/software/libgcrypt/index.html
[LoongArch]: http://www.loongson.cn/
[libguestfs]: https://libguestfs.org/
[Supermin]: https://github.com/libguestfs/supermin
[dnf5]: https://github.com/rpm-software-management/dnf5
[Itinerary]: https://apps.kde.org/itinerary/
[Filelight]: https://apps.kde.org/filelight/
[Akonadi-calendar]: https://api.kde.org/kdepim/akonadi-calendar/html/index.html
[KArchive]: https://github.com/KDE/karchive
[Attica]: https://api.kde.org/frameworks/attica/html/index.html
[KScreen]: https://github.com/KDE/kscreen
[Kscreenlocker]: https://github.com/KDE/kscreenlocker
[Kpipewire]: https://github.com/KDE/Kpipewire
[Kglobalacceld]: https://github.com/KDE/kglobalacceld
[Hisilicon]: https://www.hisilicon.com/
[KTextEditor]: https://github.com/KDE/ktexteditor
[KCalendarCore]: https://github.com/KDE/kcalendarcore
[KAuth]: https://develop.kde.org/docs/features/kauth/
[KBookmarks]: https://api.kde.org/frameworks/kbookmarks/html/index.html
[Emacs]: https://www.gnu.org/software/emacs/
[NetworkManager]: https://networkmanager.dev/
[ibus-table]: https://mike-fabian.github.io/ibus-table/
[Python-setuptools]: https://pypi.org/project/setuptools/
[Mesa-drivers]: https://www.mesa3d.org/
[Korganizer]: https://apps.kde.org/korganizer/
[Akregator]: https://apps.kde.org/akregator/
[Elisa]: https://apps.kde.org/elisa/
[Akonadi]: https://api.kde.org/kdepim/akonadi/html/index.html
[KVM]: https://www.linux-kvm.org/page/Main_Page
[cpus]: https://www.cups.org/
[panfrost]: https://docs.mesa3d.org/drivers/panfrost.html
[zink]: https://docs.mesa3d.org/drivers/zink.html
[PowerPC]: https://en.wikipedia.org/wiki/PowerPC
[ext4]: https://wiki.archlinux.org/title/Ext4
[JFS]: https://wiki.archlinux.org/title/JFS
[KHolidays]: https://api.kde.org/frameworks/kholidays/html/index.html
[openSUSE Factory 邮件列表]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/
[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[MariaDB]: https://mariadb.org/
[GTK]: https://www.gtk.org/
[gnome-software]: https://gitlab.gnome.org/GNOME/gnome-software
[gnome-shell]: https://gitlab.gnome.org/GNOME/gnome-shell
[GNOME]: https://www.gnome.org/
[gnome-maps]: https://gitlab.gnome.org/GNOME/gnome-maps
[loongarch64]: https://en.wikipedia.org/wiki/Loongson
[fwupd]: https://fwupd.org/
[sudo]: https://www.sudo.ws/
[Wacom]: https://en.wikipedia.org/wiki/Wacom
[polkit]: https://gitlab.freedesktop.org/polkit/polkit
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[hwdata]: https://github.com/vcrhonek/hwdata
[ncurses]: https://en.wikipedia.org/wiki/Ncurses
[rowhammer]: https://en.wikipedia.org/wiki/Row_hammer
[gcc]: https://gcc.gnu.org/
[gcc13]: https://gcc.gnu.org/
[sqlite3]: https://www.sqlite.org/index.html
[CLI]: https://en.wikipedia.org/wiki/Command-line_interface
[Qt 6]: https://www.qt.io/product/qt6
[qt6-base]: https://www.qt.io/
[qt6-wayland]: https://www.qt.io/
[Wayland]: https://wayland.freedesktop.org/
[ibus]: https://github.com/ibus/ibus
[libguestfs]: https://www.libguestfs.org/
[API]: https://en.wikipedia.org/wiki/API
[llvm17]: https://llvm.org/
[llvm]: https://llvm.org/
[git]: https://github.com/git
[i686]: https://en.wikipedia.org/wiki/P6_(microarchitecture)
[inkscape]: https://inkscape.org/
[evolution]: https://wiki.gnome.org/Apps/Evolution
[gtk4]: https://www.gtk.org/
[内存泄漏]: https://en.wikipedia.org/wiki/Memory_leak
[perl]: https://www.perl.org/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[snapper]: https://zh.opensuse.org/openSUSE:Snapper_Tutorial
[逻辑卷管理器]: https://en.wikipedia.org/wiki/Logical_volume_management
[iproute2]: https://git.kernel.org/pub/scm/network/iproute2/iproute2.git
[ethtool]: https://mirrors.edge.kernel.org/pub/software/network/ethtool/
[gpgme]: https://www.gnupg.org/related_software/gpgme/
[openSUSE 社区会议]: https://etherpad.opensuse.org/p/weeklymeeting
[Survey.opensuse.org]: https://survey.opensuse.org/
[meet.opensuse.org/bar]: https://meet.opensuse.org/bar
[LC3]: https://en.wikipedia.org/wiki/LC3_(codec)
[PipeWire]: https://pipewire.org/
[Mozilla Firefox]: https://www.mozilla.org/
[Firefox]: https://www.mozilla.org/
[usbutils]: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usbutils.git/
[icewm]: https://ice-wm.org/
[OpenCC]: https://pypi.org/project/OpenCC/
[Transmission]: https://transmissionbt.com/download
[Linux]: https://www.kernel.org/
[kernel]: https://www.kernel.org/
[kernel-source]: https://www.kernel.org/
[python]: https://www.python.org/
[Node.js]: https://nodejs.org/en/
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[php8]: https://www.php.net/
[Opcache]: https://www.php.net/manual/en/book.opcache.php
[OpenSSL]: https://www.openssl.org/
[selinux-policy]: https://github.com/SELinuxProject
[zstd]: https://facebook.github.io/zstd/
[NVIDIA]: https://www.nvidia.com/
[libsecret]: https://wiki.gnome.org/Projects/Libsecret
[transactional-update]: https://github.com/openSUSE/transactional-update
[python-pip]: https://pypi.org/project/pip/
[xen]: https://xenproject.org/
[openvpn]: https://openvpn.net/
[SIGSEGV]: https://en.wikipedia.org/wiki/Segmentation_fault
[ImageMagick]: https://imagemagick.org/index.php
[yast2-trans]: https://software.opensuse.org/package/yast2-trans
[gnutls]: https://www.gnutls.org/
[Flatpak]: https://flatpak.org/
[harfbuzz]: https://github.com/harfbuzz/harfbuzz
[gnome-bluetooth]: https://wiki.gnome.org/Projects/GnomeBluetooth
[bluez-gnome]: http://www.bluez.org/
[webkit2gtk3]: https://webkitgtk.org/
[webgl]: https://www.khronos.org/webgl/
[段错误]: https://en.wikipedia.org/wiki/Segmentation_fault
[Bash]: https://www.gnu.org/software/bash/
[AppStream]: https://www.freedesktop.org/wiki/Distributions/AppStream/
[DNSSEC]: https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions
[bind]: https://bind9.readthedocs.io/
[ALP]: https://susealp.io/
[openSUSE Factory]: https://en.opensuse.org/Portal:Factory
[gstreamer]: https://gstreamer.freedesktop.org/
[libcrypt]: https://www.gnupg.org/software/libgcrypt/index.html
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[nodejs21]: https://nodejs.org/en/
[nodejs]: https://nodejs.org/en/
[poppler]: https://poppler.freedesktop.org/
[服务定位协议]: https://en.wikipedia.org/wiki/Service_Location_Protocol
[社区会议]: https://etherpad.opensuse.org/p/weeklymeeting
[openSUSE 社区]: https://www.opensuse.org/
[董事会]: https://en.opensuse.org/openSUSE:Board
[openSUSE 成员]: https://en.opensuse.org/openSUSE:Members
[openSUSE 项目邮件列表]: https://lists.opensuse.org/archives/list/project@lists.opensuse.org/
[sssd]: https://sssd.io/
[xterm]: https://invisible-island.net/xterm/
[ARM]: https://www.arm.com/
[Linux Kernel]: https://www.kernel.org/
[KDE]: https://kde.org/
[KIO]: https://api.kde.org/frameworks/kio/html/index.html
[DBus]: https://www.freedesktop.org/wiki/Software/dbus/
[KConfig]: https://api.kde.org/frameworks/kconfig/html/
[ffmpeg-6]: https://www.ffmpeg.org/
[ffmpeg]: https://www.ffmpeg.org/
[pip]: https://pypi.org/%20version
[libmagic]: https://man7.org/linux/man-pages/man3/magic_list.3.html
[SMTP]: https://en.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol
[TLS]: https://en.wikipedia.org/wiki/Transport_Layer_Security
[postfix]: https://www.postfix.org/
[Ark]: https://apps.kde.org/ark/
[Kdenlive]: https://kdenlive.org/en/
[Dolphin]: https://apps.kde.org/dolphin/
[postgresql]: https://www.postgresql.org/
[binutils]: https://www.gnu.org/software/binutils/
[gimp]: https://www.gimp.org/
[gawk]: https://www.gnu.org/software/gawk/
[openSUSE 项目的 Jitsi 实例]: https://meet.opensuse.org/
[meet.opensuse.org/meeting]: https://meet.opensuse.org/meeting
[Hack Week]: https://hackweek.opensuse.org/
[Linux 内核固件]: https://www.kernel.org/
[Linux 内核]: https://www.kernel.org/
[VLC]: https://www.videolan.org/vlc/index.html
[英特尔]: https://www.intel.com/
[intel]: https://www.intel.com/
[libgusb]: https://github.com/hughsie/libgusb
[bluez]: http://www.bluez.org/
[ABI]: https://en.wikipedia.org/wiki/Application_binary_interface
[Weblate]: https://weblate.org/
[WASI]: https://wasi.dev/
[WebAssembly]: https://webassembly.org/
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[redis]: https://redis.io/
[RubyGems]: https://rubygems.org/
[wiki]: https://en.opensuse.org/
[openSUSE 项目]: https://www.opensuse.org/
[Vim]: https://www.vim.org/
[libsoup]: https://gitlab.gnome.org/GNOME/libsoup.git
[libzypp]: https://github.com/openSUSE/libzypp
[strace]: https://strace.io/
[ramdisk]: https://en.wikipedia.org/wiki/RAM_drive
[dracut]: https://dracut.wiki.kernel.org/index.php/Main_Page
[gnome-text-editor]: https://gitlab.gnome.org/GNOME/gnome-text-editor
[hxtools]: https://inai.de/projects/hxtools/
[poppler]: https://poppler.freedesktop.org/
[gpg]: https://gnupg.org/
[selinux-policy]: https://github.com/SELinuxProject
[Mozilla NSS]: https://firefox-source-docs.mozilla.org/security/nss/index.html
[KDE 集成插件]: https://community.kde.org/Plasma/Browser_Integration
[gnu-unifont-fonts]: https://unifoundry.com/unifont/index.html
[Thunar]: https://en.wikipedia.org/wiki/Thunar
[Shadow]: https://github.com/shadow-maint/shadow/
[C]: https://en.wikipedia.org/wiki/The_C_Programming_Language
[CMake]: https://cmake.org/
[hiredis]: https://github.com/redis/hiredis
[vulkan-loader]: https://github.com/KhronosGroup/Vulkan-Loader
[Vulkan]: https://www.vulkan.org/
[vulkan-tools]: https://github.com/KhronosGroup/Vulkan-Tools
[glib2]: https://wiki.gnome.org/Projects/GLib
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[mozilla-nss]: https://wiki.mozilla.org/NSS
[xfconf]: https://docs.xfce.org/xfce/xfconf/start
[YaST]: https://yast.opensuse.org/
[YaST2]: https://yast.opensuse.org/
[Apache]: https://httpd.apache.org/
[GVfs]: https://gitlab.gnome.org/GNOME/gvfs
[kconfigwidgets]: https://api.kde.org/frameworks/kconfigwidgets/html/index.html
[Kwin]: https://invent.kde.org/plasma/kwin
[firewalld]: https://firewalld.org/
[nftables]: https://git.netfilter.org/nftables/
[IPv6]: https://en.wikipedia.org/wiki/IPv6
[ICMPv6]: https://en.wikipedia.org/wiki/ICMPv6
[gnome-control-center]: https://gitlab.gnome.org/GNOME/gnome-control-center
[gnome-terminal]: https://gitlab.gnome.org/GNOME/gnome-terminal
[AMD]: https://www.amd.com/en
[kernel-firmware]: https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
[PackageKit]: https://www.freedesktop.org/software/PackageKit/
[apache2]: https://httpd.apache.org/
[ceph]: https://ceph.io/
[BlueFS]: https://www.ibm.com/docs/en/storage-ceph/5?topic=bluestore-ceph-bluefs
[dracut]: https://dracut.wiki.kernel.org/index.php/Main_Page
[RISC-V]: https://riscv.org/
[ALSA SoC]: https://www.kernel.org/doc/html/v4.10/sound/soc/platform.html
[JACK]: https://jackaudio.org/
[yast2-storage-ng]: https://github.com/yast/yast-storage-ng
[freerdp]: https://www.freerdp.com/
[lenovo]: https://www.lenovo.com/
[X11]: https://en.wikipedia.org/wiki/X_Window_System
[Wayland]: https://wayland.freedesktop.org/
[KImageFormats]: https://api.kde.org/frameworks/kimageformats/html/index.html
[Kirigami]: https://github.com/KDE/kirigami
[avif]: https://web.dev/learn/images/avif
[xcf]: https://en.wikipedia.org/wiki/XCF_(file_format)
[libnvme]: https://github.com/linux-nvme/libnvme
[samba]: https://www.samba.org/
[kmod]: https://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
[Leap]: https://get.opensuse.org/leap/
[Slowroll]: https://en.opensuse.org/openSUSE:Slowroll
[Kalpa]: https://en.opensuse.org/Portal:Kalpa
[Aeon]: https://en.opensuse.org/Portal:Aeon
[MicroOS]: https://get.opensuse.org/microos/
[Leap Micro]: https://get.opensuse.org/leapmicro/
[品牌指南]: https://opensuse.github.io/branding-guidelines/
[CC-BY-SA 4.0]: https://creativecommons.org/licenses/by-sa/4.0/deed.zh-hans
[gnome-sudoku]: https://wiki.gnome.org/Apps/Sudoku
[mutter]: https://gitlab.gnome.org/GNOME/mutter
[gnome-photos]: https://wiki.gnome.org/Apps/Photos
[gnome-user-share]: https://gitlab.gnome.org/GNOME/gnome-user-share
[zchunk]: https://github.com/zchunk/zchunk
[Qt]: https://www.qt.io/
[TrueType]: https://en.wikipedia.org/wiki/TrueType
[freetype2]: https://freetype.org/
[OpenVMS]: https://vmssoftware.com/
[wireplumber]: https://github.com/PipeWire/wireplumber
[microos-tools]: https://github.com/openSUSE/microos-tools
[libyui]: https://github.com/libyui
[yast2-country]: https://github.com/yast/yast-country
[zypper]: https://github.com/openSUSE/zypper
[Kitinerary]: https://invent.kde.org/pim/kitinerary
[KWindowSystem]: https://api.kde.org/frameworks/kwindowsystem/html/
[AMDGPU 驱动程序]: https://en.opensuse.org/SDB:AMDGPU
[Mesa]: https://www.mesa3d.org/
[gpg2]: https://gnupg.org/
[libva]: https://github.com/intel/libva
[DRM]: https://en.wikipedia.org/wiki/Direct_Rendering_Manager
[Orca]: https://wiki.gnome.org/Projects/Orca
[NetworkManager-applet]: https://gitlab.gnome.org/GNOME/network-manager-applet
[WireGuard]: https://www.wireguard.com/
[Ruby]: https://www.ruby-lang.org/en/
[Xfce]: https://www.xfce.org/
[xfce4-clipman-plugin]: https://gitlab.xfce.org/panel-plugins/xfce4-clipman-plugin
[D-Bus]: https://en.wikipedia.org/wiki/D-Bus
[惠普]: https://developers.hp.com/
[NFS]: https://en.wikipedia.org/wiki/Network_File_System
[IPv4]: https://en.wikipedia.org/wiki/IPv4
[LibreOffice]: https://www.libreoffice.org/
[Unicode]: https://home.unicode.org/
[icewm]: https://ice-wm.org/
[libvirt]: https://libvirt.org/
[AArch64]: https://en.wikipedia.org/wiki/AArch64
[Hack Week]: https://hackweek.opensuse.org/
[SUSE]: https://www.suse.com/
[openQA]: http://open.qa/
[GraphicsMagick]: http://www.graphicsmagick.org/
[SLE]: https://www.suse.com/products/server/
[GIMP Toolkit]: https://www.gimp.org/
[nvme-cli]: https://github.com/linux-nvme/nvme-cli
[LXQt]: https://lxqt-project.org/
[xdg-utils]: https://www.freedesktop.org/wiki/Software/xdg-utils/
[yast2-python-bindings]: https://github.com/yast/yast-python-bindings
[mpg123]: https://www.mpg123.de/
[p7zip]: https://7-zip.org/
[transactional-update]: https://github.com/openSUSE/transactional-update
[yast2-bootloader]: https://github.com/yast/yast-bootloader
[x86_64]: https://en.wikipedia.org/wiki/X86-64
[yast2-installation]: https://github.com/yast/yast-installation
[QEMU]: https://www.qemu.org/
[UUID]: https://en.wikipedia.org/wiki/Universally_unique_identifier
[libHX]: https://inai.de/projects/libhx/
[libblockdev]: https://github.com/storaged-project/libblockdev
[DNS]: https://en.wikipedia.org/wiki/Domain_Name_System
[xwayland]: https://wayland.freedesktop.org/xserver.html
[SMB3]: https://en.wikipedia.org/wiki/Server_Message_Block
[lvm2]: https://en.wikipedia.org/wiki/Logical_Volume_Manager_(Linux)
[gdm]: https://wiki.gnome.org/Projects/GDM
[gedit]: https://wiki.gnome.org/Apps/Gedit
[openSUSE 调查]: https://survey.opensuse.org/
[openSUSE 产品]: https://get.opensuse.org/
[systemctl]: https://www.freedesktop.org/software/systemd/man/systemctl.html
[kiwi]: https://opensuse.github.io/kiwi/
[libwebp]: https://developers.google.com/speed/webp/
[KMail]: https://github.com/KDE/kmail
[Konsole]: https://konsole.kde.org/
[Okular]: https://okular.kde.org/
[Gwenview]: https://apps.kde.org/gwenview/
[Discover]: https://apps.kde.org/discover/
[HiDPI]: https://wiki.archlinux.org/title/HiDPI
[curl]: https://curl.se/
[sudo]: https://www.sudo.ws/
[libportal]: https://github.com/flatpak/libportal
[USB4]: https://en.wikipedia.org/wiki/USB4
[Wi-Fi 7]: https://en.wikipedia.org/wiki/IEEE_802.11be
[utmp]: https://en.wikipedia.org/wiki/Utmp
[AppArmor]: https://apparmor.net/
[SELinux]: https://github.com/SELinuxProject
[ACPI]: https://en.wikipedia.org/wiki/ACPI
[libavif]: https://github.com/AOMediaCodec/libavif
[CAB 文件]: https://en.wikipedia.org/wiki/Cabinet_(file_format)
[btrfsprogs]: https://btrfs.wiki.kernel.org/
[FIPS]: https://en.wikipedia.org/wiki/Federal_Information_Processing_Standards
[python311]: https://www.python.org/
[pypi]: https://pypi.org/
[kexec-tools]: https://github.com/horms/kexec-tools
[sssd]: https://sssd.io/
[unbound]: https://nlnetlabs.nl/projects/unbound/about/
[NAT64]: https://en.wikipedia.org/wiki/NAT64
[perl-Bootloader]: https://github.com/openSUSE/perl-bootloader
[FreeRDP]: https://www.freerdp.com/
[CMake]: https://cmake.org/
[LibreSSL]: https://www.libressl.org/
[endian systems]: https://en.wikipedia.org/wiki/Endianness
[suse-module-tools]: https://github.com/openSUSE/suse-module-tools
[cockpit-selinux]: https://cockpit-project.org/guide/latest/feature-selinux
[Cockpit]: https://cockpit-project.org/
[路线图]: https://en.opensuse.org/openSUSE:Roadmap
[get.opensuse.org]: https://get.opensuse.org/
[glibc]: https://www.gnu.org/software/libc/
[Cython]: https://pypi.org/project/Cython/
[libfprint]: https://fprint.freedesktop.org/
[sysvinit]: https://github.com/slicer69/sysvinit
[KDE Plasma]: https://kde.org/plasma-desktop/
[Baloo]: https://community.kde.org/Baloo
[less]: https://www.greenwoodsoftware.com/less/
[openSUSE OBS 系统]: https://build.opensuse.org/
[开放构建服务]: https://openbuildservice.org/
[openSUSE 服务和工具]: https://status.opensuse.org/
[联机帮助页]: https://manpages.opensuse.org/
[man]: https://gitlab.com/man-db/man-db
[ndctl]: https://github.com/pmem/ndctl
[389-ds]: https://github.com/389ds/389-ds-base
[catfish]: https://docs.xfce.org/apps/catfish/start
[xz]: https://tukaani.org/xz/
[SLES]: https://www.suse.com/products/server/
[fusion3]: https://github.com/libfuse/libfuse
[JRE]: https://en.wikipedia.org/wiki/Java_(software_platform)#Java_Runtime_Environment
[xruns]: https://unix.stackexchange.com/questions/199498/what-are-xruns
[MIDI]: https://en.wikipedia.org/wiki/MIDI
[plasma5-desktop]: https://kde.org/plasma-desktop/
[s390]: https://en.wikipedia.org/wiki/IBM_System/390
[btrfs]: https://btrfs.wiki.kernel.org/
[radeon]: https://www.amd.com/en/graphics/radeon-rx-graphics
[sdl2]: https://www.libsdl.org/
[openssl-3]: https://www.openssl.org/
[Novell]: https://en.wikipedia.org/wiki/Novell
[Fedora]: https://fedoraproject.org/
[openSUSE 的虚拟酒吧]: https://meet.opensuse.org/bar
[openSUSE-repos]: https://github.com/openSUSE/openSUSE-repos
[PPPoE]: https://en.wikipedia.org/wiki/Point-to-Point_Protocol_over_Ethernet
[hwinfo]: https://github.com/openSUSE/hwinfo
[yast2-network]: https://github.com/yast/yast-network
[hwinfo]: https://github.com/openSUSE/hwinfo
[kdump]: https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html
[libmount]: https://github.com/util-linux/util-linux
[flac]: https://xiph.org/flac/
[TCP]: https://en.wikipedia.org/wiki/Transmission_Control_Protocol
[UDP]: https://en.wikipedia.org/wiki/User_Datagram_Protocol
[autofs]: https://mirrors.edge.kernel.org/pub/linux/daemons/autofs/
[wifi]: https://www.wi-fi.org/
[sendmail]: https://www.linuxfromscratch.org/blfs/view/svn/server/sendmail.html