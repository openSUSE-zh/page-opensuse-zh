---
author: Poplar at twilight
date: 2025-01-30 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 1 月
image: /assets/posts/misc/new-tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

当我们迈入 2025 年时，[Tumbleweed] 仍然是可靠的滚动版本的典范。本月发布了多个快照和一系列更新！本月有两个备受期待的主要版本更新快照；[GIMP] 的候选发布版让用户对 3.0 版本有了一个很好的了解，而 [libvirt] 11.0.0 则提高了虚拟化的性能、稳定性和灵活性。[KDE Gear 24.12.1] 提高了应用程序的可用性，而 [KDE Plasma 6.2.5] 则带来了更多稳定性。

[KDE Gear 24.12.1]: https://kde.org/announcements/gear/24.12.1/
[KDE Plasma 6.2.5]: https://kde.org/announcements/plasma/6/6.2.5/

与往常一样，如果出现任何问题，请记住使用 [snapper] 进行回滚。

祝您在风滚草上玩得愉快！🦎

有关当月更改日志的更多详细信息，请访问 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- [GIMP 3.0.0~RC2]：
    - 这是 3.0 版的一次重大飞跃，其中包含大量更新和修复。
    - 通过改进对字体的处理（如用 Google Noto Sans 取代 Bitstream Vera），简化了构建过程，并确保在缺少字体时也能保持稳定。
    - Python 运行时依赖关系和 `libbacktrace` 的增强调试支持确保了更顺畅地编译软件和更好地解决问题。
    - 像 Lua 插件这样的实验性功能现在可以选择使用；从 Fedora 导入的补丁改进了系统监控配置文件默认设置、外部帮助浏览器支持和隐私设置。
    - 这些更新使 GIMP 的架构更加现代化，为最终的 3.0 版本做好了准备。
- [KDE Gear 24.12.1]：
    - 此版本中值得注意的更新是对 [Dolphin] 的更新，它改进了在 [X11] 上的行为，修复了重命名时的缩略图更新，并确保了搜索框的初始化修复。
    - [Itinerary] 增强了行程组的处理；还改进了天气预报，并优化了防崩溃功能。
    - [Kdenlive] 解决了时间线问题，修复了崩溃，改进了布局处理并恢复了特效预设。
    - [KMail] 改进了搜索功能。
    - [KPublicTransport] 增强了电台名称识别功能。
- [KDE Plasma 6.2.5]：
    - 应用程序商店 [Discover] 修复了更新说明文字重叠的问题。
    - [kpipewire] 修复了流媒体更新失败的问题。
    - plasma 还通过添加虚拟剪贴板来防止崩溃。
    - [KWin] 解决了一些截屏问题。
    - [PowerDevil] 解决了 `unloadAllActiveActions` 中的崩溃问题。
    - [Plasma Networkmanager] 恢复修复了断开连接后连接速度选项卡仍然可见的问题。
- [Rsync 3.4.1][Rsync]：
    - 此更新带来了重要的错误修复和安全性增强。
    - 主要更新包括改进了 `-H` 标志的处理，解决了重命名日志记录中无用的问题，并移除了捆绑（bundled）`popt` 中对 `alloca()` 的依赖。
    - 安全修复解决了多个漏洞，如 CVE-2024-1274（缓解了处理符号链接时的竞争条件），以及 CVE-2024-12084 和 CVE-2024-12088（解决了堆缓冲区溢出、信息泄露和目录遍历风险）。
    - 更新还引入了第 32 版协议，并改进了开发人员工具，以改进权限处理。
- [libvirt] 11.0.0：
    - 新的主要版本为 Linux 主机桥接器上的网络接口添加了 VLAN 标记和中继支持，并使域能够使用高级 `tlbflush` Hyper-V 功能。
    - 新版本现在支持域 XML 和 virtiofs 只读模式中设备的用户自定义别名。
    - 在 mdev 和 SRIOV VF 设备之间引入了增强的 vGPU 迁移功能。
    - 主要修复了瞬时域 TPM 配置文件崩溃、使用快照删除磁盘映像和复制后迁移恢复错误等问题，并改进了域 XML 格式化和 CPU 模型支持。
- [libcdio] 2.2.0：
    - 该程序库现在使用 GNU/Linux 的新 `ioctl`（内核 5.16 及以上版本），并结合了 GitHub CI 检查以改进开发工作流程。
    - 此外，更新还确保了与 widestring API 接口的兼容性，并提供了更好的 pkg-config 检测功能。
- [Amarok] 3.2.1 和 3.2.2：
    - Amarok 引入了 Qt6 和 KF6 兼容性，为 gpodder、last.fm 和 Wikipedia 上下文 applet 提供了支持。
    - 现在可以通过空标签过滤收藏，默认情况下会显示当前曲目的上下文视图小程序。
    - 主要修复了文件传输到 MTP 设备、Ampache 登录和收藏过滤时的崩溃问题。
    - 其他改进还包括减少了 MTP 设备查询泛洪，改进了上下文视图中的字体大小限制，以及增强了编译器和 Qt6 版本之间的兼容性。
    - Amarok 现在依赖于 KDE Frameworks 5.108，标志着向现代化构建和更好的稳定性迈出了一步。
- [libxml2] 2.13.5：
    - 新特性包括API的增强，从而提供更可靠的 malloc 故障报告，以及上下文相关的错误处理程序，例如 `xmlCtxtSetErrorHandler`。
    - 更新引入了 `XML_PARSE_NO_XXE` 解析器选项，通过禁用外部实体加载增强了安全性。
    - 主要的错误修复解决了 `xmlIO`、`xmlreader` 和参数实体处理中的地址回归。
    - 此外，还进行了重大优化，以确保更好地兼容现代系统、改进错误处理并支持新配置。诸如 HTTP POST 支持和传统 FTP 功能等过时的功能正在逐步淘汰，这反映了向精简和安全 XML 处理的转变。

## 关键软件包更新

- [Kernel] 6.12.8、6.12.10 和 6.13.0：
    - Tumbleweed 是首批更新至 6.13 内核的发行版之一。
    - 其显著变化包括针对 Intel Raptor Lake-P 上的 PIO 日志大小调整的 PCI/DPC 变通方法（bsc#1234623）。
    - 此更新还删除了一个用于 Nouveau 背光控制的主线补丁，并更新了配置。
    - 在之前的内核更新中，增强了 USB 处理能力，更好地支持各种 arm 平台，并修复了 IIO 设备的多个错误。
    - 主要的更改解决了漏洞问题，提高了稳定性，并完善了各种子系统的硬件兼容性。
    - 6.12.8 版增强了 ALSA 和蓝牙子系统，以解决内存泄漏和无效参数处理等问题。Btrfs 收到了针对竞争条件的修复，电源驱动程序也得到了改进。
- [btrfs-progs] 6.12：
    - 此更新包含对可访问子卷的递归子卷删除功能，以及 mkfs 中的 `--subvol` 选项，用于创建具有特定属性（只读、读写或默认）的子卷。
    - 其他值得注意的改进还包括 `--rootdir` 选项中的硬链接检测、`receive` 中经过改进的冗余度，以及 `check` 中对压缩扩展的更准确处理。
    - 此版本还解决了几个错误，例如错误的校验和报告（假阳性）以及在 `rescue clear-ino-cache` 中不正确的子卷迭代。
- [Systemd] 257.2：
    - 此软件包中的主要更新包括对 `user@.service` 的改进。
    - 新版本集成了各种补丁，例如针对 TPM2 工具和 `initrd_prepare` 行为的修复，这些补丁都已向上游合并。虽然由于上游的更改，测试套件现在需要克隆 systemd 存储库；但正在努力调整子包以适应这一变化。
- [Mesa] 24.3.3：
    - 此版本中的修复包括：解决《传送门2》和《半条命2》中的渲染问题；解决《Artifact Classic》中的崩溃问题；以及修正了导致 RS480M GPU 上的 Wayland 崩溃的回归错误。
    - 其他更新修复了《X-Plane 12》中的螺旋桨盘渲染问题。
    - 改进了 R6700XT 上 H264/H265 VAAPI 编码，并正确处理了 QP 值；以及解决了 ARC B580 GPU 上《神话时代：重述版》中缺失文本的问题。
- [HarfBuzz] 10.2.0:
    - 此软件包包含了字体处理方面的改进。
    - Unicode 变体选择器现在会在 “cmap” 表子集化期间被考虑。
    - 在 `hb_cairo_glyphs_from_buffer()` 中更好地处理了格式错误的 UTF-8 字符串。
    - 渲染和解析方面进行了重大修复，包括校正了 “COLR”v1 字形的缩放，以及在 `hb-subset` 工具中实现了与区域设置无关的双精度数解析。
    - 新的 API 支持高级字体表序列化、重新打包和字体变体设置转换。
- [Coreutils] 9.6：
    - 此版本解决了多个错误，例如修复了 `cp`、`mv`、`ls` 和 `tail` 中的问题，提高了可靠性并符合 POSIX 标准。
    - 增强功能包括新特性，如 `cksum` 中增加了 CRC32b 支持，`printf` 中增加了索引参数，以及 `test` 中启用了 POSIX:2024 字符串比较。
    - 性能改进涉及 `wc`、`cksum` 和 `sort` 等关键实用程序，以确保在现代系统上更快速地运行。
- [PHP 8.3.16][php8]：
    - 此软件包提供了广泛的错误修复和稳定性改进，涵盖了核心功能和扩展。
    - 增强功能包括解决 `DatePeriod`、`SimpleXML` 和 `FFI` 中的问题，修复 `LibXML` 和 `Sockets` 等组件中的内存泄漏，以及提高与 RFC 6890 等 IP 过滤标准的兼容性。
    - 主要修复涵盖了诸如 `DOM` 和 `Iconv` 中的“使用后释放 (UAF)”漏洞、`Gettext` 和 `Phar` 中的段错误，以及 `Streams` 中的溢出问题。
    - 开发人员将受益于改进的错误处理、兼容性更新以及针对 `proc_open()` 等关键功能的增强的安全性措施。
- [Flatpak] 1.16.0：
    - 最新版本增加了新的环境变量，例如 `FLATPAK_TTY_PROGRESS`、`FLATPAK_DATA_DIR` 和 `FLATPAK_DOWNLOAD_TMPDIR`，从而为配置运行时行为提供了更大的灵活性，例如进度指示器和备用目录路径。
    - 值得注意的错误修复包括改进了对悬空符号链接的处理、修正了 `libflatpak` 中的内省注释，以及解决了 Wayland 套接字处理中的回归问题。
    - 其他改进确保了更平稳的运行和兼容性，包括修复了终端进度指示器和安装缺失的测试数据。

[GIMP 3.0.0~RC2]: https://www.gimp.org/news/2024/12/27/gimp-3-0-RC2-released/
[libcdio]: https://www.gnu.org/software/libcdio/

## 错误修复和安全更新

本月解决了一些关键的安全漏洞：

- [Rsync] 3.4.1:
    - [CVE-2024-12747]：修复了处理符号链接的种族条件。
    - [CVE-2024-12084]：校验和解析中的已解决和堆缓冲区溢出。
    - [CVE-2024-12085]：修复了通过非初始化的堆栈内容删除信息的信息，击败了ASLR。
    - [CVE-2024-12086]：任意客户端文件的寻址服务器泄漏。
    - [CVE-2024-12087]：解决了一个问题，允许服务器使用符号链接在目标目录之外编写文件。
    - [CVE-2024-12088]：修复了 `--safe-links` 功能的旁路。
- [git] 2.48.1：
    - [CVE-2024-50349]：修复了一个问题，即精心构造的 URL 可能注入 ANSI 转义序列，从而可能误导用户将凭据发送到恶意主机。
    - [CVE-2024-52006]：解决了凭据助手（credential helpers）中行尾处理不正确的问题，防止了凭据泄露。
- [HPLIP]：
    - [CVE-2020-6923]：修复了 HPLIP 3.20.8 及更早版本中的一个内存缓冲区溢出漏洞，该漏洞可能允许任意代码执行或拒绝服务。
- [libxml2] 2.13.5:
    - [CVE-2024-40896]：修复了在处理具有伪造叠加图像偏移的 HEIF 文件时发生的越界读取和写入漏洞。
- [Raptor]：
    - [CVE-2024-57823]：已添加补丁以修复整数下溢，这可能导致潜在的漏洞。
- [Mozilla Firefox] 134.0：
    - [CVE-2025-0244]：修复了 Firefox 安卓版上使用无效协议方案造成的地址栏欺骗漏洞。
    - [CVE-2025-0245]：修复了 Firefox Focus 安卓版中的锁屏设置绕过漏洞。
    - [CVE-2025-0246]：修复了 Firefox 安卓版上使用无效协议方案造成的地址栏欺骗漏洞。（与 CVE-2025-0244 描述重复，可能为同一问题）
    - [CVE-2025-0237]：修复了 WebChannel API 易受混淆代理攻击的漏洞。
    - [CVE-2025-0238]：修复了在文本换行时发生的“释放后使用”漏洞。
    - [CVE-2025-0239]：修复了重定向时 Alt-Svc ALPN 验证失败的漏洞。
    - [CVE-2025-0240]：修复了解析 JavaScript JSON 模块时发生的组件不匹配漏洞。
    - [CVE-2025-0241]：修复了使用 JavaScript 文本分割时发生的内存损坏漏洞。
    - [CVE-2025-0242]：修复了多个 Firefox 和 Thunderbird 版本中的内存安全漏洞。
    - [CVE-2025-0243]：修复了影响 Firefox、Thunderbird 和 ESR 版本的内存安全漏洞。
    - [CVE-2025-0247]：修复了 Firefox 134 和 Thunderbird 134 中的内存安全漏洞。
- [openssl-3]：
    - [CVE-2024-13176]：ECDSA 签名计算中的一个定时侧信道漏洞可能允许攻击者恢复私钥。

[CVE-2024-12747]: https://www.suse.com/security/cve/CVE-2024-12747.html
[CVE-2024-12084]: https://www.suse.com/security/cve/CVE-2024-12084.html
[CVE-2024-12085]: https://www.suse.com/security/cve/CVE-2024-12085.html
[CVE-2024-12086]: https://www.suse.com/security/cve/CVE-2024-12086.html
[CVE-2024-12087]: https://www.suse.com/security/cve/CVE-2024-12087.html
[CVE-2024-12088]: https://www.suse.com/security/cve/CVE-2024-12088.html
[CVE-2024-50349]: https://www.suse.com/security/cve/CVE-2024-50349.html
[CVE-2024-52006]: https://www.suse.com/security/cve/CVE-2024-52006.html
[CVE-2020-6923]: https://www.suse.com/security/cve/CVE-2020-6923.html
[HPLIP]: https://developers.hp.com/hp-linux-imaging-and-printing
[Raptor]: https://librdf.org/raptor/
[CVE-2024-40896]: https://www.suse.com/security/cve/CVE-2024-40896.html
[CVE-2024-57823]: https://www.suse.com/security/cve/CVE-2024-57823.html
[CVE-2025-0244]: https://www.suse.com/security/cve/CVE-2025-0244.html
[CVE-2025-0245]: https://www.suse.com/security/cve/CVE-2025-0245.html
[CVE-2025-0246]: https://www.suse.com/security/cve/CVE-2025-0246.html
[CVE-2025-0237]: https://www.suse.com/security/cve/CVE-2025-0237.html
[CVE-2025-0238]: https://www.suse.com/security/cve/CVE-2025-0238.html
[CVE-2025-0239]: https://www.suse.com/security/cve/CVE-2025-0239.html
[CVE-2025-0240]: https://www.suse.com/security/cve/CVE-2025-0240.html
[CVE-2025-0241]: https://www.suse.com/security/cve/CVE-2025-0241.html
[CVE-2025-0242]: https://www.suse.com/security/cve/CVE-2025-0242.html
[CVE-2025-0243]: https://www.suse.com/security/cve/CVE-2025-0243.html
[CVE-2025-0247]: https://www.suse.com/security/cve/CVE-2025-0247.html
[CVE-2024-13176]: https://www.suse.com/security/cve/CVE-2024-13176.html

## 结论

KDE 用户将赞赏最新 KDE Gear 和 Plasma 版本带来的优化体验，其改进了可用性并修复了错误。在底层，Tumbleweed 继续收到关键更新，包括 Rsync 的安全增强功能和使用 libxml2 改进的 XML 处理。这些更新以及其他众多更新继续使 Tumbleweed 成为一个安全、稳定和有用的开源平台。

## Slowroll 更新

请注意，这些更新也适用于 [Slowroll]，并且通常会在 Tumbleweed 快照发布后平均 5 到 10 天内到达。这种按月发布的方式已经持续多个月，确保了用户的稳定性和及时的增强功能。

## 为 openSUSE Tumbleweed 做出贡献

订阅 openSUSE Factory 邮件列表，随时了解最新快照。对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - January 2025](hhttps://news.opensuse.org/2025/01/29/tw-monthly-update-january/)，作者：Douglas DeMaio

[Coreutils]: https://github.com/coreutils/coreutils
[btrfs-progs]: https://github.com/kdave/btrfs-progs/releases/tag/v6.12
[libxml2]: https://gitlab.gnome.org/GNOME/libxml2/-/tags/v2.13.5
[Amarok]: https://amarok.kde.org/
[Rsync]: https://rsync.samba.org/
[KPublicTransport]: https://api.kde.org/kdepim/kpublictransport/html/index.html
[Plasma Networkmanager]: https://invent.kde.org/plasma/plasma-nm
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