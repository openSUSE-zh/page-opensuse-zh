---
author:  Poplar at twilight
date: 2024-08-30 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 八月
image: /assets/posts/misc/gcc.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

欢迎阅读 [openSUSE] [Tumbleweed] 的每月更新博客（2024 年 8 月）。本月是富有成效的一个月，取得了重大进展和更新。Tumbleweed 发布团队在一些长期项目上取得了进展，比如 dbus-broker 就取得了可喜的进展，而向 [GCC] 14 作为默认编译器的过渡也进入了第二阶段，因为我们正在努力解决剩余的编译失败问题。我们可能会实现在 20240827 快照中将 GCC 14 成为默认编译器。[Go] 1.22 本月成为默认的 go 编译器，[ffmpeg] 也从版本 6 升级到了版本 7。由于存在[冲突问题]，[最近构建的网络堆栈]出现了一个严重的问题，我们建议使用网络配置工具 [Wicked] 的用户延迟更新或使用 [snapper] 回滚系统。我们已于 8 月 28 日向 Wicked 提交了一个请求来解决这个问题，并可能在 8 月结束前释出已处理问题的快照。我们鼓励不依赖 Wicked 的用户照常进行更新。

[最近构建的网络堆栈]: https://suse.org.cn/更新通告/2024/08/27/network.html
[冲突问题]: https://youtu.be/KF8dF1QS8Go

请持续关注我们的动态！

如果读者希望获得更多有关快照更新的信息，我们鼓励读者订阅 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- [Linux Kernel] 6.10.4：此更新有一些关键更改，其中包括：
    - 修复内核 spec 文件中的 `klp_symbols` 宏，该修复解决了 openSUSE Tumbleweed 构建过程中的错误；
    - 网络改进解决了 `bnxt_en` 驱动程序中的问题，并对 [MPTCP] 协议进行了多项修复，该协议可使用多路径连接，同时最大限度地提高吞吐量并增加冗余；
    - [DRM] 子系统的更新包括修复 [Mesa] 的 [V3D] 驱动程序中的[内存泄漏]、处理 [AMD] GPU 驱动程序中的问题以及解决恢复后 AST 驱动程序中的黑屏问题；
    - 该更新还包括针对 [ALSA] 声音系统、[Btrfs] 文件系统和各种其他组件的关键错误修复。
- [GNOME] 46.4：此更新针对多个 GNOME 核心软件包带来了一系列增强和修复，其中包括：
    - 虽然 [gnome-bluetooth] 软件包已更新至 46.1 版本，但它解决了导致某些设备图标无法正确显示的错误，并更新了翻译；
    - [控制中心][gnome-control-center]改进了可访问性，解决了默认应用程序页面中的一个[内存泄漏]问题，并修复了与网络设置、Bolt 可见性和指纹注册相关的问题；
    - [gnome-software] 更新更正了 AppStream 元数据格式，同时更新了翻译、用户文档和帮助文档。
- [php][php8] 8.3.10：此更新带来了一系列关键修复和增强功能，其中包括：
    - 在核心部分，它解决了几个问题，包括内存泄漏、分段故障以及对 `sysconfsysconf(_SC_GETPW_R_SIZE_MAX) == -1` 系统的支持；
    - 值得注意的错误修复包括解决了使用 `__toString()` 属性强制（property coercion）时的 use-after-free 问题，，以及解决了 `DOMDocument::xinclude()` 中的崩溃问题；
    - 提高了与 libxml2 2.13.0 版本和 2.13.2 版本的兼容性，并修复了 PDO 等扩展中的问题；
    - 该更新修复了缓冲区溢出、流包装器截断（stream wrapper truncations）和内存泄漏等问题。
- [KDE Plasma] 6.1.4：此次更新对 Plasma 桌面环境的多个核心组件进行了各种修复和改进，其中包括：
    - [Discover] 解决了与许可证文本解析、图标缓存和可见性计算相关的错误；
    - 崩溃处理程序 [Dr Konqi] 通过集成版本信息并改进 `kwin_x11` 中崩溃的元数据合成来增强报告；
    - [KPipeWire] 增加了 [PipeWire] 重新启动期间流处理的弹性，并引入了使用 [libopenh264] 的新编码器；
    - [KWin] 包含许多修复，例如改进窗口焦点管理、解决崩溃问题和增强渲染性能；
    - Plasma Desktop 改进了文件夹视图行为、小程序布局和视觉配置。
- [Frameworks 6.5.0]：
    - [Attica] 添加了对 `DownloadDescription` 中新版本字段的支持；
    - [Bluez Qt] 修复了与 `connectedDevices` 列表属性相关的连接；
    - [Breeze Icons] 引入了新的类别图标并解决了各种应用程序的符号链接问题；
    - 额外的 [CMake] 模块添加了 `MANPATH` 支持并改进了 `WaylandScanner` 处理；
    - [KAuth] 增强了 [dbus] 后端功能；
    - [KIO] 改进了文件处理、增强了日志记录并优化了连接管理；
    - [Kirigami] 改进了对话框行为和辅助功能；
    - [KTextEditor] 添加了用于空格和制表符转换的新操作，并改进了换行的拖动行为；
    - 这些更新共同增强了 [KDE Plasma] 生态系统的功能、稳定性和用户体验。
- [systemd] 256.5：此更新恢复了 `libudev.so` 的 32 位版本，该版本在将 `libudev-devel` 合并到 `systemd-devel` 期间被误删。此恢复对于在 [Wine] 中为 32 位 Windows 应用程序启用即插即用支持至关重要。有关更改的详细列表，用户可以访问其 [GitHub 更改日志]。
- [KDE Gear 24.08]:为了迎接即将到来的 [Akademy 2024]，KDE Gear 24.08 带来了一系列应用程序的更新，其中包括：
    - 该版本为 [Dolphin] 引入了新功能，例如通过管理权限更轻松地进行文件管理以及简化的“移至新文件夹”选项；
    - 磁盘可视化工具 [Filelight] 拥有更友好的界面，并改进了 Windows 版本，可帮助您在 Dolphin 中直接可视化磁盘使用情况；
    - [Konsole] 通过新的书签功能使长输出的导航变得更加容易；
    - 视频编辑器 [Kdenlive] 改进了关键帧曲线编辑和精细的效果处理；
    - 行程应用 [Itinerary] 和会议跟踪器 [Kongress] 等应用已更新，可在 Akademy 活动期间为您提供帮助，提供详细的旅行计划和场地地图。

[Akademy 2024]: https://conf.kde.org/
[KDE Gear 24.08]: https://kde.org/announcements/gear/24.08.0/
[GitHub 更改日志]: https://github.com/openSUSE/systemd/compare/5bba1ebe17564b606cc5d1c07b14123c305019a7...bef0958f4db1b774c23505e93537ffe16f1b3894
[Frameworks 6.5.0]: https://kde.org/announcements/frameworks/6/6.5.0/

## 关键包更新

- [NetworkManager] 1.48.8：
    - 解决了 [Open vSwitch]（OVS）在没有初始化 DHCP 客户端的情况下可能触发 stage3 激活的问题；
    - 通过正确处理 `autoconnect-ports` 值改进了配置解析，从而更好地控制自动连接；
    - 通过在[邻居发现]（[NDISC]）中保留路由器首选项，增强了 IPv6 网络功能。
- [pavucontrol] 6.1：
    - PulseAudio 音量控制软件包的主要版本解决了一些问题，如不能被正确应用的翻译、拔下音频卡不会从界面上消失的错误以及蓝牙编解码器选择中的错位。
    - 桌面文件中的应用程序名称也更正为 “音量控制”。
    - 6.1 版本引入了多项重大变更，包括从 [GTK3] 迁移到 [GTK4]、嵌入式用户界面资源以及改进对 144 Hz 显示器的支持。
- [binutils] 2.43：
    - 新的 `.base64` 伪操作（pseudo-op）允许将数据编码为 base64 字符串；
    - 通过 CFCMOV 和 CCMP 等新指令扩展了英特尔 APX 支持；
    - x86 英特尔语法现在为助记符后缀提供了更多警告；
    - 汇编代码中的宏可以使用 `\+` 来跟踪执行计数。
    - 重大更新包括：
        - 支持 [AArch64] 中的 [armv9.5-a]、[RISC-V] 中的新扩展；
        - 改进了 [s390] 和 [MIPS] 中的数据处理；
        - [arm] 架构放弃了对落后的协处理器的支持；
        - [LoongArch] 对汇编选项进行了更精细的控制；
        - `readelf` 和 `objdump` 等工具的增强功能提供了更详细的输出，尤其是 `.eh_frame` 部分；
        - 链接器现在包括段处理（segment handling）和 ISA 级报告选项。
    - 这些更新增强了 binutils 在各种平台上的功能和适应性。
- [curl] 8.9.1：
    - 本次更新解决了一个关键回归问题，通过正确初始化结构，修复了对 `sigpipe` 信号的正确处理；
    - 错误修正包括在 [CMake] 中更好地检测 `libssh` 和 `nettle`，为基于事件的处理提供更好的连接关闭处理，以及为 `--ip-tos` 选项提供更强大的套接字代码；
    - 更新还改善了不同平台的兼容性和稳定性，包括针对 32 位系统、OS400 构建和 `NULL` 输入防御编码（defensive coding）的修复。
- [bash] 5.2.32：主要修正包括：
    - 纠正了 `strtoimax(3)` 的反向配置测试（inverted configure test）；
    - 解决了异步进程中的 DEBUG 陷阱可能错误地控制终端，导致调用 shell 退出的问题；
    - 该更新还纠正了一个问题，即包含协进程的函数在显示时使用了错误的 COPROC 命令，导致它们无法作为输入进行读取。

[邻居发现]: https://en.wikipedia.org/wiki/Neighbor_Discovery_Protocol
[NDISC]: https://linux.die.net/man/8/ndisc6
[armv9.5-a]: https://www.arm.com/architecture/cpu/a-profile/armv9

## 错误修复

- [orc] 0.4.39:
    - [CVE-2024-40897] 已在 0.4.39 之前的版本中得到解决，该版本在 `orcparse.c` 中存在缓冲区溢出漏洞。
- [curl] 8.9.1:
    - [CVE-2024-7264] 是一个解析器缺陷，可能会导致崩溃或泄漏堆内容。
- [Flatpak] 1.15.10:
    - [CVE-2024-424721] 是一个缺陷，允许通过持久目录中的符号链接进行未经授权的文件访问。
- [tiff]: 
    - [CVE-2024-7006] 是一个空指针缺陷，可能会导致崩溃，从而导致拒绝服务。
- [unbound] 1.21.0:
    - [CVE-2024-43167] 是一个空指针缺陷，可能会导致崩溃，从而导致拒绝服务。
- [Mozilla Firefox] 129.0：此版本修复了 14 个 CVE，解决了多个漏洞，包括:
    - 包括 [CVE-2024-7518]、[CVE-2024-7523] 和 [CVE-2024-7529] 的全屏通知对话框模糊。
    - 存在越界内存访问 [CVE-2024-7519] 和 [CVE-2024-7522]。 
    - [CVE-2024-7520] 和 [CVE-2024-7521] 以及其他一些影响安全和内存处理的 CVE 中的 [WebAssembly] 存在类型混淆和不完整的异常处理。
- [python311]:
    - [CVE-2024-6923] 是 [CPython] 电子邮件模块中的一个中等严重性漏洞，由于在电子邮件序列化期间不正确地引用换行符，该漏洞允许标头注入。

[CVE-2024-6923]: https://www.suse.com/security/cve/CVE-2024-6923.html
[CVE-2024-7518]: https://www.suse.com/security/cve/CVE-2024-7518.html
[CVE-2024-7523]: https://www.suse.com/security/cve/CVE-2024-7523.html
[CVE-2024-7529]: https://www.suse.com/security/cve/CVE-2024-7529.html
[CVE-2024-7519]: https://www.suse.com/security/cve/CCVE-2024-7519.html
[CVE-2024-7522]: https://www.suse.com/security/cve/CVE-2024-7522.html
[CVE-2024-7520]: https://www.suse.com/security/cve/CVE-2024-7520.html
[CVE-2024-7521]: https://www.suse.com/security/cve/CVE-2024-7521.html
[CVE-2024-40897]: https://www.suse.com/security/cve/CVE-2024-40897.html
[CVE-2024-7264]: https://www.suse.com/security/cve/CVE-2024-7264.html
[CVE-2024-424721]: https://www.suse.com/security/cve/CVE-2024-42472.html
[tiff]: http://www.simplesystems.org/libtiff/
[CVE-2024-7006]: https://www.suse.com/security/cve/CVE-2024-7006.html
[CVE-2024-43167]: https://www.suse.com/security/cve/CVE-2024-43167.html

## 结论

Tumbleweed 在 2024 年 8 月为用户提供了许多重大改进，对多个软件包进行了安全修复，以确保 Tumbleweed 保持稳定和安全。对 pavucontrol、binutils 和 curl 等工具进行了重大改进，增强了兼容性、性能和安全性。值得注意的是，Tumbleweed 对 php、systemd 和 NetworkManager 等软件包也进行了重要修复。这些更新共同促成了一个更完善、更稳定的滚动发布环境。

对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

## 为 openSUSE Tumbleweed 做出贡献

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - August 2024](https://news.opensuse.org/2024/08/29/tw-monthly-update-august/)，作者：Douglas DeMaio

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
[postgresql16]: https://www.postgresql.org/
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