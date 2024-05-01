---
author:  Poplar at twilight
date: 2024-05-01 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 四月
image: /assets/posts/2024-05/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

欢迎来到 openSUSE Tumbleweed 2024 年 4 月的月度更新。本月的更新是在解决了[上个月针对 xz 压缩库的供应链攻击][exlink1]后开始的。[关于 XZ 后门的解释、如何解决该问题以及所学到的知识][exlink2]，请访问 [news.opensuse.org] 或 [suse.org.cn][exlink2]。

[exlink1]: https://suse.org.cn/更新通告/2024/03/30/xz.html
[exlink2]: https://suse.org.cn/社区新闻/2024/04/12/xz.html
[news.opensuse.org]: https://news.opensuse.org/2024/04/12/learn-from-the-xz-backdoor/

随着会议旺季的到来，openSUSE Tumbleweed 本月发布了大量更新、增强功能和重要的安全修复。如果读者希望更频繁地获得快照更新信息，我们鼓励读者订阅 [openSUSE Factory 邮件列表]。

## 新功能和改进

- [Linux 内核]：四月份有数次内核更新。Linux 6.8.5 的显著变化包括缓解分支历史注入（Branch History Injection, BHI）漏洞、改进 Spectre 缓解、更新英特尔图形驱动程序、修复 SMB 客户端漏洞和修复 [RISC-V] 架构。Linux 6.8.7 提供了 [AMD] 显示驱动程序、英特尔 [i915] 驱动程序、x86 推测执行漏洞（speculative execution vulnerabilities）、[arm] 64 位设备树文件、DRM 驱动程序、文件系统处理等的更新和修复。

[i915]: https://www.kernel.org/doc/html/latest/gpu/i915.html

- [KDE Frameworks 6.1.0]：`numpy` 软件包增强了对结构化数组和灵活索引的支持，而 `pandas` 则改进了对缺失数据的处理，并加入了新的数据处理方法。此外，`matplotlib` 软件包为情节美学（Plot aesthetics）提供了增强的自定义选项。此次更新还包含了用于 `scikit-learn` 机器学习任务的新算法。

[KDE Frameworks 6.1.0]: https://kde.org/announcements/frameworks/6/6.1.0/

- [KDE Gear 24.02.2]：KDE Gear 24.02.2 更新包含大量修复和增强功能。此次更新解决了 [Akonadi] 中标签添加功能的问题、[Akregator] 中翻译快捷方式和图标外观问题；并为 [ark] 提供了各种改进和修复，如禁用 RAR4 压缩方法。更新还修复了 [Elisa] 中的多个问题（其中包括音量滑块和曲目播放问题）以及为 [Konsole] 提供大量增强功能。[Korganizer] 中的日历选择和待办事项视图更新也得到了修复。

[KDE Gear 24.02.2]: https://kde.org/announcements/gear/24.02.2/

- [PHP8] 8.3.6：该更新包含大量错误修复、安全补丁以及对不同组件的改进。除了对 Core、DOM、GD、Opcache 和 Session 的修复外，其他修复包括：
  - FPM：修复了配置测试在守护进程模式下运行两次以及 `fpm_shm_free()` 中检查不正确的问题。
  - Gettext：修复了在特定配置下调用 `dcgettext` 和 `dcngettext` 时出现的问题。
  - MySQLnd：已应用多项修复，包括纠正握手响应和字符集长度检查。
  - Random：针对 8.2 之前的 PHP 版本引入了兼容性改进，并解决了全局 `Mt19937` 重置的问题。
  - Standard：在 `mail()` 函数中添加了对特定字符的验证，并应用了各种错误修复，包括解决命令注入和 cookie 旁路漏洞。（[CVE-2024-1874]、[CVE-2024-2756] 中已注明，并使用 [CVE-2024-3096] 和 [CVE-2024-2757] 修复了 `mb_encode_mimeheader` 和 `password_verify` 的问题。）

[CVE-2024-1874]: https://www.suse.com/security/cve/CVE-2024-1874.html
[CVE-2024-2756]: https://www.suse.com/security/cve/CVE-2024-2756.html
[CVE-2024-3096]: https://www.suse.com/security/cve/CVE-2024-3096.html
[CVE-2024-2757]: https://www.suse.com/security/cve/CVE-2024-2757.html

- [Mozilla Firefox] 125.0.2。该浏览器带来了以下新功能：
  - 加密媒体扩展（Encrypted Media Extensions, EME）新增对 AV1 编解码器的支持，提高了视频播放质量。
  - 增强的 PDF 查看器功能，可突出显示文本。
  - 引入 URL 粘贴建议功能，允许快速浏览复制到剪贴板的 URL，从而提高可用性。
  - 多个关键安全修复，解决了越界读取和使用后无错误等漏洞，增强了浏览器的安全性。
- [dracut]：新增了 `tpm2.target` 和 `systemd-tpm2-generator` 等改进功能，并修复了若干内存泄漏问题。
- [ffmpeg]：ffmpeg-4 和 ffmpeg-6 解决了一些视频处理问题，并修复了内存泄漏，改进了 EOF 处理。更新涉及：
  - [CVE-2023-51793] 和 [CVE-2023-49502]
  - [CVE-2023-50008] 和 [CVE-2023-50007]

[CVE-2023-51793]: https://www.suse.com/security/cve/CVE-2023-51793.html
[CVE-2023-49502]: https://www.suse.com/security/cve/CVE-2023-49502.html
[CVE-2023-50008]: https://www.suse.com/security/cve/CVE-2023-50008.html
[CVE-2023-50007]: https://www.suse.com/security/cve/CVE-2023-50007.html

- [sqlite3]：从 3.45.2 版本更新到 3.45.3 版本，解决了影响某些 [UPSERT] 操作中触发器响应准确性的一个长期存在的错误，以确保更可靠的数据库操作。

[UPSERT]: https://www.sqlite.org/lang_upsert.html

- [Flatpak]：1.15.8 版本更新包含一些防止沙箱逃逸的安全修复，以及其他各种可用性改进。
- [Python3.11][python311]：3.11.9 版本包含各种安全补丁和错误修复，如处理 [CVE-2023-52425]、将捆绑的 [libexpat] 更新至 2.6.0 版本、修复 `collections.deque.index()` 中可能出现的崩溃，以及改进 SSLContext 行为。

[CVE-2023-52425]: https://www.suse.com/security/cve/CVE-2023-52425.html
[libexpat]: https://libexpat.github.io/

- [Cppcheck]：2.14.0 版中的新检查包括：
  - `eraseIteratorOutOfBounds`：警告对超出范围的迭代器调用 `erase()`，从而增强代码的健壮性。
  - `returnByReference`：当从 `getter` 函数按值返回大型类成员时发出警告，这可能会影响性能和内存使用。

[Cppcheck]: https://github.com/danmar/cppcheck

## 其他软件包更新

- [SDL2]：2.30.2 版本引入了对各种新控制器的支持，包括 6 键 SEGA Mega Drive 控制板和 Hori Fighting Stick EX2。
- [Cryptsetup]：2.7.2 版本解决了几个问题，包括 OPAL 设备格式化和激活的修复。
- [SpamAssassin]：4.0.1 版本增强了 URL 缩短器链接重定向处理并改进了 TxRep 锁定管理，从而增强了用户的电子邮件安全性。

[Cryptsetup]: https://gitlab.com/cryptsetup/cryptsetup
[SpamAssassin]: https://spamassassin.apache.org/

## 错误修复

- [Xwayland]：[CVE-2024-31083] 这个严重的安全漏洞缓解了 Xorg 服务器因 `ProcRenderAddGlyphs()` 函数中的释放后使用 (use-after-free) 漏洞而造成的安全风险，该缺陷允许经过身份验证的攻击者执行任意代码。

[CVE-2024-31083]: https://www.suse.com/security/cve/CVE-2024-31083.html

- [PHP8]：[CVE-2023-51793]、[CVE-2023-49502]、[CVE-2023-50008] 和 [CVE-2023-50007]
- [glibc]：[CVE-2024-2961] 允许在转换为 ISO-2022-CN-EXT 时发生缓冲区溢出，导致崩溃或变量覆盖。[libxml2]：[CVE-2024-25062] 是一个通过精心设计的 XML 文档释放后使用的漏洞。

[libxml2]: https://github.com/GNOME/libxml2
[CVE-2024-25062]: https://www.suse.com/security/cve/CVE-2024-25062.html

- [Python3.11][python311]：[CVE-2023-52425]、[CVE-2023-6597]

[CVE-2023-6597]: https://www.suse.com/security/cve/CVE-2023-6597.html

- [QEMU]：针对一个漏洞进行了补丁和修复，该漏洞允许恶意虚拟机崩溃 QEMU，并导致拒绝服务情况，对应 [CVE-2024-3567]。[CVE-2024-3446] 可能会影响任意代码执行，同时也进行了补丁。

[CVE-2024-3567]: https://www.suse.com/security/cve/CVE-2024-3567.html
[CVE-2024-3446]: https://www.suse.com/security/cve/CVE-2024-3447.html

- [Freerdp2][freerdp]：2.11.5 版本修复了 [CVE-2023-40574] 和 [CVE-2023-40575]，前者在 `writePixelBGRX` 函数中出现越界（Out-Of-Bounds）写入，这可能是由于变量计算不正确造成的，后者则会导致崩溃。

[CVE-2023-40574]: https://www.suse.com/security/cve/CVE-2023-40574.html
[CVE-2023-40575]: https://www.suse.com/security/cve/CVE-2023-40575.html

## 结论

2024 年 4 月份的更新涵盖了功能增强和关键安全修复。从使用 SDL2 改善游戏支持到加强 Cryptsetup 的加密实践，用户受益于一系列旨在增强功能、稳定性和安全性的更新。在该月份，Tumbleweed 还更新了 [Mesa]、[GTK4] 和 [transactional-update] 等其他软件包。

对于那些想要贡献的 Tumbleweed 用户，请订阅 openSUSE Factory 邮件列表。openSUSE 团队鼓励用户通过 BUG 报告、功能建议和讨论继续参与。

## 为 openSUSE Tumbleweed 做贡献

您的贡献和反馈使 openSUSE Tumbleweed 的每次更新都更加完善。无论是报告错误、建议功能还是参与社区讨论，我们都非常重视您的参与。

----

原文：[openSUSE Tumbleweed Monthly Update - April](https://news.opensuse.org/2024/04/30/tw-monthly-update-april/)，作者：Douglas DeMaio

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