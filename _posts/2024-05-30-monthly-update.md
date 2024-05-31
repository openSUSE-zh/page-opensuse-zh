---
author:  Poplar at twilight
date: 2024-05-30 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 五月
image: /assets/posts/2024-05/tw2.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

欢迎阅读 openSUSE Tumbleweed 2024 年 5 月的月度更新。本月带来了大量更新、增强功能以及关键的安全修复。无论您是开发人员、系统管理员还是普通用户，这些更新都旨在提升您的使用体验并确保最高级别的安全性和性能。

如果您希望更频繁地获取有关快照更新的信息，请订阅 [openSUSE Factory 邮件列表]。

让我们开始吧！

## 新功能和改进

- [Linux Kernel] 6.9.1：内核在 5 月份更新了数次，但目前仍停留在 6.9.1 版本，该版本修复了各种问题并增强了整体稳定性。针对 mt7915 无线网卡的 [mt76] 驱动程序通过添加缺少的 chanctx 操作进行了改进，从而增强了功能。内核针对密钥子系统进行了关键修复，以防止在实例化过程中覆盖密钥过期时间，从而提高了安全性。通过添加 `mhi_power_down_keep_dev()` API，增强了调制解调器主机接口子系统对系统挂起/休眠的支持，这有助于在电源管理操作期间保持设备状态。
- [LLVM] 18.1.6：此次更新涵盖了多个子包，例如 `clang-tools`、`clang18`、`libLLVM18`、`libclang-cpp18`、`libclang13` 和 `llvm18-gold`。主要修复了以下问题：修复了使用 `StructRet` 时，参数对齐的函数生成不正确的 thunk 或传递不正确的返回值的问题。引入了 `-Xclang -target-feature -Xclang +unaligned-scalar-mem` 选项，用于在不支持非对齐向量访问的 CPU 上启用非对齐标量内存访问。修复了使用 `-march=native` 在不支持 AVX512 的设备上编译 AVX512 代码时出现的构建失败问题。另外，还修复了 AArch64 后端因 IR 层的 `fcmp` 指令操作数为 `true` 或 `false` 引起的崩溃问题，并修复了一些导致编译器崩溃的错误。
- [KDE Frameworks] 5.116.0：Breeze 图标增强了对音频文件格式的支持，添加了针对以下文件类型的图标： `audio/ogg`、`audio/x-vorbis+ogg` 和 `audio/vnd.wave` MIME 类型。额外的 CMake 模块也进行了重要更新，其中包括放弃了在 `ecm_add_qch` 中具有已安装配置的 target 上设置 IMPORTED 的尝试。KFileMetaData 修复了属性命名空间的处理，并提高了元数据的准确性和处理能力。KService 修复了与 “mimeType `x-scheme-handler/file` not found” 问题相关的警告。
- [udisks2] 2.10.1: 此次更新了乌克兰语和德语翻译。改进了 LVM2 RAID 的测试，具体措施包括擦除已使用的设备、在检查属性之前让系统稳定下来，以及在测试后重新扫描 vdev。添加了离线和在线文件系统增长测试（grow test），并澄清了 Filesystem.Size 属性的文档。修复了 nvme 测试中的 Python 类调用，并为 `udisksctl` 中的 `loop-setup` 命令添加了 `–no-partition-scan` 选项。
- [firewalld] 2.1.2：新版本的更新包含数个修复：策略现在允许使用 `to-addr` 为 `egress-zone=HOST` 转发端口；已经纠正了丰富规则中大规则限制的范围检查；并且在测试期间修复了 `fw-in-container` 环境中的跳过检测问题。
- [snapper] 0.11.0：此次更新引入了异步清理过期的 btrfs qgroups，并恢复了某些部分以修复在 [OBS] 中的构建问题。清理服务现在设置为每小时运行一次，如果 qgroups 不存在则禁用它们，以避免在创建快照时失败。新增了对季度快照的支持，并且基于编码集的表格样式选择现在已经实现。
- [GTK3] 3.24.42：打印功能通过避免访问已释放的打印机得到了改进。Wayland 修复包括正确显示监视器大小、修复与平板移除相关的崩溃、推断平铺窗口的可调整边缘，以及确保在确认配置后尽快进行提交。[GTK4] 4.14.4：解决了没有子元素时的崩溃问题，并在加载符号 SVG 和处理无色符号方面提高了效率。无障碍更新包括使 gtk-demo 侧边栏搜索更易访问，并停止发出焦点事件。GDK 引入了对 `XDG_ACTIVATION_TOKEN` 的支持，并对 dmabuf 进行了防御性改进，这些改进包括更仔细地处理未知格式和使用更窄的 YUV 格式范围。
- [Mozilla Firefox] 126.0：该浏览器进行了重大更新，修复了 16 个 [CVE]。修复了 PDF.js 中的任意 JavaScript 执行漏洞（CVE-2024-4367）。修复了点击劫持导致的潜在权限请求绕过问题（CVE-2024-4764）。修复了内存安全漏洞（CVE-2024-4778 和 CVE-2024-4777），后者也适用于 Firefox ESR 115.11 和 Thunderbird 115.11。[sssd] 2.9.5：此次更新引入了一个新的配置选项，名为`failover_primary_timeout`。该选项允许用户配置在成功连接到备份服务器后，SSSD 尝试重新连接主服务器的频率。此前，该间隔硬编码为 31 秒，且仍为默认值。
- [openldap2] 2.6.7：liblber 库修复了长消息缺少换行符的问题，libldap 解决了与 [openssl-3] 的退出处理问题、使用多个 LDAP URI 时的 TLS 问题、OpenSSL 密码套件处理问题以及使用 [OpenSSL] 3.0 时的 Diffie-Hellman 参数文件处理问题。slapd 服务现在在 matchedDN 处理时遵守 disclose 选项，改进了 ACL 中的正则表达式测试，并修复了粘合数据库的同步复制问题。
- [iproute2] 6.9：此次更新引入了几个新功能和改进：`m_mirred` 模块现在允许镜像到块设备，`tc` 命令为 action 和过滤器增加了 `NLM_F_ECHO` 支持。`ip` 命令增强了对 bonding 的 coupled_control 支持，并新增了 [IOAM6] 的 `monitor` 命令。
- [xwayland] 24.1.0：此功能版本解决了在先前候选版本中引入的多个回归问题，并移除了对 `eglstreams` 的支持。
- [AppStream] 1.0.3：主要功能包括增强的验证器检查，以确保描述列表未被翻译，改进了描述的翻译检查，以及通过 CLI compose 命令将选定的自定义条目传播到目录输出的能力。此外，还增加了许多其他功能。

[IOAM6]: https://docs.kernel.org/networking/ioam6-sysctl.html
[openldap2]: https://www.openldap.org/
[GTK3]: https://www.gtk.org/
[obs]: https://build.opensuse.org/
[udisks2]: https://www.freedesktop.org/wiki/Software/udisks/
[KDE Frameworks]: https://kde.org/announcements/frameworks/5/5.116.0/
[mt76]: https://openwrt.org/docs/techref/driver.wlan/mt76

## 关键软件包更新

- [tpm2-0-tss] 4.1.0：此次更新提供了对 [CVE-2024-29040] 的重大安全修复。实施了各种错误修复，包括修正 FAPI 身份验证回调的长度检查、修复与 CEL 规范的偏离问题以及解决之前被 json-c 忽略的 FAPI 配置文件中的 json 语法错误。更新还增加了对新功能的支持，并启用了使用外部密钥进行 Fapi_Encrypt 的功能。
- [postgresql16] 16.3：修复了 [CVE-2024-4317]，该漏洞可能允许非特权数据库用户从其他用户的 `CREATE STATISTICS` 命令中读取大多数常见值和其他统计信息。
- [Python] 3.x 版本修复了 [CVE-2023-6597]。这是一个在 CPython 中发现的漏洞，影响 3.12.1、3.11.7、3.10.13、3.9.18、3.8.18 和更早版本。在清理过程中，当存在权限错误时，此类错误地跟随符号链接。因此，在特定条件下，具有运行特权程序能力的用户可能会更改符号链接指向的文件的权限。

[tpm2-0-tss]: https://github.com/tpm2-software/tpm2-tss
[CVE-2024-29040]: https://www.suse.com/security/cve/CVE-2024-29040.html
[CVE-2024-4317]: https://www.postgresql.org/support/security/CVE-2024-4317/
[CVE-2023-6597]: https://www.suse.com/security/cve/CVE-2023-6597.html
[cpython]: https://github.com/python/cpython

## 错误修复

- [glib2] 2.80.2:
    - [CVE-2024-34397] - GNOME GLib 中存在一个问题，允许伪造 D-Bus 信号，从而影响客户端行为
- [qt6-base]:
    - [CVE-2024-33861] - QStringConverter 的无效指针回调可以修改堆栈，从而导致使用 QStringDecoder 的应用程序存在漏洞。
- libxml2 2.12.7
    - [CVE-2024-34459] - xmllint `–htmlout` 中的缓冲区过度读取可能会导致 2.12.7 之前的 libxml2 版本中出现漏洞。
- libarchive 3.7.4:
    - [CVE-2024-26256] - 远程执行漏洞
- krb5 添加了一些补丁来修复与以下相关的内存泄漏：
    - [CVE-2024-26458]
    - [CVE-2024-26461]
    - [CVE-2024-26462]
- ovmf
    - [CVE-2022-36763] - `Tcg2MeasureGptTable()` 中的 `EDK2` 漏洞允许通过本地网络发生堆缓冲区溢出
- python-Jinja2 3.1.4:
    - [CVE-2024-34064] - Jinja 的 `xmlattr` 过滤器漏洞允许键中使用非属性字符，从而存在遭受 XSS 攻击的风险。
- [tpm2-0-tss] 4.1.0:
    - [CVE-2024-29040] 是一个漏洞，它允许攻击者生成任意报价数据，而 [Fapi_VerifyQuote] 可能无法检测到这些数据。

[Fapi_VerifyQuote]: https://tpm2-tss.readthedocs.io/en/stable/group___fapi___verify_quote.html

[CVE-2024-34397]: https://www.suse.com/security/cve/CVE-2024-34397.html
[CVE-2024-33861]: https://www.suse.com/security/cve/CVE-2024-33861.html
[CVE-2024-34459]: https://www.suse.com/security/cve/CVE-2024-34459.html
[CVE-2024-26256]: https://www.suse.com/security/cve/CVE-2024-26256.html
[CVE-2024-26458]: https://www.suse.com/security/cve/CVE-2024-26458.html
[CVE-2024-26461]: https://www.suse.com/security/cve/CVE-2024-26461.html
[CVE-2024-26462]: https://www.suse.com/security/cve/CVE-2024-26462.html
[CVE-2022-36763]: https://www.suse.com/security/cve/CVE-2022-36763.html
[CVE-2024-34064]: https://www.suse.com/security/cve/CVE-2024-34064.html
[CVE-2024-29040]: https://www.suse.com/security/cve/CVE-2024-29040.html

## 结论

2024 年 5 月，openSUSE Tumbleweed 持续推出了一系列关键的安全修复、重要的更新和显著的增强。对 Linux 内核、LLVM、KDE 框架和许多其他组件的更新确保了 Tumbleweed 系统保持功能丰富并持续更新。开发人员和用户都从改进、增强和新功能中受益。

对于那些希望贡献或参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户继续通过 bug 报告、功能建议和讨论来参与进来。

## 为 openSUSE Tumbleweed 做贡献

您的贡献和反馈使 openSUSE Tumbleweed 的每次更新都更加完善。无论是报告错误、建议功能还是参与社区讨论，我们都非常重视您的参与。

----

原文：[openSUSE Tumbleweed Monthly Update - May 2024](https://news.opensuse.org/2024/05/29/tw-monthly-update-may/)，作者：Douglas DeMaio

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