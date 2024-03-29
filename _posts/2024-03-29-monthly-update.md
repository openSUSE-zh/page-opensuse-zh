---
author:  Poplar at twilight
date: 2024-03-29 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 三月
image: /assets/posts/2024-03/bug.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

欢迎阅读 [openSUSE] [Tumbleweed] 2024 年 3 月的月度更新。本月为 Tumbleweed 提供了几个预期更新。

在了解软件包更新之前，请了解本博客旨在为读者提供 openSUSE 全月滚动发布中主要更改、改进和问题的概览。如果读者希望获得更频繁的快照更新信息，我们鼓励读者订阅 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- [Linux 内核]：快照 [20240319] 将内核从 6.7.9 更新至 6.8.1，增强了系统稳定性、安全性和硬件兼容性。主要的变更操作如下：
  - 补丁解决了[寄存器文件数据采样] (Register File Data Sampling, RFDS) 微架构漏洞 [CVE-2023-28746]。该补丁包括缓解措施，例如导出到 KVM/x86 环境中的虚拟机，并添加新文档。有一个补丁可以在设置 `X86_FEATURE_CLEAR_CPU_BUF` 时禁用 [KVM] 缓解。
  - 一个值得注意的还原是，在出现[问题]后，删除了 [Btrfs] 中 `inode_cache` 和 `recovery` 挂载选项的代码。修复了与 Btrfs 相关的问题，例如解决了在 [fiemap] 过程中检测[延迟分配]（Delayed Allocation）范围时的竞争条件。
  - 这些更新涉及到针对 [arm] 架构（armv6hl、armv7hl 和 arm64）的重大配置更改。这些更新反映了不同架构的选项值，并包括用于硬件支持的新配置，如各种 PINCTRL（引脚控制）、GPIO（通用输入/输出）、VIDEO、DRM（直接渲染管理器）和 SND_SOC（片上音效系统）设置。
- [Plasma 6][KDE Plasma]：详见：[openSUSE 正式搭载 Plasma 6](https://suse.org.cn/%E6%9B%B4%E6%96%B0%E9%80%9A%E5%91%8A/2024/03/23/plasma.html)
- [GNOME 46][GNOME]：详见：[GNOME 46 登录 openSUSE](https://suse.org.cn/%E6%9B%B4%E6%96%B0%E9%80%9A%E5%91%8A/2024/03/26/gnome.html)
- [systemd]：从 254.9 版本更新到 255.4 版本，更新提供了以下内容：
  - 如果特定问题已成为核心版本 255 更新的一部分，则会被重置或移除。这表明，在确保 openSUSE 中 systemd 功能的稳定性和可靠性的同时，为与上游开发保持一致迈出了重要一步。
  - 为确保引导加载程序安装过程在测试阶段的可靠性，systemd 软件包内的测试框架明显得到了加强。更多有关信息请阅读 [systemd-bootl] 集成。
- [libzypp] 17.32.0
  - 为 dup 升级过程引入新的解析器选项 `removeOrphaned`，以加强软件包管理。
  - 对 `vsftpd.conf` 进行了修复，以解决 SUSE 和 Fedora 使用不同默认值的问题。
  - 安全更新：修改以避免在摘要部分使用过时的 `OPENSSL_config`，从而加强安全实践。
  - 引入 `ProblemSolution::skipsPatchesOnly` 重载，以改进补丁管理流程。
  - 删除了 <https://download.opensuse.org> 的 HTTPS->HTTP 重定向异常，加强了下载过程的安全性和完整性。
- [zypper] 1.14.70
  - 集成了一个新选项 `--remove-orphaned`，用于在系统升级时移除所有孤儿软件包（orphaned packages）。
  - 改进了用户界面，在提交提示符下显示激活的试运行/仅下载（dry-run/download-only）选项，增强了用户体验和清晰度。
  - 在 `Ctrl+C` 时设置 libzypp 关闭请求信号，以提高响应速度和控制能力。
- [LLVM] 18
  - 为了与新版本保持一致，我们对 `llvm-do-not-install-static-libraries.patch` 和 `llvm-normally-versioned-libllvm.patch` 补丁进行了 rebase，以解决特定的发行和库问题。
  - 修改为优先使用 `ld.bfd`，而不是其他链接器，以实现与 THP（Transparent Huge Pages）兼容的分区布局，优化内存管理和性能。
- [shadow]：更新至 4.15.1 版本
  - 解决了导致有关未知 `login.defs` 配置选项的不必要错误信息的问题，并实现了文件描述符遗漏检查以提高安全性和可靠性。
  - 更新了 `shadow-4.15.0-fix-definition.patch`，以解决有关配置选项的错误信息。
  - 改进了与 libdl 的链接，以更好地处理动态链接库。
    - 修订了 `shadow-login_defs-unused-by-pam.patch` 以确保持续的兼容性和有效性。

[延迟分配]: https://ext4.wiki.kernel.org/index.php/DelayedAllocation
[fiemap]: https://www.kernel.org/doc/Documentation/filesystems/fiemap.txt
[问题]: https://github.com/yast/yast-update/issues/197
[寄存器文件数据采样]: https://docs.kernel.org/admin-guide/hw-vuln/reg-file-data-sampling.html
[20240319]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EW5VWYR22A4A5772WTYLPGXTFVGJTZKK/
[CVE-2023-28746]: https://www.suse.com/de-de/security/cve/CVE-2023-28746.html
[systemd-bootl]: https://news.opensuse.org/2024/03/05/systemd-boot-integration-in-os/

## 错误修复

- [Mozilla Firefox] 124.0.1：修复了多个 [CVE]。其中包括 [CVE-2024-29943]（攻击者可通过欺骗基于范围的边界检查消除，对 JavaScript 对象执行越界读取或写入）和相关的 [CVE-2024-29944]。快照 [20240326] 的更新还解决了另外 12 个 CVE 问题
- [redis] 7.2.3：该更新修复了 [CVE-2023-41056] 导致的内存问题和安全风险。
- [python311]：由于对自动工具脚本的还原使用，[CVE-2024-0450] 已添加到更新日志中。
- [Linux 内核] 6.8.1：[CVE-2023-28746] 与上述微架构漏洞相关。
- [Expat] 2.6.2：修复了 [CVE-2024-28757] 漏洞，可防止使用 XML 实体对其进行过载攻击，尤其是在使用以特定方式创建的外部解析器时。
- [opensc] 0.25.0：修复了 [CVE-2023-5992]，在该问题中，PKCS#1 加密填充移除未作为抗侧信道实现；修复了 [CVE-2024-1454]，该问题需要物理访问和与 AuthentIC 驱动程序相关的特殊设备，在设置新卡时会发生。
- [libvirt] 10.1.0：此更新修复了 [CVE-2024-1441]，该错误存在一个偏差错误，可能允许通过精心设计的数据拒绝服务导致守护进程崩溃。
- [Unbound] 1.19.2：修复了 [CVE-2024-1931]，该修复可能导致扩展 DNS 错误（Extended DNS Error）记录修剪中的无限循环导致拒绝服务。
- [graphviz]：[CVE-2023-46045] 的可利用性可能并不常见，因为该文件通常由 root 拥有，但与通过伪造的 config6a 文件进行越界读取有关。已提供一个受欢迎的修复。
- [openjpeg2] 2.5.2：攻击者可以利用 [CVE-2021-3575] 漏洞，以针对 openjpeg 编译的应用程序的权限执行任意代码。

[CVE-2021-3575]: https://www.suse.com/ko-kr/security/cve/CVE-2021-3575.html
[openjpeg2]: https://github.com/uclouvain/openjpeg
[graphviz]: https://graphviz.org/
[CVE-2023-46045]: https://www.suse.com/ko-kr/security/cve/CVE-2023-46045.html
[CVE-2024-1931]: https://www.suse.com/ko-kr/security/cve/CVE-2024-1931.html
[CVE-2024-1441]: https://www.suse.com/ko-kr/security/cve/CVE-2024-1441.html
[CVE-2023-5992]: https://www.suse.com/ko-kr/security/cve/CVE-2023-5992.html
[CVE-2024-1454]: https://www.suse.com/ko-kr/security/cve/CVE-2024-1454.html
[CVE-2024-29944]: https://www.suse.com/ko-kr/security/cve/CVE-2024-29944.html
[CVE-2024-29943]: https://www.suse.com/ko-kr/security/cve/CVE-2024-29943.html
[20240326]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VC6QZ5RDU6GJFGGJRW2XMJFNPCUQSBZU/
[CVE-2023-41056]: https://www.suse.com/ko-kr/security/cve/CVE-2023-41056.html
[CVE-2024-0450]: https://www.suse.com/ko-kr/security/cve/CVE-2024-0450.html
[CVE-2023-28746]: https://www.suse.com/ko-kr/security/cve/CVE-2023-28746.html
[CVE-2024-28757]: https://www.suse.com/ko-kr/security/cve/CVE-2024-28757.html
[Expat]: https://github.com/libexpat/libexpat
[opensc]: https://github.com/OpenSC/OpenSC

## 结论

openSUSE Tumbleweed 在 2024 年 3 月进行了大量的系统更新。除了 Plasma 和 GNOME 桌面环境之外，systemd、libzypp、LLVM 等也有改进。本月的其他重大升级包括对 [Bind]、[CMake]、[KDE ​​Gear 24.02.1]、[Mesa]、[qemu] 等的更新。对于那些想要贡献的 Tumbleweed 用户，请订阅 openSUSE Factory 邮件列表。 openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

[KDE ​​Gear 24.02.1]: https://kde.org/announcements/gear/24.02.1/

## 为 openSUSE Tumbleweed 做出贡献

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[openSUSE Tumbleweed Monthly Update - March](https://news.opensuse.org/2024/03/28/tw-monthly-update-march/)，作者：Douglas DeMaio

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