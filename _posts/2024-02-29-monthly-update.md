---
author:  Poplar at twilight
date: 2024-02-29 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 二月
image: /assets/posts/2024-02/circuit.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

欢迎来到 [openSUSE] [Tumbleweed] 2024 年 2 月的月度更新。由于闰年的缘故，本月多了一天，以下是本月的更新内容。本博客旨在为读者提供 openSUSE Tumbleweed 本月快照中主要更改、改进和问题的概览。如果读者希望获得更多有关 openSUSE Tumbleweed 快照的信息，建议订阅 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- [Linux 内核][linux]：Linux 内核在二月份进行更新，从 6.7.2 版本升级到 6.7.6 版本。这些更新的重点是加强内存管理，解决一些安全漏洞，并引入对新硬件型号的支持，确保提高各种系统的兼容性和性能。
  - 修正了各种问题，包括 [powerpc]/mm 中的取消空指针引用、[arm64][ARM] irq 的错误节点设置以及 powerpc 架构中的构建错误。
  - 修正了 arm64 irq 模块中 VMAP 堆栈的节点分配。
  - 修正 powerpc/mm 模块中 `pgtable_cache_add` 的取消引用空指针问题。
  - 修复 [ext4] 和 [JFS] 等文件系统中的各种问题。
  - 确保在 `x86/boot` 模块中正确处理早期启动时的 NMI。
  - 支持新硬件或型号：
    - 七彩虹 X15 AT 23 笔记本电脑
- [KDE Frameworks][5.115.0]：更新至 [5.115.0] 版本。
  - 额外的 [CMake] 模块：`ECMUninstallTarget` 现在能将生成的代码从已废弃的 `exec_program` 移植到其他地方，从而增强了兼容性和可维护性。
  - [KHolidays]：新增[圣布里吉德节]。
  - [KIO]：再次使用 KDirModel，允许在文件选择器中扩展网络目录。
  - [prison]：启用 `videoscannerworker.cpp` 的例外。
- [Mesa]：更新至 23.3.6 版本。
  - [zink]：解决了 Selaco 中的闪烁伪像、[PinePhone Pro] 上的色彩/双源混合破损问题，并修复了稀疏的 bo 放置问题。
  - [panfrost]：解决了 T604 (T600) 上的图形伪影问题，修复了编译器在构建 valhall 测试时的间歇性故障，并在 v4 上用零填充了计算作业。
  - radeonsi：修复了 780M 上 KMS DRM 渲染不同步的翻转/撕裂问题，并解决了《[失忆症：黑暗后裔]》中的严重损坏问题。
  - VK：修复了各种不稳定的测试、《[帝国时代 IV]》中的全屏"带状"伪影以及 dEQP-VK 管道测试中的故障。
- [systemd]：更新至 254.9 版本。
  - vconsole-setup：解决了在唯一找到的 vc 已被 plymouth 使用时 vconsole-setup 会失败的问题。
  - systemd-testsuite：依赖关系更新为 `qemu` 而非 `qemu-kvm`，后者已过时。
  - test/test-shutdown.py：添加了在专用日志文件中显示测试 I/O 的选项。
  - [手册页]：文档更新，包含发行版配置文件和本地配置文件的范围。
  - libbpf：更新了 systemd 依赖的 libbpf 版本（弱依赖）。
- [glibc]：从 2.38 版本更新至 2.39 版本。
  - PLT 重写：引入了一个新的可调整项 `glibc.cpu.plt_rewrite`，允许在 x86-64 架构上启用 PLT 重写。
  - 与 Linux 内核 6.6 同步：与 Linux 内核 6.6 shadow 堆栈接口同步。
  - 新函数：在 Linux 上增加了新函数，包括 `posix_spawnattr_getcgroup_np`、`posix_spawnattr_setcgroup_np`、`pidfd_spawn`、`pidfd_spawp` 和 `pidfd_getpid`。
  - scanf 系列函数：支持指向特定类型参数的 wN 格式长度修饰符。
  - 内存分配可调参数：引入新的可调整项 `glibc.mem.decoration_maps`，用于添加 glibc 分配的底层内存的附加信息。
  - ISO C2X：新增 ISO C2X 的 `<stdbit.h>` 头文件。
  - [AArch64]：为 AArch64 上的 libmvec 添加新符号。
  - ldconfig 增强功能：ldconfig 现在可跳过包含特定字符和模式的文件名。
  - 动态链接器改进：如果加载和卸载带有动态 TLS 的共享对象，动态链接器在 TLS 访问期间更多情况下会调用 malloc 和 free 函数。
- [Cups-Filters][cpus]：更新至 1.28.17 版本。
  - 改进的打印机功能发现：增强功能可以更可靠地发现无驱动打印机的所有打印机功能，尤其是无边界打印功能。这包括优先选择 Apple Raster 而不是 PWG Raster 或 PCLM 格式。
  - PPD 生成器优化：PPD 生成器现在仅使用最理想/最可靠的格式（通常是 Apple Raster）为栅格创建一个 *cupsFilter2 行。
  - 媒体数据库处理：如果需要，可以分别增强处理 media-col-database 和 media-col-ready IPP 属性，显示了无边框打印等重要功能。
  - 考虑边距替代方案：在为无驱动打印机生成 PPD 文件时，考虑所有边距替代方案，确保发现许多打印机的无边框功能。
  - 图像打印增强功能：现在使用 `print-scaling=none` 以原始尺寸打印图像，并且用于读取 TIFF 图像的已弃用数据类型已被现代等效数据类型取代。
- [openvpn]：更新至 2.6.9 版本。
  - 增强了日志记录功能：SSL 警报现在会被记录在更显眼的位置，从而提高了 SSL 相关问题的可见性。
  - 文档改进：对文档进行了澄清和补充，包括将 `tls-exit` 选项作为主要测试选项的文档。
  - 代码清理：删除了未使用的函数原型和冗余代码，确保代码库更简洁，并提高了可维护性。
  - 错误处理：添加缺失的错误检查并改进错误信息，以便更好地进行调试和故障排除。
  - 安全性增强：实施了 `--tls-export-cert` 功能，并增加了 TLS 1.0 PRF 可用性检查，从而改进了安全措施。
  - 配置澄清：澄清了 `tls-crypt-v2-verify` 选项，并删除了 `--tls-export-cert` 等多余选项。
  - 库兼容性：添加了对较新版本的依赖项（如 mbedtls 3.x.y）的支持，并禁用了 TLS 1.3 支持。

[手册页]: https://manpages.opensuse.org/
[失忆症：黑暗后裔]: https://store.steampowered.com/app/57300/Amnesia_The_Dark_Descent
[圣布里吉德节]: https://en.wikipedia.org/wiki/Imbolc
[5.115.0]: https://kde.org/announcements/frameworks/5/5.115.0/
[prison]: https://github.com/KDE/prison
[PinePhone Pro]: https://pine64.org/devices/pinephone_pro/
[帝国时代 IV]: https://www.ageofempires.com/games/age-of-empires-iv/

## 安全更新

本月的更新包括 [glibc]、[GStreamer]、[Salt]、[Xen] 和许多其他软件包的关键安全补丁和错误修复。

[Salt]: https://saltproject.io/

## 错误修复

- [glibc]：修复了一些 [CVE]。[CVE-2023-6246]、[CVE-2023-6779]（缓冲区溢出）、[CVE-2023-6780]（整数溢出），这两个漏洞都会导致缓冲区大小计算错误。
- [GStreamer]：[CVE-2024-0444] 使恶意第三方有可能触发应用程序崩溃。
- [Salt]：[CVE-2024-22231] 容易受到目录遍历攻击，而 [CVE-2024-22232] 具有特制的 URL，可能会导致 salt 文件服务器中的目录遍历。
- [Xen]：[CVE-2023-46839] 复杂度高，权限要求高。
- [dnsmasq]：[CVE-2023-50387] 和 [CVE-2023-50868] 都可能允许远程攻击者造成拒绝服务。
- [qemu]：[CVE-2023-6693] 可能允许黑客通过网络设备窃取数据。
- [bind]：[CVE-2023-50387] 与 “KeyTrap” DNS 缺陷相关，可让攻击者远程超载服务器。另外三个是 [CVE-2023-4408]、[CVE-2023-5679] 和 [CVE-2023-6516]。
- [Node.js]：修复了多个 CVE。它们分别是 [CVE-2024-21892]，它让非特权用户获得更高的权限；[CVE-2024-22019]，这是一个让攻击者通过格式错误的请求导致服务器崩溃的缺陷；[CVE-2024-22017]，这是一个通过 Buffer 的路径遍历错误实验特征中的操纵。还有 [CVE-2024-21896]、[CVE-2023-46809]、[CVE-2024-21891]、[CVE-2024-21890]、[CVE-2024-22025] 和 [CVE-2024-24758]，它们在重定向后保留 `Proxy-Authentication` 标头；根据需要升级。

[CVE-2023-6246]: https://www.suse.com/security/cve/CVE-2023-6246.html
[CVE-2023-6779]: https://www.suse.com/security/cve/CVE-2023-6779.html
[CVE-2023-6780]: https://www.suse.com/security/cve/CVE-2023-6780.html
[CVE-2024-0444]: https://www.suse.com/security/cve/CVE-2024-0444.html
[CVE-2024-22231]: https://www.suse.com/security/cve/CVE-2024-22231.html
[CVE-2024-22232]: https://www.suse.com/security/cve/CVE-2024-22232.html
[CVE-2023-46839]: https://www.suse.com/security/cve/CVE-2023-46839.html
[CVE-2023-50387]: https://www.suse.com/security/cve/CVE-2023-50387.html
[CVE-2023-50868]: https://www.suse.com/security/cve/CVE-2023-50868.html
[CVE-2023-6693]: https://www.suse.com/security/cve/CVE-2023-6693.html
[CVE-2023-50387]: https://www.suse.com/security/cve/CVE-2023-50387.html
[CVE-2023-4408]: https://www.suse.com/security/cve/CVE-2023-4408.html
[CVE-2023-5679]: https://www.suse.com/security/cve/CVE-2023-5679.html
[CVE-2023-6516]: https://www.suse.com/security/cve/CVE-2023-6516.html
[CVE-2024-21892]: https://www.suse.com/security/cve/CVE-2024-21892.html
[CVE-2024-22019]: https://www.suse.com/security/cve/CVE-2024-22019.html
[CVE-2024-22017]: https://www.suse.com/security/cve/CVE-2024-21896.html
[CVE-2024-21896]: https://www.suse.com/security/cve/CVE-2024-21896.html
[CVE-2023-46809]: https://www.suse.com/security/cve/CVE-2023-46809.html
[CVE-2024-21891]: https://www.suse.com/security/cve/CVE-2024-21891.html
[CVE-2024-21890]: https://www.suse.com/security/cve/CVE-2024-21890.html
[CVE-2024-22025]: https://www.suse.com/security/cve/CVE-2024-22025.html
[CVE-2024-24758]: https://www.suse.com/security/cve/CVE-2024-24758.html
[dnsmasq]: https://thekelleys.org.uk/dnsmasq/doc.html

## 结论

2024 年 2 月，openSUSE Tumbleweed 展示了重要组件的各种更新和改进。 glibc、GStreamer 和 Salt 等软件都有重要的安全补丁。内核从月初的 6.7.2 更新到 6.7.6。KDE Frameworks、Mesa、systemd、Cups-Filters 和其他核心组件都有更新。本月其他重大升级包括 fwupd 1.9.13、PostgreSQL 16.2、Pulseaudio 17.0、GTK 4.12.5、Python 3.11.8、RPM 4.19.1.1、Mozilla Firefox 122.0.1、PHP 8.2.16、Poppler 24.02.0、Shadow 4.14.5、binutils 2.42、Qemu 8.2.1 和 Python 3.12。下个月，systemd 255.3 应该会发布滚动版本，因为该软件包目前正在准备阶段。 openSUSE 团队鼓励用户继续通过错误报告、功能建议和讨论参与其中。

## 为 openSUSE Tumbleweed 做出贡献

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

------

原文：[openSUSE Tumbleweed Monthly Update - February](https://news.opensuse.org/2024/02/28/tw-monthly-update-feb/)，作者：Douglas DeMaio

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