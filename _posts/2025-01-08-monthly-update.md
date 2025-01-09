---
author: Poplar at twilight
date: 2025-01-08 07:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 十二月
image: /assets/posts/misc/new-tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

Tumbleweed 继续以稳健的滚动发布为典范，在 12 月释出多个快照和大量更新为 2024 年画上了句号！[KDE Gear 24.12] 提高了应用程序可用性，[SQLite] 引入了创新的查询功能，快照为各种软件包带来了关键补丁以增强安全性。这些更新不仅增强了功能，也为令人兴奋的 2025 年做好了准备。

[KDE Gear 24.12]: https://kde.org/announcements/gear/24.12.0/

与往常一样，如果出现任何问题，请记住使用 [snapper] 进行回滚。

祝您在风滚草上玩得愉快！🦎

有关当月更改日志的更多详细信息，请访问 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- **[KDE Gear 24.12]**：该更新为 [KDE] 的各种应用程序套件提供了许多增强功能。
    - [Dolphin] 现在拥有更好的键盘导航功能、文件排序功能，并为 Plasma Mobile 优化了新的移动界面。
    - 文档查看器 [Okular] 增强了注释、表单处理和数字签名功能。
    - [Kdenlive] 则引入了时间线项目大小调整和代理生成改进等功能。
    - 其他应用程序，如证书管理器 [Kleopatra] 和 [KDE Connect] 也进行了显著升级，包括改进密码学工具和蓝牙连接功能。
- **[KDE Frameworks 6.9.0]**：主要亮点包括更好的可访问性、改进的文件处理以及跨各个模块的更新的图标集。
    - [Baloo] 和 [Kirigami] 等框架在测试可靠性和可用性方面获得了重大更新。
    - [Breeze] 图标则引入了新的符号版本以实现更好的 UI 一致性。
    - Frameworks 向 [Qt6][qt] 的过渡取得了进展，许多组件现已针对兼容性进行了优化，并且新的 [Python] 绑定扩展了多个库中的功能。
    - 其他改进涉及加密处理、与 [Flatpak] 更好的集成以及针对 [Haiku] 等特定于平台的构建的修复。
- **[sqlite] 3.47.1 和 3.47.2**：
    - 3.47.1 版本修复了 makefile `DESTDIR` 处理，解决了某些 IN 查询的问题，以及先前版本中的错误。
    - 此次升级引入了 `RAISE` 的任意表达式、增强的查询优化、改进的 `group_concat` 行为以及新的 CLI 功能，例如 `median()` 和 `.www`。
    - 若干查询规划器的改进提高了性能，同时 SQLite 现在避免了 “long double” 的使用，以实现更好的兼容性。
    - 其他增强功能包括自定义区域设置感知 FTS5 分词器、无内容 FTS5 表和实验性 `sqlite3_rsync` 工具。新版本添加了对 TCL9 的兼容性，并修复了 JavaScript OPFS VFS 问题。
    - 3.47.2 版本解决了 3.47.0 版本中引入的影响 x64 和 i386 系统上特定数字文本值的文本到浮点转换问题。其中包括小错误修复，并且会话扩展现已启用以支持 [NodeJS] 22。
- **[Kernel-firmware] 20241128**：
    - 新版本引入了广泛的更新，包括 i915 Xe2LPD DMC v2.24、适用于戴尔笔记本电脑的新 Cirrus CS35L56 固件以及多个 [amdgpu] 更新。
    - 它还为[内核][kernel] 6.13-rc1 添加了新的别名，并增强了对各种 AMD GPU、[iwlwifi] 和其他设备的支持。
- **[gpg] 2.5.2**：
    - 此次更新引入了 ECC+Kyber 密钥生成、导入密钥后的 trustdb 验证以及改进的过期可信密钥处理
    - 增强功能包括修复加密问题、为智能卡提供强大的错误处理功能，以及提高证书列表的性能。
    - 其他更新还完善了 ADSK 密钥的使用，解决了数据库竞争问题，并优化了提取过程中的目录创建。
- **[curl] 8.11.1**：
    - 该版本解决了涉及 netrc 和重定向凭证泄漏的关键安全问题。
    - 改进包括修复 cookie 处理、增强的跟踪时间戳以及更好的过期证书错误消息传递。
    - 更新还解决了 netrc 解析、libssh IPv6 处理和 HTTP 内容解码方面的问题。

[KDE Frameworks 6.9.0]: https://kde.org/announcements/frameworks/6/6.9.0/
[Haiku]: https://www.haiku-os.org/

## 关键包更新

- **[Kernel] 6.12.6**：内核引入了大量改进和修复。
    - 主要更新包括增强对 USB 的支持、解决设备挂起中的问题以及改进特定设备的音频兼容性。
    - 其他值得注意的修复涉及调度、块存储、网络协议和 [RISC-V] 架构的增强。
    - 它还包括 BPF、IOMMU 和几个驱动程序的关键补丁。
- **[Flatpak] 1.15.12**：
    - 通过恢复 cgroup 名称中的进程 ID，修复了应用程序安装过程中的崩溃问题。
    - 引入了 USB 元数据参数（`--usb`、`--no-usb`），使用 `--a11y-own-name` 增强了可访问性。
    - 使用 `flatpak run -vv` 改进了调试
    - 添加了 KDE 搜索完成支持
    - 其他改进包括构建修复、更新的依赖关系和内存泄漏解决方法。
- **[systemd] 256.9 和 256.10**：
    - 256.9 更新阐明了关机二进制文件中 `$WATCHDOG_USEC` 的用法，并解决了 `udev-builtin-path_id` 中的 SAS 宽端口问题。
    - 新版本恢复了一个导致回归的提交，在不兼容的架构上禁用了 [EFI]，并在切换 root 时删除了 `/run/systemd`。
    - 256.10 更新包括修复 VLAN 范围、改进 [WireGuard] 密钥错误报告，以及调整 `systemctl` 以获得更好的用户反馈。
- **[LLVM] 19.1.5 和 19.1.6**：
    - 此次小更新提供了错误修复，并重新编译了 `llvm-do-not-install-static-libraries.patch` 以与更新保持一致。
- **[qemu] 9.2.0**：
    - 此次更新通过 virtio-gpu、支持 SHA-384 的增强型加密和 QATzip 迁移压缩，为 [Vulkan] 应用程序引入了 3D 加速。
    - [arm] 获得了针对 xilinx-zynq-a9 的 FEAT_EBF16 仿真、两级 SMMU 和 CPU 安全扩展。
    - RISC-V 获得了 IOMMU 支持、控制流完整性的扩展以及改进的矢量性能。
    - x86 的亮点包括新的 Nitro Enclave 机器类型和 AVX10 KVM 增强。
- **[GStreamer] 1.24.10**：
    - 此次更新解决了 MP4、Matroska 和 Ogg 解复用器等组件中的 40 多个安全漏洞，并修复了 avviddec 断言、appsink/appsrc、decodebin3、隐藏式字幕和管道图生成。
- **[vim] 9.1.0908**：
    - 此次更新包括新的文件类型识别、文档增强、对各种语言更好的语法支持，以及对补全、文件操作和插件等功能的大量错误修复。
    - 它还更新了翻译，并改进了 netrw 和 termdebug 等运行时组件。
- **[libzypp] 17.35.15**：
    - 此次更新将 `=` 视为 URL 查询值中的安全字符。
    - 添加了对将 `rpmdb.sqlite` 识别为数据库文件的支持。
    - 修复了拼写错误并调整了 FastCGI 标头。
- **[gedit] 48.1**：
    - 此次更新删除了 External Tools（外部工具）、Snippets（代码片段）和 Python 控制台等插件。
    - 该软件包用 C 语言重写了文本大小插件，并删除了背景图案网格功能。
    - 修复了 [Wayland] unmaximize bug 和编译警告，同时还重构了代码并更新了翻译。
    - `gedit-plugins-python-env.patch` 因过时而被删除。
- **[AppStream] 1.0.4** 版本带来了新功能，包括：
    - 用于系统更新的 `AS_BUNDLE_KIND_SYSUPDATE`，以及 Plasma 和 Pantheon 的暗色主题支持。
    - 改进了 Illumos、Solaris 和 GNU/Hurd 的内存大小检测，并增强了 Qt 中的品牌颜色曝光。
    - 修正了 GResource 加载、时区处理和旧版兼容性标记中的竞争条件。

## 错误修复和安全更新

本月解决了几个关键的安全漏洞：

- **[avahi]**:
    - [CVE-2024-52616]：可预测的 Avahi 守护程序 DNS 事务 ID 可能导致潜在的欺骗攻击。
- **[mozjs128] 128.5.1**:
    - [CVE-2024-11691]：通过 WebGL 在 Apple GPU 驱动程序中进行越界写入。
    - [CVE-2024-11692]：“选择” 列表元素可能显示在另一个网站上。
    - [CVE-2024-11694]：通过 Web 兼容性 Shims 绕过 CSP 和 XSS 暴露。
    - [CVE-2024-11695]：通过操纵 Punycode 和空白字符进行 URL 栏欺骗。
    - [CVE-2024-11696]：附加签名验证期间出现未处理的异常。
    - [CVE-2024-11697]：可执行文件确认对话框中的按键处理不正确。
- **[curl] 8.11.1**:
    - [CVE-2024-11053]：6.5–8.11.0 版本在 HTTP 重定向期间泄露 `.netrc` 密码。
- **[libheif]**：
    - [CVE-2023-0996]：解决了使用伪造的覆盖图像偏移进行 HEIF 文件解码期间的越界读写问题。
    - [CVE-2024-41311]：修复了在处理格式错误的 HEIF 文件期间可能导致内存损坏的缓解漏洞。
    - [CVE-2023-29659]：增强整体安全性并解决 HEIF 文件处理中的安全缺陷，以防止越界访问。
- **[socat] 1.8.0.2**:
    - [CVE-2024-54661]：socat 中的可预测临时文件路径可能允许任意文件覆盖。
- **[emacs]**：
    - [CVE-2024-53920]：在不受信任的 Emacs 上，Lisp 代码可以触发不安全的宏扩展，从而允许执行任意代码。

[socat]: http://www.dest-unreach.org/socat/
[CVE-2024-53920]: https://www.suse.com/security/cve/CVE-2024-53920.html
[CVE-2024-54661]: https://www.suse.com/security/cve/CVE-2024-54661.html
[CVE-2023-0996]: https://www.suse.com/security/cve/CVE-2023-0996.html
[CVE-2024-41311]: https://www.suse.com/security/cve/CVE-2024-41311.html
[CVE-2023-29659]: https://www.suse.com/security/cve/CVE-2023-29659.html
[libheif]: https://github.com/strukturag/libheif
[CVE-2024-11053]: https://www.suse.com/security/cve/CVE-2024-11053.html
[CVE-2024-11692]: https://www.suse.com/security/cve/CVE-2024-11692.html
[CVE-2024-11694]: https://www.suse.com/security/cve/CVE-2024-11694.html
[CVE-2024-11695]: https://www.suse.com/security/cve/CVE-2024-11695.html
[CVE-2024-11696]: https://www.suse.com/security/cve/CVE-2024-11696.html
[CVE-2024-11697]: https://www.suse.com/security/cve/CVE-2024-11697.html
[mozjs128]: https://spidermonkey.dev/
[CVE-2024-52616]: https://www.suse.com/security/cve/CVE-2024-52616.html
[CVE-2024-11691]: https://www.suse.com/security/cve/CVE-2024-11691.html

## 结论

2024 年 12 月以重大更新为这一年画上句号。显着的增强包括 QEMU 改进的虚拟化功能、systemd 改进的用户反馈和硬件兼容性，以及内核在提高设备支持和性能方面的进步。 Flatpak 和 AppStream 的更新进一步增强了生态系统，提供更好的应用程序管理和集成。随着 Tumbleweed 用户进入 2025 年，他们可以依靠舒适、安全的开源软件体验。快乐翻滚！

## Slowroll 更新

请注意，这些更新也适用于 [Slowroll] ，并且在 Tumbleweed 快照中发布后平均 5 到 10 天到达。这种按月的方式已经持续了好几个月，确保了用户的稳定性和及时的增强。

## 为 openSUSE Tumbleweed 做出贡献

订阅 openSUSE Factory 邮件列表，随时了解最新快照。对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - December 2024](https://news.opensuse.org/2025/01/08/tw-monthly-update-december/)，作者：Douglas DeMaio

[avahi]: https://avahi.org/
[iwlwifi]: https://wireless.docs.kernel.org/en/latest/en/users/drivers/iwlwifi.html
[KDE Connect]: https://kdeconnect.kde.org/
[RADV]: https://docs.mesa3d.org/drivers/radv.html
[NVK]: https://docs.mesa3d.org/drivers/nvk.html
[solid]: https://api.kde.org/frameworks/solid/html/
[KFilePlacesView]: https://api.kde.org/frameworks/kio/html/classKFilePlacesView.html
[KAccounts-Integration]: https://github.com/KDE/kaccounts-integration
[KIO-Extras]: https://github.com/KDE/kio-extras
[K3b]: https://apps.kde.org/zh-cn/k3b/
[Plasma Audio Volume Control]: https://docs.kde.org/stable5/en/plasma-pa/kcontrol/plasma-pa/index.html
[Plasma Mobile]: https://plasma-mobile.org/
[Powerdevil]: https://github.com/KDE/powerdevil
[ksystemstats]: https://github.com/KDE/ksystemstats
[Bluedevil]: https://userbase.kde.org/Bluedevil
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
[sqlite]: https://www.sqlite.org/index.html
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
[amdgpu]: https://github.com/ROCm/ROCK-Kernel-Driver
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