---
author:  Poplar at twilight
date: 2024-10-01 07:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 九月
image: /assets/posts/misc/postgresql.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

欢迎阅读 [openSUSE] [Tumbleweed] 的每月更新博客（2024 年 9 月）。Tumbleweed 本月发布了许多重要的更新和错误修复。[PostgreSQL] 和文本整形引擎 [harfbuzz] 分别更新到新的大版本（17.0 与 10.0）。风滚草还对 [systemd]、[git]、[bash] 和 [qemu] 等软件包进行了更新。同时推送至用户的还有各种软件的 [CVE] 补丁、[GNOME] 与 [KDE] 桌面环境组件的更新包。与往常一样，如果出现任何问题，请记住使用 [snapper] 进行回滚。

祝你玩得愉快！🤠

如果读者希望获得更多有关快照更新的信息，我们鼓励读者订阅 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- [Linux Kernel] 6.11.0：
    - 此次更新还原了 [PCI ACS] 可配置性扩展，以解决 [bsc#1229019] 问题；
    - 修复了块子系统（block subsystem），解决了在 `elv_iosched_local_module` 中如何处理调度程序的问题；
    - 更正了 [AMD] GPU 显示驱动程序，以解决之前与 [bsc#1228093] 相关的还原中出现的错误；
    - 此次更新还包括 [ALSA] 补丁，以增强电源管理黑名单选项；
    - 这些改进预计将为各种硬件配置提供更高的稳定性和性能。
- [postgresql17][postgresql]：新的主要版本提供了一些关键改进，如：
    - 改进了 vacuum 内存管理系统，通过将内存使用量减少多达 20 倍来提高效率，同时还优化了对高并发工作负载的处理；
    - 17.0 版本通过更快处理 B 树索引和并行 BRIN 索引构增强了查询执行；
    - 新增的 SQL/JSON `JSON_TABLE` 命令和扩展的 MERGE 功能将使开发人员受益，使用 `COPY` 命令导出数据的速度提高了 2 倍；
    - 逻辑复制（Logical replication）现在无需删除复制槽（replication slots），从而简化了主要版本升级，提高了高可用性设置的易用性；
    - postgresql 通过新的 TLS 选项、增量备份和详细的监控工具，进一步增强了数据库的安全性和运行管理。
- [harfbuzz] 10.0.1：新版本对文本整形引擎进行了重要修复，其中包括：
    - 支持 [Unicode] 16.0.0；
    - 新增一个 API，允许客户端在字体不支持 Unicode 变体选择器（Unicode Variation Selector）时自定义字形，以及从 `hb_face_t` 获取表标签（table tag）的回调；
    - 更新还解决了成对定位查找子表应用程序（pair positioning lookup subtable application）的兼容性问题，并确保在没有字形的情况下子集失败，以防止出现静默错误（silent error）。
- [GNOME] 46.5：
    - [gnome-shell] 现在解决了：
        - 智能卡登录问题；
        - 修复了快速设置菜单动画中断时的故障；
        - 解决了受限制用户的新 Wi-Fi 连接问题；
        - 确保所需的动画保持启用状态；
        - 修复登录屏幕上待处理的 PAM 消息的显示并修复内存泄漏。
    - 当主窗口关闭时，[gnome-software] 的更新以及翻译更新会减少用电量。
- [KDE Plasma 6.1.5]：
    - [Discover] 修正了 snapType 映射；
    - [Flatpak] 现在可以正确报告扩展而不会出现错误；
    - [KWin] 解决了数个崩溃场景，例如空取消引用和已删除设备的输入事件处理；
    - [Plasma Desktop] 更新了几个修复，其中包括对 Kickoff 中的键盘导航、RTL 模式下的任务列表对齐等问题，并且它可以正确处理背景图标和测试窗口；
    - [Plasma Workspace] 增强了触摸屏交互、系统托盘工具提示和剪贴板功能；
    - 其他修复包括热插拔和 svg 渲染中的针对性崩溃，同时 [sddm-kcm] 改进了状态管理。
- [Frameworks 6.6.0]：
    - [Attica] 为 [Alpine/musl] 添加了 [CI] 作业；
    - [Baloo] 为 `baloo_file` 设置了崩溃处理；
    - [Breeze] 添加了新图标；
    - [KCoreAddons] 改进了 [dbus] 错误处理和许可；
    - [KDeclarative] 调整渲染以获得更好的 [DPI] 定位；
    - [KIO] 解决了恢复已删除条目（trash entries）的问题并增强了服务菜单处理；
    - [KTextEditor] 进行了性能优化，并对排序和独特功能进行了额外的 C++ 移植；
    - [Kirigami] 继续改进图标处理和工具栏；
    - [KNewStuff] 和 [KWallet] 则专注于使共享操作更加可靠并增强崩溃处理。
- [KDE Gear 24.08.1]：
    - [Akademy 2024 视频]已发布，同时上个月的会议付出了很多努力；
    - [Akonadi] 解决了与查询缓存驱逐相关（query cache eviction）的崩溃并修复了配置文件处理；
    - [Dolphin] 通过修复按钮功能和文件列表大小调整，提高了可用性；
    - [Elisa] 增强了其“正在播放”视图和工具栏布局；
    - [Itinerary] 和 [Kalarm] 均获得更新，以获得更好的暗模式处理和音频警报功能；
    - [Kdenlive] 解决了多个时间轴和渲染问题，优化了关键帧处理并修复了与效果和过渡相关的多个错误；
    - [Kate] 在其格式化程序中添加了对 [Odin] 语言的支持；
    - [Okular] 现在为表单设置了工具提示。

[Odin]: https://odin-lang.org/
[Akademy 2024 视频]: https://tube.kockatoo.org/w/p/rHZEAD3pY3hNMTdZMLj4JJ
[KDE Gear 24.08.1]: https://kde.org/announcements/gear/24.08.1/
[Alpine/musl]: https://wiki.alpinelinux.org/wiki/Musl
[Frameworks 6.6.0]: https://kde.org/announcements/frameworks/6/6.6.0/
[KDE Plasma 6.1.5]: https://kde.org/announcements/plasma/6/6.1.5/
[bsc#1229019]: https://bugzilla.opensuse.org/show_bug.cgi?id=1229019
[bsc#1228093]: https://bugzilla.opensuse.org/show_bug.cgi?id=1228093
[PCI ACS]: https://sycurio.com/knowledge/glossaries/access-control-service-acs

## 关键包更新

- [git] 2.46.1：
    - 对 `git checkout --ours` 进行了说明，告知用户需要指定路径，避免混淆；
    - 修正了使用 `diff.suppressBlankEmpty` 的用户 `git add -p` 失败的问题；
    - 此外，`git notes add -m '' --allow-empty` 不再不当调用编辑器，用于跟踪的不必要的重新编码操作也已删除。
- [qemu] 9.1.0：
    - 该更新引入了新的迁移功能，如通过[英特尔内存分析加速器]（IAA）或[用户空间加速器开发工具包]（UADK）提供压缩卸载（offload）支持，以及改进的复制后故障恢复；
    - [RISC-V] 架构支持更多的扩展；
    - [x86] 架构为 [AMD] [SEV-SNP guest] 增加了 [KVM] 支持，并为 [Ice Llake] 和 [Sapphire Rapids] 等较新的英特尔 CPU 型号增加了仿真功能。
- [systemd] 256.6：
    - 此版本不再尝试重新启动 [udev] 套接字单元；
    - 解决了问题 [bsc#1228809]，其中同时安全地重新启动套接字激活的服务及其套接字单元是有问题的。
- [pipewire] 1.2.4：
    - 解决了清理全局变量期间的崩溃问题；
    - 增强了 `RequestProcess` 调度机制；
    - Simple Plugin API 框架现在使用 `systemd-logind` 检测新设备；
    - 脉冲编码调制设备处理也得到了改进。
- [GStreamer] 1.24.8：
    - 改进了 `decodebin3` 和 `encodebin` 中的处理，分别实现更好的媒体解码和智能渲染；
    - 增强了视频大小更改时正确调整视口大小的增强功能，并增强了音频流增强功能以​​更好地与 [Firefox] 兼容；
    - 针对 [Wayland] 进行了一些稳定性修复，包括崩溃预防和 [ABI] 接口修正。
- [Mesa] 24.1.7：
    - 此版本继续支持 [OpenGL] 4.6 和 [Vulkan] 1.3，但报告的版本取决于所使用的特定驱动程序；
    - 主要错误修复包括解决智能卡登录问题、生成枚举时的竞争条件问题，以及使用某些 GPU 的《黑神话：悟空》和《DCS World》等游戏中的工件问题。
- [GTK4] 4.16.1：
    - GTK Scene Graph Kit 层对 Vulkan 操作进行了速度优化，通过跳过不必要的 GL 和 Vulkan 初始化来减少启动时间，并修复了与某些 Vulkan 驱动程序相关的崩溃；
    - [GIMP] 绘图套件中的内存格式转换现在更快；
    - 构建工具也得到了改进，以实现更好的盒子转换（box conversion）。
- [bash] 5.2.37：
    - 此更新包含关键补丁，可解决自动完成过程中引用文本的错误处理以及 `readline` 中的多字节字符处理等问题；
    - 此更新解决了系统与 `select` 和 `pselect` 可用性的兼容性问题；
    - 修复了别名扩展期间复合分配中的解析问题；
    - 更正了 autoconf 测试中影响使用 [GCC] 14 编译时 `strtold` 可用性的拼写错误。
- [vim] 9.1.0718：
    - 文本编辑器中一个值得注意的修正是解决了个人 Vim 运行时目录识别的问题；
    - 此更新还解决了 `parse_command_modifiers()` 中不必要的 `NULL` 检查，并更正了先前版本中引入的颜色名称解析错误；
    - 其他改进包括对各种文件类型（例如 HCL、Terraform 和 tmux）的语法突出显示的更新；
    - 进行了性能改进，包括更有效地插入计数和解决光标位置崩溃问题。

[bsc#1228809]: https://bugzilla.opensuse.org/show_bug.cgi?id=1228809
[SEV-SNP guest]: https://www.amd.com/content/dam/amd/en/documents/developer/lss-snp-attestation.pdf
[Sapphire Rapids]: https://en.wikipedia.org/wiki/Sapphire_Rapids
[Ice Llake]: https://en.wikipedia.org/wiki/Ice_Lake_(microprocessor)
[英特尔内存分析加速器]: https://www.intel.com/content/www/us/en/products/docs/accelerator-engines/in-memory-analytics-accelerator.html
[用户空间加速器开发工具包]: https://github.com/Linaro/uadk

## 错误修复

- [curl] 8.10.0：
    - [CVE-2024-8096] 可能使用在线证书状态协议装订（Online Certificate Status Protocol stapling）错误地验证了证书，忽略了某些错误，例如 “unauthorized”（未经授权）。
- [OpenSSL]：
    - [CVE-2024-41996] 已修复，该漏洞可能允许远程攻击者通过 [Diffie-Hellman] 中的公钥顺序验证来触发代价高昂的服务器端 DHE 计算。
- [postgresql17][postgresql]：
    - [CVE-2024-7348] 修复了一个竞争条件，该条件可能允许攻击者以运行 `pg_dump` 用户身份执行任意 SQL。
- [python311]：这个包修复了一些 CVE。其中有：
    - [CVE-2024-4030] 进行了修复，以确保应用 Unix“700” 权限来保护目录。
- [tiff] 4.7.0：
    - [CVE-2023-52356] 存在分段错误，允许远程攻击者触发堆缓冲区溢出，从而可能导致拒绝服务；
    - [CVE-2024-7006] 具有空指针取消引用，可能会触发应用程序崩溃并导致拒绝服务。
- [LibreOffice] 24.8.1.2：
    - [CVE-2024-5261] 已修复，该问题禁用 TLS 证书验证，从而导致在第三方组件中的文档处理期间出现不正确的证书验证。
- [Mozilla Firefox] 130.0.1：此版本修复了多个 CVE。
    - 最关键的修复之一涉及 [CVE-2024-8385]，WASM 类型混淆问题可能会导致可利用的漏洞；
    - 另一个重要修复是针对 [CVE-2024-8381]，它在 “with” 块中查找属性名称时可能会触发类型混淆漏洞；
    - [CVE-2024-8388] 修复了 Android 设备上可能隐藏全屏通知的问题，可能导致 UI 欺骗攻击；
    - 火狐还修复了两个内存安全错误 [CVE-2024-8387] 和 [CVE-2024-8389]。
- [apr] 1.7.5：
    - [CVE-2023-49582] 具有共享内存权限，可能会将敏感数据暴露给本地用户。

[apr]: https://apr.apache.org/download.cgi
[CVE-2023-49582]: https://www.suse.com/security/cve/CVE-2023-49582.html
[CVE-2024-8385]: https://www.mozilla.org/en-US/security/advisories/mfsa2024-39/
[CVE-2024-8381]: https://www.mozilla.org/en-US/security/advisories/mfsa2024-39/
[CVE-2024-8388]: https://www.mozilla.org/en-US/security/advisories/mfsa2024-39/
[CVE-2024-8387]: https://www.mozilla.org/en-US/security/advisories/mfsa2024-39/
[CVE-2024-8389]: https://www.mozilla.org/en-US/security/advisories/mfsa2024-39/
[CVE-2024-5261]: https://www.suse.com/security/cve/CVE-2024-5261.html
[CVE-2023-52356]: https://www.suse.com/security/cve/CVE-2023-52356.html
[CVE-2024-7006]: https://www.suse.com/security/cve/CVE-2024-7006.html
[CVE-2024-4030]: https://www.suse.com/security/cve/CVE-2024-4030.html
[CVE-2024-7348]: https://www.suse.com/security/cve/CVE-2024-7348.html
[CVE-2024-41996]: https://www.suse.com/security/cve/CVE-2024-41996.html
[Diffie-Hellman]: https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange
[CVE-2024-8096]: https://www.suse.com/security/cve/CVE-2024-8096.html

## 结论

Tumbleweed 在 2024 年 9 月继续为用户带来了重要更新。对 PostgreSQL、libtiff 和 LibreOffice 等软件包进行了安全修复，以确保稳定性和安全性。 对 systemd、git 和 qemu 等工具进行了重大改进，提高了性能和兼容性。值得注意的是，PostgreSQL 17 和 Harfbuzz 10 的更新也带来了重大改进，为更强大、更完善的滚动发布环境做出了贡献。

对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

## 为 openSUSE Tumbleweed 做出贡献

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - September 2024](https://news.opensuse.org/2024/09/30/tw-monthly-update-september/)，作者：Douglas DeMaio

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