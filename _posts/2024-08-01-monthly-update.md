---
author:  Poplar at twilight
date: 2024-08-01 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 七月
image: /assets/posts/2024-08/july.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

欢迎阅读 [openSUSE] [Tumbleweed] 的每月更新博客（2024 年 7 月）。上个月社区忙于举办[柏林社区峰会]和 [openSUSE 大会]。两次活动都富有成果并受到热烈欢迎。尽管日程安排很忙，而且会议上有关[项目品牌重塑]的讨论也很忙碌，但本月仍然向用户推出了一些快照。

[项目品牌重塑]: https://lists.opensuse.org/archives/list/project@lists.opensuse.org/thread/E3EQOFD5NVWTM4MHLNA5MT5BGWQLUZ5U/
[柏林社区峰会]: https://events.opensuse.org/conferences/CSBerlin
[openSUSE 大会]: https://events.opensuse.org/conferences/oSC24

请持续关注我们的动态！

如果读者希望获得更多有关快照更新的信息，我们鼓励读者订阅 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- [Linux Kernel] 6.9.9：该内核对多个子系统进行了重要修复和增强。主要更新包括：
    - 引入 `devm_mutex_init()`，用于在多个组件中进行互斥（mutex）初始化；
    - 解决了 [Hisilicon] debugfs uninit 进程中的问题；
    - 解决了 DRM Lima 驱动程序中的共享 IRQ 处理；
    - 修复 PowerPC 架构，避免在实际模式（real mode interrupts）中断中出现 `nmi_enter/nmi_exit`；
    - 改进了网络，防止在 `net/dql` 中调用不必要的 `BUG()`；
    - 增强了 RTW89 等 WiFi 驱动程序，改进了对 6GHz 信道的处理；
    - 更新并解决了 DRM/AMD 驱动程序的多个问题，包括未初始化变量警告、确保正确的时间戳初始化和内存管理等；
    - [RISC-V] 架构对初始采样周期值进行了修复，并对多个 BPF 自我测试进行了调整，以更好地检测错误；<br />这些更新共同增强了系统的稳定性、性能和安全性。
- [KDE Plasma 6.1.3]：
    - [Discover] 现在可自动处理运行时的 [Flatpak] rebase，并正确卸载 EOL 引用，而无需替换；
    - [Kglobalacceld] 将明确处理无效的键盘代码（keycode）；
    - [Kpipewire] 在停用时引入了适当的清理，并修复了 `PipeWireSourceStream` 的线程处理；
    - [KScreen] 现在使用 [Kirigami] 的 `ContextualHelpButton`；
    - [Kscreenlocker] 增加了一个属性来跟踪过去的提示；
    - [KWin] 进行了大量改进：放宽了夜间颜色限制、简化了 [Wayland] 弹出窗口处理、改进了输入法窗口并增强了截屏插件；
    - Plasma Mobile 改进了主屏幕交互、翻译问题和轻扫检测；
    - Plasma Networkmanager 和 Plasma Workspace 受益于共享的 QQmlEngine 和各种错误修复，包括 Wayland 上的头像图像解码和指针扭曲。
- [Frameworks 6.4.0]：
    - [Attica] 更新其 `gitignore` 以包含 VS Code 目录；
    - [Baloo] 恢复了一个 `QCoreApplication` 更改并移植 QML 模块；
    - [Breeze 图标] 引入了 ColorScheme-Accent 并修复了数据警告（data-warning）图标；
    - [KArchive] 现在拒绝打开大小为负的 tar 文件，并修复了格式错误的文件导致的崩溃；
    - [KAuth] 和 [KBookmarks] 将 VS Code 目录添加到 `gitignore`；
    - [KCalendarCore] 添加了缺少的 QtCore 依赖项和日历模型的 QML 绑定。
    - [KIO] 改进了 [systemd] 进程处理并弃用了未使用的功能；
    - [Kirigami] 增强了导航和对话框组件；
    - [KTextEditor] 添加了一个用于测试 JavaScript 脚本的工具，并确保缩进大小均匀，修复了多个错误。
- [KDE Gear 24.05.2]：
    - [Akonadi-calendar] 添加了缺失的更改通知；
    - [Dolphin] 更新了元对象编译器的生成；
    - [Filelight] 支持 appx 构建，并确保出现 hicolor 图标；
    - [Itinerary] 修复了日历权限、损坏的注释，并且该包引入了新的提取器；
    - [Kdenlive] 解决了时间线、宽高比和编译问题；
    - [Okular] 修复了某些 PDF 操作的崩溃问题。
- [Supermin] 5.3.4： 此更新引入了多项关键增强功能，包括：
    - 支持 OCaml 5 和 kylinsecos；
    - 它通过检测 [dnf5] 和省略缺失选项改进了软件包管理；
    - 更新还通过使用 `-output-complete-exe` 而不是 `-custom`，改进了 OCaml 编译，修正了 aarch64 架构的内核过滤，并在 RISC-V 上启用了内核解压缩；
    - 该更新删除了新压缩包中包含的之前应用的补丁，有助于精简代码库并提高可维护性。
- [Checkpolicy 3.7]：
    - 最新更新在 nodecon 语句中引入了对无类域间路由表示法（Classless Inter-Domain Routing notation）的支持；
    - 增强了 [SELinux] 策略定义功能；
    - 错误消息现在更具描述性，并且错误处理也得到了改进；
    - 主要错误修复包括处理不可打印的令牌、避免垃圾值分配、释放临时边界类型以及按主机字节顺序执行连续检查。

[Checkpolicy 3.7]: https://github.com/SELinuxProject/selinux/releases/tag/3.7
[KDE Gear 24.05.2]: https://kde.org/announcements/gear/24.05.2/
[Breeze 图标]: https://github.com/KDE/breeze-icons
[Frameworks 6.4.0]: https://kde.org/announcements/frameworks/6/6.4.0/
[KDE Plasma 6.1.3]: https://kde.org/announcements/plasma/6/6.1.3/

## 关键包更新

- [NetworkManager] 1.48.4：
    - 此更新引入了对通过 MAC 地址匹配 [Open vSwitch] 系统接口的支持，从而增强了网络接口管理；
    - NetworkManager 现在在通过配置接口地址的反向 DNS 查找确定系统主机名时会考虑 `/etc/hosts` 的内容，从而提高主机名解析的准确性。
    - 更新的子包包括 `NetworkManager-bluetooth`、`NetworkManager-lang`、`NetworkManager-tui`、`NetworkManager-wwan`、`libnm0` 和 `typelib-1_0-NM-1_0`；<br />这些增强功能有助于在 Linux 环境中进行更强大、更精确的网络配置处理。
- [libguestfs] 1.53.5：此更新包括重要的增强功能和修复。
    - `--chown` 参数现在可以在 `:` 字符上正确分割；
    - 支持新的校验和命令；
    - 添加了对 [Circle Linux] 的检测和对 [LoongArch] 架构的支持，包括文件架构转换修复；
    - 该更新允许 `nbd+unix://` URI 并使用 `sfdisk` 重新实现 GPT 分区功能；
    - 改进了 DHCP 配置；
    - 新引入的 `virt-customize --inject-blnsvr` 操作增强了可用性；
    - 已弃用的功能包括删除 gluster、sheepdog 和 tftp 驱动器支持；
    - `findfs_partuuid` 和 `findfs_partlabel` 等新 API 改进了功能；
    - 检查工具现在能解析 `/etc/fstab` 中的 `PARTUUID` 和 `PARTLABEL`；<br />这些更新增强了跨各种环境的兼容性、性能和功能。
- [glib2] 2.80.4：最新更新的向后移植关键补丁：将 `EADDRNOTAVAIL` 映射到 `G_IO_ERROR_CONNECTION_REFUSED`、在 `g_file_load_contents()` 中处理大于 4GB 的文件，以及更正 GIR 安装位置和构建竞争条件。此外，  `gthreadedresolver` 的改进确保返回的记录在 `lookup_records()` 中正确进行引用计数。
- [ruby3.3] 3.3.4：
    - 此版本解决了一些捆绑 gem（例如 `net-pop`、`net-ftp`、`net-imap` 和 `prime`）的 `gemspec` 中缺少依赖项的问题；
    - 其他修复包括防止针对禁用警告的 `Warning.warn` 调用、更正 `String.new(:capacity)` 中的内存分配大小以及解决字符串损坏问题。
- [libgcrypt] 1.11.0：最新更新引入了几个新接口和性能增强。
    - 新功能包括用于密钥封装机制（Key Encapsulation Mechanism, KEM）的 API、对 [Streamlined NTRU Prime] sntrup761、[Kyber] 和 [Classic McEliece] 等算法的支持，以及包括 [HKDF] 和 [X963KDF] 在内的各种密钥派生函数（KDF）。
    - 性能改进包括针对 [ARMv8]/[AArch64]、[PowerPC] 和 [AVX2]/[AVX512] 架构上的 [SM3]、[SM4] 和其他加密操作的优化实现；
    - 其他更改包括对恒定时间操作的各种增强，并弃用 `GCRYCTL_ENABLE_M_GUARD` 控制代码。

[X963KDF]: https://cryptography.io/en/latest/hazmat/primitives/key-derivation-functions/#x963kdf
[HKDF]: https://en.wikipedia.org/wiki/HKDF
[Streamlined NTRU Prime]: https://ntruprime.cr.yp.to/
[Kyber]: https://en.wikipedia.org/wiki/Kyber
[Classic McEliece]: https://arxiv.org/pdf/1907.12754
[ruby3.3]: https://www.ruby-lang.org/en/
[Open vSwitch]: https://www.openvswitch.org/
[Circle Linux]: https://www.cclinux.org/
[ARMv8]: https://en.wikipedia.org/wiki/ARM_architecture_family#Armv8
[AVX2]: https://en.wikipedia.org/wiki/Advanced_Vector_Extensions
[AVX512]: https://en.wikipedia.org/wiki/AVX-512
[SM3]: https://en.wikipedia.org/wiki/SM3_(hash_function)
[SM4]: https://en.wikipedia.org/wiki/SM4_(cipher)

## 错误修复

- [orc] 0.4.39：
    - [CVE-2024-40897] 已在 0.4.39 之前的版本中得到解决，该版本在 orcparse.c 中存在缓冲区溢出漏洞。
- [java-21-openjdk] 21.0.4.0:
    - [CVE-2024-21131] 是一个难以利用的漏洞，允许未经授权的数据修改；
    - [CVE-2024-21138] 是一个导致部分拒绝服务的漏洞；
    - [CVE-2024-21140] 是一个允许未经授权的数据访问和修改的漏洞；
    - [CVE-2024-21145] 与上一个相似；
    - [CVE-2024-21147] 也是如此，但影响更关键的数据。
- [ovmf] 202402 在其季度更新中包含三个月的 CVE 补丁。
- [Mozilla Firefox] 128.0：此版本修复了 16 个 CVE。最严重的是[CVE-2024-6604]；这是 Firefox 128、Firefox ESR 115.13、[Thunderbird] 128 和 Thunderbird 115.13 中的内存安全错误。这些错误显示了内存损坏的证据，可能允许任意代码执行。
- [ghostscript] 10.03.1：
    - [CVE-2024-33869] 允许通过精心设计的 PostScript 文档绕过限制；
    - [CVE-2023-52722]；
    - [CVE-2024-33870] 允许通过精心设计的 PostScript 文档访问任意文件；
    - [CVE-2024-33871] 允许使用 `contrib/opvp/gdevopvp.c` 中的自定义驱动程序库通过精心制作的 PostScript 文档执行任意代码；
    - [CVE-2024-29510] 通过 uniprint 设备中的格式字符串注入允许内存损坏和 SAFER 沙箱绕过。
- [xwayland] 24.1.1 3:
    - [CVE-2024-31080] 存在一个漏洞，可能允许攻击者触发 X 服务器读取和传输堆内存值，从而导致崩溃；
    - [CVE-2024-31081] 可能会导致内存泄漏和分段错误，从而导致崩溃；
    - [CVE-2024-31083] 允许经过身份验证的攻击者通过特制请求执行任意代码。
- [libreoffice] 24.2.5.2：
    - [CVE-2024-5261] 允许在没有适当安全检查的情况下获取远程资源。
- [GTK3] 3.24.43：
    - [CVE-2024-6655] 允许在某些条件下从当前工作目录将库注入到 GTK 应用程序中。
- [netpbm] 11.7.0：
    - [CVE-2024-38526]：为 Python 项目提供 API 文档的 doc 存在一个漏洞，其中 `pdoc –math` 链接到来自 polyfill.io 的恶意 JavaScript 文件。

[CVE-2024-38526]: https://www.suse.com/security/cve/CVE-2024-38526.html
[CVE-2024-6655]: https://www.suse.com/security/cve/CVE-2024-6655.html
[CVE-2024-5261]: https://www.suse.com/security/cve/CVE-2024-5261.html
[CVE-2024-31080]: https://www.suse.com/security/cve/CVE-2024-31080.html
[CVE-2024-31081]: https://www.suse.com/security/cve/CVE-2024-31081.html
[CVE-2024-31083]: https://www.suse.com/security/cve/CVE-2024-31083.html
[CVE-2024-33869]: https://www.suse.com/security/cve/CVE-2024-33869.html
[CVE-2023-52722]: https://www.suse.com/security/cve/CVE-2023-52722.html
[CVE-2024-33870]: https://www.suse.com/security/cve/CVE-2024-33870.html
[CVE-2024-33871]: https://www.suse.com/security/cve/CVE-2024-33871.html
[CVE-2024-29510]: https://www.suse.com/security/cve/CVE-2024-29510.html
[CVE-2024-6604]: https://www.mozilla.org/en-US/security/advisories/mfsa2024-29/#CVE-2024-6604
[CVE-2024-21131]: https://www.suse.com/security/cve/CVE-2024-21131.html
[CVE-2024-21138]: https://www.suse.com/security/cve/CVE-2024-21138.html
[CVE-2024-21140]: https://www.suse.com/security/cve/CVE-2024-21140.html
[CVE-2024-21145]: https://www.suse.com/security/cve/CVE-2024-21145.html
[CVE-2024-21147]: https://www.suse.com/security/cve/CVE-2024-21147.html
[CVE-2024-40897]: https://www.suse.com/security/cve/CVE-2024-40897.html

## 结论

2024 年 7 月是重要更新、安全修复和增强的月份。Linux 内核 6.9.9 更新对多个子系统进行了重要修复和改进，提高了整体稳定性和性能。KDE Plasma 6.1.3 带来了大量用户界面改进，并更好地处理了 Flatpak 重建。Frameworks 6.4.0 和 KDE Gear 24.05.2 的更新提供了额外的增强功能和错误修复，改善了用户体验和系统可靠性。包括 Firefox、ghostscript 和 xwayland 在内的多个软件包中的重要安全漏洞也得到了修复，从而确保 Tumbleweed 对所有用户来说都是安全、高效和功能丰富的。此外，[Aeon] 团队还宣布，[上周发布的 Tumbleweed 快照][olink2]已[将 Aeon Desktop 提升至候选发布 3（RC3）状态][olink1]。

[olink1]: https://www.reddit.com/r/AeonDesktop/comments/1edi3tr/aeon_rc3_released/
[olink2]: https://suse.org.cn/%E6%9B%B4%E6%96%B0%E9%80%9A%E5%91%8A/2024/07/27/aeon-rc3.html

对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

## 为 openSUSE Tumbleweed 做出贡献

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - June 2024](https://news.opensuse.org/2024/07/04/tw-monthly-update-june/)，作者：Douglas DeMaio

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