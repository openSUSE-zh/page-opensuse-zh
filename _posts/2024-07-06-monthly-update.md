---
author:  Poplar at twilight
date: 2024-07-06 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 六月
image: /assets/posts/2024-07/bug.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

欢迎阅读 [openSUSE] [Tumbleweed] 的每月更新博客（2024 年 6 月）。这个月社区忙于举办[柏林社区峰会]和 [openSUSE 大会]，同时也向用户推送了许多快照。开发人员、系统管理员和用户将收到旨在增强您的体验并确保高水平的安全性和性能的更新。

[柏林社区峰会]: https://events.opensuse.org/conferences/CSBerlin
[openSUSE 大会]: https://events.opensuse.org/conferences/oSC24

如果读者希望获得更多有关快照更新的信息，我们鼓励读者订阅 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- [Linux Kernel] 6.9.7：本次内核更新引入了跨各个子系统的几个重要修复和增强功能。主要更新如下：
    - 解决了在禁用 `CONFIG_SYSCTL` 时，netfilter 中未定义的引用；
    - 更正 [TCP] 快速打开处理
    - 解决 Realtek 设备的 [ALSA] 中的冲突问题；
    - 改进了[海思]加密驱动程序的文件系统回写操作、多线程路径处理和内存管理等方面，增强了稳定性；
    - 网络更新包括修复 [netpoll] 中的竞争条件、增强特定 SFP 模块以及改进 WiFi 驱动程序（例如 RTW89、Ath9k、Ath12k 和 MT76）；
    - 其他特定于平台的更新解决了 ACPI、ARM64 配置、HID 设备处理和蓝牙驱动程序修复中的问题。
- [PipeWire] 1.2.0 和 [WirePlumber] 0.5.4：
    - PipeWire 1.2.0 引入了异步处理、用于同步调度的 node.sync-group 以及改进的配置解析错误报告。它还添加了对缓冲区参数、具有 CPU 关联性的多个数据循环以及动态日志级别调整的强制元数据支持。主要修复包括 RTP-SAP 模块增强、ROC 0.3 支持以及改进的蓝牙 BAP 广播代码解析。
    - WirePlumber 0.5.4 完善了基于角色的链接策略（role-based linking policy），允许基于角色的接收器与标准音频操作一起使用，并使正则过滤器能够充当最佳目标。它解决了由于空配置文件而导致的启动崩溃，改进了蓝牙配置文件自动切换，并修复了 DSP 滤波器和自动切换脚本中的无限循环场景问题。这些更新共同增强了 Linux 环境中音频管理的灵活性、可靠性和整体性能。快照 [20240627] 也更新了 WirePlumber 和 PipeWire。
- [Mesa] 和 [Mesa-drivers] 24.1.2：这两个软件包都清理了规范文件（specfile），包括将 Rust crate 源重新定位到子项目文件夹中并更新了 `baselibs.conf`。由于将 Rust crates 作为系统依赖项会带来维护负担，因此现在这些 crates 将作为供应商依赖项（vendored dependencies）下载，详情请参阅 `README-suse-maintenance.md`。该更新增加了对构建 `libvulkan_nouveau` 的支持，包括必要的 Rust crates，例如 `paste-1.0.14`、`proc-macro2-1.0.70`、`quote-1.0.33`、`syn-2.0.39` 和 `unicode-ident-1.0.12`。然而，由于 `rust-cbindgen >= 0.25` 的依赖要求，目前无法在 Leap 上构建 `libvulkan_nouveau`。有关更多详细信息，请参阅 <https://docs.mesa3d.org/relnotes/24.1.2> 上的发行说明。
- [KDE Plasma] 6.1.1：
    - [Discover] 改进了 UI 元素和 [Packagekit] 支持，而 Dr Konqi 更正了 Sentry dbus 接口的使用；
    - Plasma Addons 解决了 Effects/cube 中的引用问题；
    - krdp 确保版本兼容性并解决了会话控制器错误；
    - Kscreenlocker 改进了欢迎功能
    - [KWin] 引入了针对着色器、平铺和输入面板的多个修复；
    - Libkscreen 和 libplasma 更新了协议版本并修复插件加载问题。 
    - Plasma Desktop 增强了任务图标大小、面板不透明度和跨屏幕文件拖动功能；
    - Plasma 音频音量控制删除了不必要的符号链接；
    - Plasma Systemmonitor 正确定位了加载覆盖；
    - Powerdevil 改进了电池保护 UI 并限制背光助手调用。
- [Python-setuptools] 70.0：这个新的主要版本中的主要功能包括：
    - 对 `pyproject.toml` 中被忽略的 `[tools.setuptools]` 条目发出警告；
    - 改进 `pkg_resources.EntryPoint.require` 的错误消息传递以及能更优雅地处理 `None` 位置分布；
    - 刷新了未固定的（unpinned）供应商依赖项，通过标准化文件名中的包名称和版本来支持 PEP 625，并确保 `.pth` 文件的编码一致性；
    - 删除了过时的 `Python < 3.8` 代码；
    - `pkg_resources` 现在使用 `stdlib importlib.machinery`；
    - 错误修复解决了安装命令中的竞争条件，改进了对 `package_dir` 嵌套命名空间的处理，并纠正了各种 `pkg_resources` 方法行为（method behaviors）。
    - 更新了可重复性的补丁。
- [Xen] 4.18.2_06：
    - 解决了当电源控制模式（Power Control Mode）设置为最低功率时系统间歇性挂起的问题；
    - 改进了各种情况下的 CPU 掩码处理和中断迁移；
    - 上游错误修复包括对调度程序资源数据管理的改进，以及使用 [GCC] 14 进行构建的修复。

[海思]: https://www.hisilicon.com/
[netpoll]: https://github.com/cloudwego/netpoll
[20240627]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NX4WPXDCZIOL4SIPB3XQ45BENOXZYMDY/

## 关键包更新

- [NetworkManager] 1.48.2：
    - 更新了对通过 MAC 地址匹配 OVS 系统接口的支持；
    - 修复了端口重新激活和用于双因素身份验证的 VPN 秘密（secrets）处理；
    - 在关闭时保存连接时间戳，以便重新启动后正确自动激活；
    - 1.48.0 版本的重要更改是放弃了自动工具构建（autotools building），添加了对更改 802.1X 身份验证的 [OpenSSL] 密码的支持，并在 `nmcli` 中可见的 `StateReason` 属性中设置非托管设备原因。
    - 使用 `mac-address-denylist` 替换了 `mac-address-blacklist` 属性；
    - 改进了 WiFi 6GHz 频段检测并优化了性能，以避免路由更新期间 CPU 使用率过高；
    - 之前的 1.46 版本添加了基于 SSID 的动态稳定 ID、随机 MAC 地址以及处理 IPv6、D-Bus 和云设置的多项增强功能。
- [ibus-table] 1.17.6：
    - 删除了 Python2 支持，使用 `pyupgrade` 将所有脚本转换为 [Python3]；
    - 它现在允许在键绑定中使用带有 Unicode 键符号的键，从而增强了定制性和灵活性；
    - `frames_per_buffer=chunk_size` 选项现在用于 `self._paudio.open()` 中，以改进音频处理。
    - 此次更新还包括 [Weblate] 的翻译更新，捷克语翻译达到 36.6%，日语翻译达到 45.3%，中文（简体）达到 92.0%。
- [btrfsprogs] 6.9：
    - 如果使用 `--force` 选项时无法确定安装状态，`mkfs` 现在会停止，并更正分区设备的最小大小计算。
    - `check` 命令删除了 `--clear-ino-cache` 选项，将其功能转移到 `rescue` 命令组，并添加了对不正确文件范围项 `ram_bytes` 值的检测和修复；
    - `qgroup` 命令现在会在搜索陈旧条目之前同步文件系统，处理未清理的子卷和 `squota` 启用的场景，并显示子卷的清理状态；
    - `receive` 命令修复了严格对齐主机的流解析；
    - 更新了 `tune change-csum` 和 `dump-tree` 命令处理 `dev-replace` 状态项；
    - `convert` 命令改进了预分配/未写入范围的范围迭代；
    - 构建过程现在可确保与 `e2fsprogs` 1.47.1 的兼容性并改进头文件依赖性跟踪；
    - 文档也已更新。
- GNU [Emacs] 29.4：此版本中进行了紧急错误修复。在此更新中，启用 Org 模式时不再执行任意 shell 命令，从而通过防止执行潜在的恶意命令来显着增强安全性。

## 错误修复

- Python-dnspython 2.6.1:
    - [CVE-2023-29483]：dnspython 0.35.2 之前的 Eventlet 允许远程“TuDoor”DNS 攻击干扰。
- [php8] 8.3.8:
    - [CVE-2012-1823] 涉及一个漏洞，攻击者可以将参数注入 PHP-CGI，从而导致潜在的安全问题。新漏洞 [CVE-2024-4577] 被发现可以绕过此原始修复，从而允许相同或相似类型的参数注入攻击。此更新确保不再可能出现这种绕过，从而加强了最初针对 CVE-2012-1823 采取的安全措施。
    - 相同地，通过修复 [CVE-2024-5585] 阻拦了对 [CVE-2024-1874] 的利用。
- kernel-firmware-nvidia-gspx-G06（英伟达显卡驱动）：
    - [CVE-2024-0090] 是一个用户可能导致越界写入的漏洞。
    - [CVE-2024-0091] 是一个漏洞，用户可能会导致不受信任的指针取消引用。成功利用此漏洞可能会导致拒绝服务。
    - [CVE-2024-0092] 是异常情况检查不当或处理不当可能导致拒绝服务。
- XZ 5.6.2：
    - [CVE-2024-3094] 通过一系列复杂的混淆，liblzma 构建过程从源代码中存在的伪装测试文件中提取预构建的目标文件，然后使用该文件修改 liblzma 代码中的特定功能。这会产生一个修改后的 liblzma 库，任何链接到该库的软件都可以使用该库，拦截并修改与该库的数据交互。更多详细信息请阅读快照 [20240605]。
- cJSON v1.7.17：
    - [CVE-2024-31755]：分段违规，可以通过第二个参数触发。

[CVE-2023-29483]: https://www.suse.com/security/cve/CVE-2023-29483.html
[CVE-2012-1823]: https://www.suse.com/security/cve/CVE-2012-1823.html
[CVE-2024-4577]: https://www.suse.com/security/cve/CVE-2024-4577.html
[CVE-2024-1874]: https://www.suse.com/security/cve/CVE-2024-1874.html
[CVE-2024-5585]: https://www.suse.com/security/cve/CVE-2024-5585.html
[CVE-2024-0090]: https://www.suse.com/security/cve/CVE-2024-0090.html
[CVE-2024-0091]: https://www.suse.com/security/cve/CVE-2024-0091.html
[CVE-2024-0092]: https://www.suse.com/security/cve/CVE-2024-0092.html
[20240605]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3UNI5PRCGMBHLATQTHC5WRXK3D5HDNGK/
[CVE-2024-3094]: https://www.suse.com/security/cve/CVE-2024-3094.html
[CVE-2024-31755]: https://www.suse.com/security/cve/CVE-2024-31755.html

## 结论

2024 年 6 月出现了一系列重大更新、安全修复和增强功能。 Linux Kernel 6.9.7 更新提高了稳定性和性能。 Mesa 和 Mesa-drivers 24.1.2 引入了 Rust crate 依赖项并改进了 Vulkan 支持。KDE Plasma 6.1.1 带来了 UI 改进，并且为滚动发布用户提供了主要版本的 Python-setuptools 70.0。一些关键的安全漏洞已得到解决，并继续修复与 [XZ 后门]相关的问题，因此 Tumbleweed 对所有用户来说仍然是安全、高效和功能丰富的。

[XZ 后门]: https://news.opensuse.org/2024/04/12/learn-from-the-xz-backdoor/

对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

## 为 openSUSE Tumbleweed 做出贡献

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - June 2024](https://news.opensuse.org/2024/07/04/tw-monthly-update-june/)，作者：Douglas DeMaio

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