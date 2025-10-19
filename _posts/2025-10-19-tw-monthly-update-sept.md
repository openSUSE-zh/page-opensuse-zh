---
author: Fangzhou Liu
date: 2025-10-19 09:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 9 月
image: /assets/posts/2025-09/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---
九月，[openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) 的软件包更新进入稳定节奏，快照几乎每日发布。这些更新为滚动发布版用户带来了新功能、性能改进以及重要的安全修复。

本月快照中更新的软件包包括 [GnuPG](https://gnupg.org/) 2.5.12、文件归档工具 [7-Zip](https://www.7-zip.org/) 25.01、文本编辑器 [Vim](https://www.vim.org/) 9.1.1706 以及 [内核源码](https://www.kernel.org/) 6.16.5 等。

随着 [GNOME 49](https://www.gnome.org/news/2025/09/gnome-49-released/) 和 [Plasma 6.4.5](https://kde.org/announcements/plasma/6/6.4.5/) 的推出，桌面体验得到显著提升。[KDE Gear 25.08.1](https://kde.org/announcements/gear/25.08.1/) 为核心应用程序带来了全面修复。本月更新的其他软件包还有 [QEMU 10.1.0](https://www.qemu.org/)、[libvirt 11.6.0](https://libvirt.org/)、[tuned 2.26.0](https://github.com/redhat-performance/tuned)、[GStreamer 1.26.6](https://gstreamer.freedesktop.org/)、[Mesa 25.2.2](https://www.mesa3d.org/) 等。

与往常一样，若出现任何问题，请务必使用 [snapper](https://github.com/openSUSE/snapper) 进行回滚操作。

如需了解本月更新日志的更多详情，请访问 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)。

## 新功能和增强功能

**[GNOME 49](https://www.gnome.org/news/2025/09/gnome-49-released/)**：Tumbleweed 中更新了多个 GNOME 49 软件包。部分变更包括：用 [Showtime](https://apps.gnome.org/app/org.gnome.Totem/) 取代 Totem 成为新的默认视频播放器，用 [Papers](https://apps.gnome.org/app/org.gnome.Evince/) 取代 Evince，以实现现代化、功能丰富的文档查看体验。[日历](https://apps.gnome.org/app/org.gnome.Calendar/) 应用现在完全支持键盘操作，且允许用户导出日程。[网页](https://apps.gnome.org/app/org.gnome.Epiphany/) 应用增强了广告拦截功能、支持 OpenSearch 集成，并新增网站专属菜单。远程桌面现在支持多点触控和虚拟显示器。全新的 HDR 壁纸提升了视觉保真度，而锁屏媒体控制、快捷设置中的“免打扰”模式以及重启/关机选项则提高了易用性。两款新应用加入 GNOME Circle：麻将游戏（Mahjongg）和词典应用 Wordbook，后者由 WordNet 提供数据支持。

**[KDE Gear 25.08.1](https://kde.org/announcements/gear/25.08.1/)**：[Dolphin](https://apps.kde.org/dolphin/) 现在滚动速度更快，切换选择模式或创建文件夹时不会崩溃，且仅在清空回收站成功时播放提示音。[KMail](https://apps.kde.org/kmail2/)、[Akregator](https://apps.kde.org/akregator/)、KAddressBook 通讯录、KOrganizer 及其他 PIM 工具，在启动时不再显示过时的“新增功能”界面。[Ark](https://apps.kde.org/ark/) 和 [KTorrent](https://apps.kde.org/ktorrent/) 已修复问题，分别避免了不必要的通知和过度的文件写入。文本编辑器 [Kate](https://kate-editor.org/) 修复了多个崩溃问题（尤其在会话处理和外部工具集成方面），且在 [Flatpak](https://flatpak.org/) 环境中运行更流畅。[Kdenlive](https://kdenlive.org/en/) 稳定性显著提升，包括修复删除片段、应用特效或打开项目时的崩溃问题。[Itinerary](https://apps.kde.org/itinerary/) 优化了航班和预订信息的处理；[Konqueror](https://apps.kde.org/de/konqueror/) 在 [Wayland](https://wayland.freedesktop.org/) 环境中运行更流畅，侧边栏菜单显示正常；[Okular](https://okular.kde.org/) 现在签署 PDF 时会使用正确的默认文件名。[Neochat](https://apps.kde.org/neochat/)、[Tokodon](https://apps.kde.org/tokodon/) 和 KRDc 远程桌面工具等其他应用，也分别修复了链接处理、图片复制和连接 URL 保存相关的问题。

**[Plasma 6.4.5](https://kde.org/announcements/plasma/6/6.4.5/)**：[Discover](https://invent.kde.org/plasma/discover)  软件中心现在重新打开消息时，会正确启用“删除设置”按钮。面板自定义体验更流畅，编辑时对 <kbd>Esc</kbd> 键的响应更准确；桌面文件夹视图重新排列图标时，不再出现图标错位问题。系统设置（KCMs）有多项修复，包括字体更改通知正常显示、通知配置页面优化，以及时区选择器的焦点交互更流畅。[KWin 窗口管理器](https://invent.kde.org/plasma/kwin) 优化了显示处理，通过 UUID 更精准识别输出设备，且在 Wayland 环境中实现了更可靠的色彩管理。

**[KDE Frameworks 6.18.0](https://kde.org/announcements/frameworks/6.18.0/)**：此次 KDE 更新确保 [Dolphin](https://apps.kde.org/dolphin/)、[KMail](https://apps.kde.org/kmail2/)、[Ark](https://apps.kde.org/ark/) 等 KDE 应用运行更流畅。Breeze 图标主题进行了优化，移除过时、非标准尺寸的图标及第三方应用图标，提升了视觉一致性。[KIO](https://api.kde.org/frameworks/kio/html/index.html) 和 KArchive 等核心库优化了文件操作处理、改进后台线程中的缩略图加载，并增强了对畸形归档文件处理时的安全性。[Kirigami](https://kde.org/products/kirigami/)（用于 [Itinerary](https://apps.kde.org/itinerary/) 和 Plasma Mobile 等应用的自适应界面框架）修复了导航组件的布局问题，并通过优化焦点处理提升了可访问性。其他更新包括：多个框架的代码质量检查得到加强，以及 [KTextEditor](https://api.kde.org/frameworks/ktexteditor/html/index.html) 的漏洞修复。

**[OVMF](https://github.com/tianocore/edk2) edk2-stable202508**：此更新将依赖项升级至 OpenSSL 3.5.1 和 Oniguruma 6.9.10，引入独立 MM 支持，并添加带有 UUID-GUID 转换的 FF-A 内存管理。硬件和架构支持得到扩展，包括 ARM GICv5、RISC-V PEI 启动以及改进的异常处理。已移除旧版 UGA 支持，且增强了 QEMU TLS 和 TPM2 处理以提升稳定性。该版本还带来了众多 USB、SMM 和 CPU 热插拔修复，更好的构建系统集成（包括 mingw-w64），并默认启用 x64 OVMF 的 iSCSI 启动功能。

**[tuned](https://github.com/redhat-performance/tuned) 2.26.0**：此更新增加了对 MMC 设备的支持，改进了热插拔处理，并增强了核心计算、变量继承以及对不支持插件的日志记录。这个用于监控和自适应调优的守护进程的电源管理配置文件，现在使用 `med_power_with_dipm` 替代 `min_power`，以在保持节能的同时防止潜在的数据丢失。其他改进包括网络延迟调优、调度器性能检测和 sysfs 监控。

**[7-Zip](https://www.7-zip.org/) 25.01**：这个文件归档工具更新通过改变提取归档文件时处理符号链接的方式来提高安全性。性能得到提升，bzip2 压缩速度提高 15–40%，deflate（zip/gz）压缩速度略有提升，达到 1–3%。归档兼容性增强，对 ZIP、CPIO 和 FAT 格式的支持更好。解决了一些安全问题，包括修复对畸形 RAR 归档的错误处理以及特定畸形复合文件归档导致的崩溃问题。

**[libvirt](https://libvirt.org/) 11.6.0**：此版本引入了多项新功能，包括一个可独立于主机计算基准 CPU 的标志、对 QEMU TLS 优先级字符串更精细的控制、默认禁用 s390 域的已弃用 CPU 功能以及 QEMU 的 RBD 命名空间支持。[arm](https://www.arm.com/) 和 [RISC-V](https://riscv.org/) 的默认设置现在使用 [virtio-scsi](https://www.ovirt.org/develop/release-management/features/storage/virtio-scsi.html) 而非 lsilogic。其他改进包括丢弃粒度设置、更好的 NSS 调试以及放宽 TLS 证书要求。

**[udisks2](https://udisks.freedesktop.org/) 2.10.91**：此版本改进了存储管理，包括 LUKS 头备份、创建加密设备时设置标签的能力以及对额外 PBKDF 选项的支持。用户现在可以对 BitLocker 卷使用密钥文件，为 MD RAID 指定元数据版本，并利用新的 [Btrfs](https://btrfs.wiki.kernel.org) 方法获取和设置默认子卷 ID。挂载选项得到扩展，增加了用于 ISO9660、f2fs 和 ext3/ext4 文件系统的新标志。

**[polkit](https://gitlab.freedesktop.org/polkit/polkit) 126**：在这个版本中，可从 `/etc/`、`/run/` 和 `/usr/local/share` 读取操作，新的 LogControl1 协议允许动态更改日志级别。[Duktape](https://duktape.org/) 简化了依赖项，并取代了 [mozjs](https://spidermonkey.dev/)。翻译扩展到了斯洛文尼亚语和印地语。


## 关键软件包更新

**[GnuPG](https://gnupg.org/) 2.5.12**：此更新为 GnuPG 增加了新的灵活性并修复了多项问题。发送到 LDAP 服务器的密钥现在会预先刷新，除非通过新选项禁用；新增的 `--[no-]auto-key-upload` 设置可控制自动上传。压缩处理得到改进，对 7z 输入禁用了默认压缩。在 `--edit-key:addkey` 中增加了对 Kyber 变体的支持，并修复了复合 PQC 和 ECC 算法的回归问题。

**[Vim](https://www.vim.org/) 9.1.1706**：此更新解决了缓冲区溢出、空指针解引用和弹出窗口行为异常等问题。教程新增了关于文本对象和特殊寄存器的章节，同时更新了过时的翻译和文档以提高清晰度。补全逻辑、命令处理和测试覆盖范围也得到了优化。

**[Mesa](https://www.mesa3d.org/) 25.2.2**：此版本对图形堆栈进行了重要更新和清理。移除了旧版组件以及相关软件包（如 Mesa-gallium、Mesa-libd3d、Mesa-libOpenCL 和 libxatracker），体现了向现代 API 和驱动程序的转变。更新包括刷新 NVK 的 Rust  crate、改进构建要求，以及修复 crate 校验和不匹配的问题。

**[sudo](https://www.sudo.ws/) 1.9.17p2**：此更新修复了一个罕见问题，该问题可能导致 `sudo` 在伪终端中运行命令时向所有系统进程发送 SIGHUP 信号。另一项修复解决了在支持 `ptrace_readv_string()` 的 Linux 系统上，使用 `intercept` 和 `intercept_verify` 选项且带有极大参数或环境变量时出现的崩溃问题。配置脚本现在在没有 `mandoc` 的系统上也能正确支持 mdoc 手册页。此外，`/usr/etc/sudoers` 的权限默认值已修正。

**[Postfix](http://www.postfix.org/) 3.10.4**：此版本修复了 postscreen 中存在已久的问题，包括进程重启后的套接字错误以及可能阻塞新进程的缓存锁定问题。TLS 处理更加稳健，修正了对旧版参数的支持，并防止了 tlsproxy 中的空指针崩溃。更新减少了数据库文件更改时不必要的进程重启，移除了过时的 [OpenSSL](https://www.openssl.org/) 引擎依赖，并通过忽略明确标记为不需要加密的消息来清理 TLS 报告。

**[GStreamer](https://gstreamer.freedesktop.org/) 1.26.6**：此更新增强了字幕处理、decodebin3 标签处理、HLS 指令解析和 fallbacksrc 关闭行为的稳健性。硬件和格式支持得到扩展，包括 V4L2 对 WVC1/WMV3 的支持、Vulkan 解码器修复，以及通过 [librespot](https://docs.rs/crate/librespot/latest) 0.7 实现的 Spotify 集成更新。新的 threadshare 元素改进了同步和性能，而 videorate 在仅丢弃模式下效率更高。

**[fwupd](https://fwupd.org/) 2.0.14、2.0.15 和 2.0.16**：2.0.15 更新现已支持富士康 SDX61 调制解调器、Jabra Evolve2 子设备以及 NVIDIA ConnectX-6/7/8 网卡。子设备还可以继承父设备的命名前缀，以便更清晰地识别。修复了多个漏洞，包括不使用 `--force` 的固件报告、Firehose 调制解调器擦除、Goodix 设备枚举以及 BnR MTD 硬件的版本控制处理。2.0.14 更新增加了灵活性，允许固件更新忽略网络连接要求、UEFI 胶囊设备选择不使用 Capsule-on-Disk，以及插件在更新期间访问固件版本。众多修复提高了可靠性，包括更好地处理调制解调器设备、[Lexar](https://www.lexar.com) NVMe 版本控制、Synaptics RMI 初始化、UF2 解析和 ThunderBolt 重定时器检测。更新的硬件支持扩大了 fwupd 在现代系统和外设中的应用范围。

**[内核源码](https://www.kernel.org/) 6.16.5、6.16.6、6.16.7、6.16.8**：6.16.8 更新在文件系统、网络和驱动程序方面提供了广泛的稳定性和安全性修复。Btrfs 解决了配额统计信息泄漏和子卷删除竞争问题，而 NFS 和 NFSv4.2 改进了 O_DIRECT 操作的序列化和权限处理。6.16.7 更新增加了对新记录漏洞（CVE-2025-40300）的缓解措施，将保护扩展到较旧的 Intel CPU，启用条件 IBPB，并在 STIBP 与 SMT 一起禁用时发出警告。tar-up 工具已现代化，改用标准 `tar` 命令，确保一致的所有权、排序以及与 Tumbleweed 的兼容性。6.16.6 更新修复了 Btrfs 的多个竞争条件，以提高 inode 日志可靠性，同时音频和 USB 支持通过编解码器修复和更好地处理 Focusrite 设备得到改进。网络和无线驱动程序针对 cfg80211、iwlwifi、brcmfmac 和 mt76 芯片组进行了大量补丁更新，解决了使用后释放漏洞、竞争条件和扫描稳定性问题。6.16.5 更新解决了设备树、网络、跟踪和 I/O 处理中的内存泄漏、竞争条件和使用后释放漏洞。增强功能包括提高并发访问下的 SMB 客户端可靠性、改进音频编解码器控制、修复 HID 和 Intel quicki2c 驱动程序，以及优化 io_uring 工作进程管理。MSM 和联发科的图形驱动程序获得稳定性更新，而蓝牙的断开连接处理和数据包跟踪更加稳健。

**[SELinux 策略](https://github.com/SELinuxProject/selinux) 20250909**：此更新完善了 SELinux 规则，以提高与常见服务和系统组件的兼容性。GDM 现在可以创建密码锁定文件并在 [systemd](https://freedesktop.org/wiki/Software/systemd/) userdbd 目录中绑定套接字，而 nsswitch 域允许通过 Unix 套接字连接到 XDM。其他更新包括启用 gnome-remote-desktop 与 tabrmd 的通信、允许 nm-dispatcher 插件读取 pidfs 属性，以及允许 chronyc 使用 setgid/setuid。

**[SETools](https://github.com/SELinuxProject/setools) 4.6.0**：`seinfo` 工具现在可显示给定类型允许的角色，新增的 `sechecker` 模块能确保内核模块保持只读状态。同时引入了对 `nlmsg` 扩展权限的支持。在底层，代码库已实现现代化改造，包括改进质量检查、扩展单元测试以及移除已弃用的方法。打包方式已更新为使用 `pyproject.toml`，优化了依赖项处理，并在构建过程中实现自动化测试执行。

**[QEMU](https://www.qemu.org/) 10.1.0**：VFIO 现在支持为 SEV-SNP 和 TDX 客户机提供透传功能，迁移功能则新增了 multifd 后复制加速、优化的预复制以及 IPv6 RDMA 支持。QEMU 客户机代理可通过新命令查询 Windows 虚拟机负载。架构更新包括：ARM 新增 CPU 特性和主板、ARM virt 主板支持嵌套虚拟化与 CXL、龙芯架构（LoongArch）支持内核内中断控制器、RISC-V 新增 ISA 扩展与昆明湖（Kunminghu）CPU 支持，以及 Microblaze 架构支持字节序选择。此外，该版本还包含大量修复与弃用项。

**[CUPS](https://openprinting.github.io/cups/) 2.4.14**：此次打印服务更新修复了两个漏洞：一是 `AuthType Negotiate` 相关的身份验证绕过漏洞（CVE-2025-58060），二是导致远程拒绝服务（DoS）的空指针解引用漏洞（CVE-2025-58364）。同时引入了新的 `print-as-raster` 属性，可强制作业以光栅格式输出，以规避打印机固件的 PDF 处理问题。其他改进包括：修复重启后的作业清理、订阅处理、IPP/PPD 选项解析、内存泄漏，以及调度器事件报告问题。2.4.14 版本还附带一个热修复，确保本地化模板与 CUPS 网页界面（Web UI）页面正确安装，提升整体可靠性。

## 安全更新

**[内核源码](https://www.kernel.org/) 6.16.7**：

**[CVE-2025-40300](https://www.suse.com/security/cve/CVE-2025-40300.html)**：Linux 内核虚拟化层中存在的一个漏洞，可能允许受限制内存中的数据泄露到用户进程中，从而潜在地暴露敏感信息。

**[Python](https://www.python.org/)**：

**[CVE-2025-8194](https://www.suse.com/security/cve/CVE-2025-8194.html)**：Python 的 tarfile 模块中存在一个高严重性的拒绝服务（DoS）漏洞，精心构造的带有负偏移量的 tar 归档文件可能导致无限循环或死锁。

**[Mesa](https://www.mesa3d.org/) 25.2.2**：

**[CVE-2023-45913](https://www.suse.com/security/cve/CVE-2023-45913.html)**：图形驱动程序中存在一个缺陷，当显示系统在处理窗口时发送意外信号时，可能导致崩溃，并引发应用程序不稳定或拒绝服务。

**[CUPS](https://openprinting.github.io/cups/) 2.4.14**：

**[CVE-2025-58060](https://www.suse.com/security/cve/CVE-2025-58060.html)**：在 **CUPS**（打印系统）中，当身份验证配置为“Basic”以外的方式时，系统可能会忽略“Basic”身份验证头并完全跳过密码验证，从而允许任何人绕过身份验证。

**[CVE-2025-58364](https://www.suse.com/security/cve/CVE-2025-58364.html)**：在 **CUPS** 中，对打印机配置数据的不安全处理和验证可能导致空指针错误，使整个本地网络中的打印服务崩溃（拒绝服务）。

**[Xen](https://xenproject.org/) 4.20.1_04**：

**[CVE-2025-27466](https://www.suse.com/security/cve/CVE-2025-27466.html)**：更新计时器引用区域时可能发生空指针解引用缺陷，潜在地导致虚拟机监控程序或客户机环境崩溃。

**[CVE-2025-58142](https://www.suse.com/security/cve/CVE-2025-58142.html)**：上述问题的一个变体，假设合成计时器页面始终被映射，这可能在传递计时器消息时导致空指针解引用，引发不稳定性。

**[CVE-2025-58143](https://www.suse.com/security/cve/CVE-2025-58143.html)**：存在一个竞争条件，可能让客户机触发对仍在使用中的内存的释放，导致信息泄露或内存损坏。

**[ImageMagick](https://imagemagick.org/index.php)**：

**[CVE-2025-57807](https://www.suse.com/security/cve/CVE-2025-57807.html)**：64 位系统上的该软件包存在一个的缺陷，可能导致程序在安全内存区域之外写入数据，从而引发崩溃或让攻击者有可能执行代码。

**[libssh](https://www.libssh.org/) 0.11.3**：

**[CVE-2025-8114](https://www.suse.com/security/cve/CVE-2025-8114.html)**：存在空指针解引用问题，攻击者可借此导致客户端或服务器崩溃。

**[CVE-2025-8277](https://www.suse.com/security/cve/CVE-2025-8277.html)**：存在内存未正确释放的缺陷，可能导致内存逐渐耗尽并潜在引发崩溃。

**[7zip](https://www.7-zip.org/) 25.01**：

**[CVE-2025-53816](https://www.suse.com/security/cve/CVE-2025-53816.html)**：7-Zip 的 RAR5 处理器中存在堆缓冲区溢出问题，因在已分配堆缓冲区外写入零值所致，会导致内存损坏和拒绝服务（DoS）。

**[CVE-2025-53817](https://www.suse.com/security/cve/CVE-2025-53817.html)**：7-Zip 中存在一个相关安全问题（与 CVE-2025-53816 属于同一软件包），SUSE 的 7zip 更新中已对此进行修复。

**[libqt5-qtwebengine](https://software.opensuse.org/package/libqt5-qtwebengine) 5.15.19**：

**[CVE-2024-10229](https://www.suse.com/security/cve/CVE-2024-10229.html)**：SUSE 的更新中修复了 **libQt5Pdf** 中的安全问题。

**[CVE-2024-10827](https://www.suse.com/security/cve/CVE-2024-10827.html)**：SUSE 的维护版本中修复了 **libQt5Pdf** 中的另一个漏洞。

**[CVE-2024-12694](https://www.suse.com/security/cve/CVE-2024-12694.html)**：同一 SUSE 安全更新中还包含了 libQt5Pdf 的又一个漏洞。

**[CVE-2025-0436](https://www.suse.com/security/cve/CVE-2025-0436.html)**：同样被列为 SUSE 安全公告中 libQt5Pdf 的问题之一。

**[CVE-2024-11477](https://www.suse.com/security/cve/CVE-2024-11477.html)**：包含在 SUSE 对 libQt5Pdf 的安全修复中。

**[CVE-2025-0996](https://www.suse.com/security/cve/CVE-2025-0996.html)**：Android 上 Chrome 浏览器界面（地址栏）中存在一个欺骗漏洞，精心设计的 HTML 页面可操纵 URL 栏。

**[CVE-2025-1426](https://www.suse.com/security/cve/CVE-2025-1426.html)**：如摘要所述，GPU 中存在堆缓冲区溢出问题，包含在 SUSE 的 libQt5Pdf 安全公告中。

**[tiff](http://www.simplesystems.org/libtiff/)**：

**[CVE-2025-8961](https://www.suse.com/security/cve/CVE-2025-8961.html)**：该工具中存在一个缺陷，可能允许本地用户破坏内存，潜在导致崩溃或不稳定。

**[Expat](https://libexpat.github.io/) 2.7.2**：

**[CVE-2025-59375](https://www.suse.com/security/cve/CVE-2025-59375.html)**：存在一个漏洞，一个小型的特制文档可能迫使解析器分配大量内存，潜在导致崩溃或拒绝服务。

**[Mozilla Firefox](https://www.mozilla.org) 143.0**：

**[CVE-2025-10527](https://www.suse.com/security/cve/CVE-2025-10527.html)**：Firefox 的 Canvas2D 图形组件中存在一个使用后释放漏洞，可能允许沙箱内的代码突破限制并执行恶意操作。

**[CVE-2025-10528](https://www.suse.com/security/cve/CVE-2025-10528.html)**：同一图形区域（Canvas2D）中存在一个无效指针/未定义行为问题，同样可能导致沙箱突破。

**[CVE-2025-10529](https://www.suse.com/security/cve/CVE-2025-10529.html)**：浏览器布局代码中存在一个弱点，在特定条件下可能让页面违反同源限制（即读取或影响来自其他源的数据）。

**[CVE-2025-10530](https://www.suse.com/security/cve/CVE-2025-10530.html)**：Android 版 Firefox 的 WebAuthn（网页认证）组件中存在一个欺骗问题，攻击者可操纵用户界面或凭据行为。

**[CVE-2025-10531](https://www.suse.com/security/cve/CVE-2025-10531.html)**：Web 兼容性/工具方面存在缓解控制绕过问题，可能导致某些保护措施被跳过。

**[CVE-2025-10532](https://www.suse.com/security/cve/CVE-2025-10532.html)**：JavaScript 的垃圾回收边界存在错误，可能导致内存越界访问或破坏。

**[CVE-2025-10533](https://www.suse.com/security/cve/CVE-2025-10533.html)**：SVG 组件中存在一个整数溢出漏洞，在特定输入下可能导致内存破坏。

**[CVE-2025-10534](https://www.suse.com/security/cve/CVE-2025-10534.html)**：网站权限用户界面中存在一个欺骗问题，可能诱使界面显示误导性的权限状态。

**[CVE-2025-10535](https://www.suse.com/security/cve/CVE-2025-10535.html)**：Android 版 Firefox 的隐私组件中存在信息泄露/缓解措施绕过问题，可能导致数据泄露。

**[CVE-2025-10536](https://www.suse.com/security/cve/CVE-2025-10536.html)**：缓存/网络逻辑中存在一个缺陷，可能导致意外的数据暴露。

**[CVE-2025-10537](https://www.suse.com/security/cve/CVE-2025-10537.html)**：一系列内存安全漏洞（涉及多个组件），可能导致内存破坏或任意代码执行。

建议用户更新到最新版本以缓解这些漏洞。

## 总结

2025年9月对于 [openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) 而言是内容丰富的一个月。从 GNOME 49 和 KDE Gear 25.08.1 带来的重大桌面体验改进，到 Linux 内核、QEMU 等组件在底层的关键升级，本月的更新充分体现了 Tumbleweed 对提供可靠、经过充分测试的滚动发布版的承诺。建议用户及时更新，以充分享受这些改进带来的体验。

## Slowroll 的更新

请注意，上述更新同样适用于 [Slowroll](https://en.opensuse.org/Archive:Old_Slowroll_Page) 发行版，通常会在 Tumbleweed 快照发布后的 5 至 10 天 内推送。这一月度同步机制已稳定运行数月，能确保用户在获得可靠性的同时，也能及时接收功能与安全增强。Slowroll 的更新包会定期通过 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 发布公告。

## 为 openSUSE Tumbleweed 做贡献

您可以通过订阅 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 获取最新的快照更新信息。如果您希望参与贡献或深入技术讨论，该邮件列表是交流的核心平台。openSUSE 团队欢迎用户通过以下方式参与，包括提交错误报告、提出功能建议、参与社区讨论。

您的每一次反馈和贡献，都在帮助 Tumbleweed 变得更好。无论是报告错误、提出功能建议，还是参与社区讨论，您的参与都极具价值。

---
原文：[Tumbleweed Monthly Update - September 2025](https://news.opensuse.org/2025/09/30/tw-monthly-update-sept/)，作者：Douglas DeMaio
