---
author: Fangzhou Liu
date: 2025-08-09 09:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 7 月
image: /assets/posts/2025-08/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---
7 月期间，[openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) 对多个软件包进行了更新，在众多组件中带来了大量增强功能、新特性以及关键安全修复。

主要升级包括 [hwinfo 25](https://github.com/openSUSE/hwinfo)、[systemd-rpm-macros 26](https://software.opensuse.org/package/systemd-rpm-macros?search_term=systemd-rpm-macros) 和 [Amarok 3.3.0](https://amarok.kde.org/)。这款滚动发布版还迎来了几项 [GStreamer](https://gstreamer.freedesktop.org/) 更新，以及 [curl]()https://curl.se/ 8.15.0、[nvme-cli](https://github.com/linux-nvme/nvme-cli) 2.15 等软件的更新。

这些进步还得到了 KDE 生态系统更新的补充，其中包括 [Plasma 6.4.3](https://kde.org/announcements/plasma/6/6.4.3/)、[KDE Frameworks 6.16.0](https://kde.org/announcements/frameworks/6/6.16.0/) 和 [KDE Gear 25.04.3](https://kde.org/announcements/changelogs/gear/25.04.3/)。其他重要工具如 [vim 9.1.1508](https://www.vim.org/) 增加了 Wayland 剪贴板支持并改进了语言语法，而 [myrlyn 0.9.7](https://github.com/shundhammer/myrlyn) 则增强了安全的权限提升功能。

与往常一样，如果出现任何问题，请使用 [snapper](https://github.com/openSUSE/snapper) 进行回滚。

有关该月变更日志的更多详细信息，请访问 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)。

## 新功能和增强功能

**[hwinfo](https://github.com/openSUSE/hwinfo) 25.0**：这一主要版本引入了多项新功能和改进，增强了硬件检测和报告能力。其中包括 USB 方面的改进，新增了对捕获USB备用设置和接口关联的支持，这使得对复杂USB设备的分类更准确、报告更详细。此外，该版本还新支持报告 [NVMe-oF（ fabrics上的NVMe）](https://www.computerweekly.com/de/definition/NVMe-oF-NVMe-over-Fabrics) 和 [iSCSI](https://en.wikipedia.org/wiki/ISCSI) 设备信息，这在企业级和网络存储环境中更为实用。

**[systemd-rpm-macros](https://software.opensuse.org/package/systemd-rpm-macros?search_term=systemd-rpm-macros) 26**：这个新版本新增了 `%udev_trigger_with_reload()` 宏，确保软件包能正确触发 `udev` 事件并重新加载规则文件。相关变更与事务性系统行为保持一致，且某些变更仅在重启后生效。在安装过程中需要创建用户或组的软件包，现在应使用 `sysusers_create_package()`，以确保安装过程中文件所有权的正确性。

**[amarok](https://amarok.kde.org/) 3.3.0**：这款音乐播放器现已基于 [Qt 6](https://www.qt.io/product/qt6) 和 [KDE Frameworks 6](https://kde.org/info/kde-frameworks-6.0.0/) 构建。该版本的特点是重新设计了基于 [GStreamer](https://gstreamer.freedesktop.org/) 的音频引擎，以提升播放支持和灵活性。此外，该版本还包含重要的内部改进，如升级数据库字符集以支持完整的 UTF-8 值，以及增强对音乐元数据中非拉丁字符的兼容性。

**[KDE Frameworks 6.16.0](https://kde.org/announcements/frameworks/6/6.16.0/)**：值得关注的更新包括 [KArchive](https://api.kde.org/frameworks/karchive/html/) 中更安全的压缩处理、[KIO](https://api.kde.org/frameworks/kio/html/index.html) 中改进的文件重命名功能、“属性”对话框中更完善的可访问性，以及 KCoreAddons 中增强的时区和日期处理。[Kirigami](https://kde.org/products/kirigami/) 获得了关键的崩溃修复和设计优化，而 Breeze Icons 则新增了设备和动作图标。使用 Python 的开发者可获得 KDateValidator 和 KIconUtils 的新示例集成。语法高亮功能得到扩展，对 Perl、HTML 和 XML 的支持更出色。

**[KDE Plasma 6.4.3](https://kde.org/announcements/plasma/6/6.4.3/) 和 [6.4.2](https://kde.org/announcements/plasma/6/6.4.2/)**：在 6.4.3 版本中，[KWin](https://invent.kde.org/plasma/kwin) 窗口管理器和 Wayland 合成器的更新提升了用户体验，包括更好地处理平板输入和高分辨率（HiDPI）显示器，以及让应用程序和窗口的缩放与调整大小更流畅。在应用程序间切换时，弹出窗口现在能正确关闭，任务栏等面板也能正常工作。多显示器设置还受益于改进的屏幕校准和输出识别功能。锁屏经过调整，避免在激活后立即提示输入密码，给用户更多控制权。一个可能影响通过 PAM 登录的竞争条件已得到缓解，软件中心 [Discover](https://invent.kde.org/plasma/discover) 在交互操作被按下时，突出显示更清晰。Plasma 欢迎界面也已更新，更具可访问性和用户友好性。

**[KDE Gear 25.04.3](https://kde.org/announcements/changelogs/gear/25.04.3/)**：本月初发布的这一版本带来了多项修复，包括 [Akregator](https://apps.kde.org/akregator/) 中更好的链接处理、[Ark](https://apps.kde.org/ark/) 中改进的文件压缩，以及 Audiotube 中搜索无法打开的问题修复。[Dolphin](https://apps.kde.org/dolphin/)在查看文件夹属性时不再泄露系统资源，[KAlarm](https://apps.kde.org/de/kalarm/) 防止弹出消息抢占焦点。[Kitinerary](https://apps.kde.org/itinerary/)新增了对更多旅行确认信息的支持，包括 LeShuttle、DJH、欧洲之星和 Leo Express，这些都能更好地处理日期、语言和票券格式。其他修复包括改进的PDF票券支持、更好的会员卡处理，以及增强的公共交通数据。

**[myrlyn](https://github.com/shundhammer/myrlyn) 0.9.7**：这个新版本改变了 `myrlyn-sudo` 构建自身环境的方式，有助于避免 XWayland 相关问题，并确保 `XDG_RUNTIME_DIR` 环境变量得以保留。这使得以提升的权限运行程序更流畅、更安全。此次更新改进了配置文件的处理方式，并使 `.desktop` 文件中的代码更简洁、格式更规范。新增了“root 认证”帮助菜单，以在设置过程中为用户提供协助，还引入了对 `myrlyn-askpass` 中提示参数的支持。多个问题得到修复，包括系统命令执行过程中文件路径和环境变量的处理方式。此外，还解决了一些与样式、拼写错误和配置备份相关的小漏洞。

**[vim](https://www.vim.org/) 9.1.1508**：该版本改进了软件包对文件类型的处理，例如能正确识别 Haxe、Numbat、QuickBMS 和 Flix 等编程语言所用的文件。它还为 Go 语言新增了导航快捷键，并增强了语法高亮以提高可读性。一项修复新增了 Wayland 剪贴板支持，使现代 Linux 桌面用户能在 Vim 和其他应用程序之间无缝复制粘贴文本。此次更新还确保在使用 `cd` 命令更改目录时，符号链接能被正确解析。

## 关键软件包更新

**[内核源码](https://www.kernel.org/) 6.15.8、6.15.7、6.15.5 和 6.15.4**：本月发布了四个内核版本，其中 6.15.8 版本包含一项关键修复，用于解决 x86/xen 平台的 KVM 问题。该修复通过修正 Xen schedop poll 超级调用模拟中的清理逻辑，有助于确保虚拟化性能更加可靠。另一项重要更新改进了 SMB 客户端，使 `smbd_post_send_iter()` 函数能够考虑到 peer 的最大发送大小。6.15.7 版本提高了蓝牙的可靠性，防止了断开连接问题，并且内核还修复了内存泄漏、连接问题以及 `vsock`、`tcp`、`phy`、`atm`、`stmmac` 等网络驱动和协议的相关问题，以防止崩溃。此外，该版本还增强了音频驱动与英特尔和高通硬件的兼容性。6.15.5 版本的 Linux 内核修复了网络栈中的多个问题，包括 virtio-net、txgbe 和蓝牙子系统。RTC 驱动进行了 minor 修正，而 MMC/SDHCI 的更新增强了 SD 卡的错误处理和 UHS-II 支持。此更新还解决了 ALSA、RDMA、VSOCK 和 SCSI 等模块中的崩溃问题。6.15.4 版本解决了 `io_uring` 中的一个回归问题，提高了异步 I/O 操作的内存计算和稳定性。多个加密驱动（包括 `qat` 和 `marvell/cesa`）现在能更可靠地处理关闭和请求链。

**[Mesa](https://www.mesa3d.org/) 25.1.6 和 25.1.5**：25.1.6 版本解决了一系列影响日常桌面用户和游戏玩家的关键问题。这些修复包括解决《军团要塞 2》（[Team Fortress 2](https://store.steampowered.com/app/440/Team_Fortress_2/)）中的图形故障、防止在使用现代驱动（`nvk + zink`）时 `sddm-greeter` 等应用程序崩溃，以及避免 FirePro W4100 显卡出现系统重启或崩溃的情况。该版本还修复了内存泄漏、X11 上的 Vulkan 线程问题，以及 `AMD`、`英特尔`和 `ARM` 等特定驱动的回归问题。与 25.1.6 版本一样，25.1.5 版本也没有新增功能，但它解决了多个驱动和平台上的崩溃、内存问题、渲染故障和回归问题。值得注意的是，该版本解决了诸如《[DOTA 2](https://store.steampowered.com/app/570/Dota_2/)》 中的地面纹理闪烁、WebGPU 着色器导致的 GPU 进程崩溃，以及特定驱动的 Vulkan 和 OpenGL 不一致等问题。修复范围涵盖了众多驱动和工具，包括 [AMD](https://www.amd.com/en) 的 `radeonsi`、[英特尔](https://www.intel.com/) 支持，以及 `panfrost`、`zink` 和 `anv`、`radv` 等 Vulkan 组件。

**[curl](https://curl.se/) 8.15.0**：此更新对非阻塞输入的处理更加完善，并修复了 SFTP 路径处理（如 `/~`）和 LDAP 集成中存在已久的漏洞。`--retry` 选项现在能正确报告退出代码，提高了自动化脚本的可靠性。在底层，[OpenSSL](https://www.openssl.org/) 修复了多个与缓冲数据、引擎使用和 PKCS#11 提供程序检查相关的问题，而 HTTP/2 和 HTTP/3 的报告现在更加一致。为 QUIC 连接新增的 `CURLINFO_TLS_SSL_PTR` 有助于开发人员调试加密传输。

**[bind](https://bind9.readthedocs.io) 9.20.11**：该版本解决了一个关键安全问题，即当 `stale-answer-client-timeout` 设置为 0 时，可能导致 `named` 解析器进程崩溃。此更新还在 `dig` 工具中引入了对 CO 标志的支持。漏洞修复包括将默认的 `interface-interval` 从 60 秒修正为 60 分钟（这解决了区域使用多个视图时的 `purge-keys` 问题），以及确保 `delv +ns` 现在能正确执行 [IPv6](https://en.wikipedia.org/wiki/IPv6) 查询。

**[ddcutil](https://www.ddcutil.com) 2.2.1**：这个用于改善用户通过命令行调整显示器设置的可靠性和可用性的软件包，修复了多个可能导致在使用 DDC/CI 与显示器通信时出现崩溃或错误行为的漏洞，特别是在装有旧版 Nvidia 驱动的系统上或使用 KDE Plasma 桌面环境时。用户应该会体验到更可靠的显示器检测和通信、命令执行期间更好的反馈，以及与 KDE [PowerDevil](https://invent.kde.org/plasma/powerdevil) 等电源管理工具相关的问题更少。它还增强了以 root 身份或提升权限运行时的报告功能，并改进了错误消息，以便在显示器配置过程中提供更有意义的反馈。

**[netpbm](https://netpbm.sourceforge.net/) 11.11.0**：这个图像处理工具包中的工具（如 `pamflip`）现在支持 `-inverse` 和 `-reflect` 选项，便于进行转换操作，并且通过浮点计算实现了更平滑的圆形绘制。`pnmquantall`、`ppmtogif` 和 `pnmtofiasco` 等工具获得了关键的安全和稳定性修复，解决了可追溯到十多年前的漏洞和长期存在的问题。`pamdice` 中的文件命名也得到了修正，以避免不必要的切片数字。

**[php8](https://www.php.net/) 8.4.10**：此更新的改进包括修复 `curl`、`openssl`、`intl` 和 `pdo_sqlite` 中的内存泄漏，改进 `pg_cancel_query()` 和 `SOAP` 中的错误处理，以及修正 `DatePeriod`、`SimpleXML` 和 `DOM` 中的行为。还解决了多个关键漏洞，该版本提高了开发人员在 Web、CLI 和 FPM 环境中使用 PHP 的整体可靠性。

**[xen](https://xenproject.org/) 4.20.1**：此更新解决了多个关键问题，包括安全漏洞，如 XSA-471（缓解基于 AMD 的瞬态执行攻击）和 XSA-470。

**[sudo](https://www.sudo.ws/) 1.9.17p1**：该版本通过在解析环境设置和密码要求时执行更严格的行为来提高安全性。其他修复包括改进边缘情况下的密码处理（如通过 `pwfeedback`）、在未分配终端时提供更好的 SSH 建议，以及防止 `sudo -l` 中的信息泄露。还改进了从串行控制台运行的行为，恢复使用 `TCSAFLUSH` 来丢弃多余的密码输入，并新增了对 `SUDO_TTY` 的支持以跟踪用户的原始终端。

**[GStreamer](https://gstreamer.freedesktop.org/) 1.26.4 和 1.26.3**：这个多媒体框架的 1.26.4 版本更新解决了自适应流中的反向播放问题，并提高了与 AWS MediaLive 和 LiveKit 等服务的兼容性。该更新还增加了对 MP4 文件中更精确时间戳的支持，并修复了使用 WebRTC 时可能出现的死锁（这在视频会议应用中很常见）。1.26.3 版本解决了 H.266 视频解析器中的一个安全问题，并修复了 WAV 文件和字幕可能导致崩溃或内存占用过高的问题。对视频字幕渲染、音视频同步、大型 MP4 文件创建以及对 MPEG-TS 和分片 MP4 等实时视频格式的支持都进行了改进。新增了一项使用 [ElevenLabs](https://elevenlabs.io/) API 的 AI 语音合成功能，并改进了 CC 隐藏式字幕等辅助功能。

**[nvme-cli](https://github.com/linux-nvme/nvme-cli) 2.15**：该版本新增了用于电源管理、仲裁、易失性写缓存控制、温度阈值和时间戳的命令，让用户能更深入地了解和控制自己的设备。输出格式得到扩展，提供了更详细和冗长的日志。为 [HPE](https://www.hpe.com/)、[Western Digital](https://www.westerndigital.com/)、[NetApp](https://www.netapp.com/)、[美光](https://www.micron.cn) 和 [MangoBoost](https://www.mangoboost.io/) 等主要供应商开发的插件已更新，以支持更广泛的设备并改进错误处理。内存处理和设备发现得到改进，以防止泄漏和错误报告，而新的 NUMA 和仲裁功能与 [libnvme](https://github.com/linux-nvme/libnvme) 的变化保持一致。

**[libnvme](https://github.com/linux-nvme/libnvme) 1.15**：此更新通过修复内存处理问题、完善文档以及增强对电源管理、健康监控和温度阈值的支持，提高了系统的稳定性和兼容性。它还更好地处理了 [NVMe](https://nvmexpress.org/) 路径发现。新增或扩展了众多测试，涵盖 `ioctl` 函数、`sysfs` 处理和功能集，以提高整体可靠性。文档也进行了更新。

## 错误修复和安全更新

本月修复了多个关键安全漏洞，涉及的 [通用漏洞披露问题](https://zh.wikipedia.org/wiki/公共漏洞和暴露) 包括：

### 安全更新

**[sudo](https://www.sudo.ws/) 1.9.17p1**：

- **[CVE-2025-32462](https://www.suse.com/security/cve/CVE-2025-32462.html)**：修复了 `sudo` 中通过 `--host` 选项存在的本地权限提升漏洞。
- **[CVE-2025-32463](https://www.suse.com/security/cve/CVE-2025-32463.html)**：解决了 `sudo` 中与 `chroot` 选项相关的本地权限提升问题。

**[qt6-base](https://www.qt.io/product/qt6)**：

- **[CVE-2025-5992](https://www.suse.com/security/cve/CVE-2025-5992.html)**：防止了在Qt的 `QColorTransferGenericFunction` 中通过超出范围的值导致的拒绝服务攻击。

**[bind](https://bind9.readthedocs.io) 9.20.11**：

- **[CVE-2025-40777](https://www.suse.com/security/cve/CVE-2025-40777.html)**：修复了libvirt中 `secret_xml_extract_value()` 函数存在的堆缓冲区溢出问题，该问题可能导致远程代码执行。

**[ImageMagick](https://imagemagick.org/index.php) 7.1.2.0**：

- **[CVE-2025-53101](https://www.suse.com/security/cve/CVE-2025-53101.html)**：修复了 OpenJDK 在 XML 解析中的不当验证问题，可防范精心构造的 XML 攻击。
- **[CVE-2025-53014](https://www.suse.com/security/cve/CVE-2025-53014.html)**：修补了 libjpeg-turbo 的 JPEG 解压缩过程中存在的整数溢出问题，该问题可能导致崩溃。
- **[CVE-2025-53015](https://www.suse.com/security/cve/CVE-2025-53015.html)**：解决了 libjpeg-turbo 在色彩空间转换过程中的缓冲区下溢问题。
- **[CVE-2025-53019](https://www.suse.com/security/cve/CVE-2025-53019.html)**：修复了 libjpeg-turbo 的渐进式 JPEG 解码器中的越界写入问题。

**[libavif](https://github.com/AOMediaCodec/libavif)**：

- **[CVE-2025-48175](https://www.suse.com/security/cve/CVE-2025-48175.html)**：修补了 Bash 在扩展环境变量时存在的栈缓冲区溢出问题。
- **[CVE-2025-48174](https://www.suse.com/security/cve/CVE-2025-48174.html)**：修复了 Bash 在参数扩展期间处理关联数组时的释放后使用问题。

**[php8](https://www.php.net/) 8.4.10**：

- **[CVE-2025-1735](https://www.suse.com/security/cve/CVE-2025-1735.html)**：修复了 Apache HTTP 服务器中不当的URL验证问题，该问题可能导致路径遍历。
- **[CVE-2025-6491](https://www.suse.com/security/cve/CVE-2025-6491.html)**：修补了 SQLite 中的整数溢出问题，该问题易受通过精心构造的查询发起的拒绝服务攻击。
- **[CVE-2025-1220](https://www.suse.com/security/cve/CVE-2025-1220.html)**：解决了 libpng 在处理畸形 PNG 数据块时的越界读取问题。

**[git](https://github.com/git) 2.50.1**：

- **[CVE-2025-27613](https://www.suse.com/security/cve/CVE-2025-27613.html)**：修复了 libxml2 在处理恶意实体的 DTD 解析过程中存在的整数溢出问题。
- **[CVE-2025-27614](https://www.suse.com/security/cve/CVE-2025-27614.html)**：修补了 libxml2 在 XML 外部实体处理中的缓冲区溢出问题。
- **[CVE-2025-46334](https://www.suse.com/security/cve/CVE-2025-46334.html)**：解决了 systemd 在处理畸形单元文件时出现的内存泄漏问题。
- **[CVE-2025-46835](https://www.suse.com/security/cve/CVE-2025-46835.html)**：修复了 zlib 在对特制数据进行压缩处理时的越界读取问题。
- **[CVE-2025-48384](https://www.suse.com/security/cve/CVE-2025-48384.html)**：解决了 PulseAudio 在快速卸载模块时加载模块出现的释放后使用问题。
- **[CVE-2025-48385](https://www.suse.com/security/cve/CVE-2025-48385.html)**：修补了 PulseAudio 在样本格式转换中的缓冲区读下溢问题。
- **[CVE-2025-48386](https://www.suse.com/security/cve/CVE-2025-48386.html)**：修复了 PulseAudio 在客户端断开连接处理中导致崩溃的竞态条件问题。

**[apache2-mod_php8](https://software.opensuse.org/package/apache2-mod_php8) 8.4.10**：

- **[CVE-2025-1735](https://www.suse.com/security/cve/CVE-2025-1735.html)**：修复了 Apache HTTP 服务器中不当的 URL 验证问题，该问题可能导致路径遍历。
- **[CVE-2025-6491](https://www.suse.com/security/cve/CVE-2025-6491.html)**：修补了 SQLite 中的整数溢出问题，该问题易受通过特制查询发起的拒绝服务攻击。
- **[CVE-2025-1220](https://www.suse.com/security/cve/CVE-2025-1220.html)**：解决了 libpng 在处理畸形 PNG 数据块时的越界读取问题。

**[xen](https://xenproject.org/) 4.20.1**：

- **[CVE-2025-27465](https://www.suse.com/security/cve/CVE-2025-27465.html)**：修复了 Xen 的 x86 指令重放存根中不正确的异常处理问题，该问题可能导致 hypervisor 崩溃，进而被非特权客户机利用造成拒绝服务（DoS）。

**[poppler](https://poppler.freedesktop.org/) 25.06.0**：

- **[CVE-2025-52886](https://www.suse.com/security/cve/CVE-2025-52886.html)**：修复了 libxml2 中 `xmlParseNameComplex()` 函数存在的越界读取问题，该问题可能导致拒绝服务（DoS）。


**[Mozilla Firefox](https://www.mozilla.org) 141 和 140**：

- **[CVE-2025-8027](https://www.suse.com/security/cve/CVE-2025-8027.html)**：修复了 JavaScript 引擎中仅将部分返回值写入栈中的漏洞。
- **[CVE-2025-8028](https://www.suse.com/security/cve/CVE-2025-8028.html)**：解决了大型分支表可能导致指令被截断的问题。
- **[CVE-2025-8041](https://www.suse.com/security/cve/CVE-2025-8041.html)**：修正了 Firefox for Android 中的 URL 截断缺陷。
- **[CVE-2025-8042](https://www.suse.com/security/cve/CVE-2025-8042.html)**：修补了允许沙箱化 iframe 发起下载的问题。
- **[CVE-2025-8029](https://www.suse.com/security/cve/CVE-2025-8029.html)**：修复了 `javascript:` URL 可在 `<object>` 和 `<embed>` 标签中执行的漏洞。
- **[CVE-2025-8036](https://www.suse.com/security/cve/CVE-2025-8036.html)**：解决了允许绕过 CORS 限制的 DNS 重绑定问题。
- **[CVE-2025-8037](https://www.suse.com/security/cve/CVE-2025-8037.html)**：修补了无名 Cookie 可能覆盖安全 Cookie 的漏洞。
- **[CVE-2025-8030](https://www.suse.com/security/cve/CVE-2025-8030.html)**：修复了“复制为 cURL”开发者工具命令中潜在的用户辅助代码执行风险。
- **[CVE-2025-8043](https://www.suse.com/security/cve/CVE-2025-8043.html)**：解决了另一个不正确的 URL 截断问题。
- **[CVE-2025-8031](https://www.suse.com/security/cve/CVE-2025-8031.html)**：修正了 CSP（内容安全策略）报告中不当的URL剥离问题。
- **[CVE-2025-8032](https://www.suse.com/security/cve/CVE-2025-8032.html)**：修复了 XSLT 文档能够绕过 CSP 限制的问题。
- **[CVE-2025-8038](https://www.suse.com/security/cve/CVE-2025-8038.html)**：修补了 CSP `frame-src` 未正确应用于路径的执行问题。
- **[CVE-2025-8039](https://www.suse.com/security/cve/CVE-2025-8039.html)**：解决了搜索词在 URL 栏中持久存在的隐私问题。
- **[CVE-2025-8033](https://www.suse.com/security/cve/CVE-2025-8033.html)**：修复了影响生成器函数的 JavaScript 状态机漏洞。
- **[CVE-2025-8044](https://www.suse.com/security/cve/CVE-2025-8044.html)**：修补了 Firefox 141 和 Thunderbird 141 中的内存安全漏洞。
- **[CVE-2025-8034](https://www.suse.com/security/cve/CVE-2025-8034.html)**：修复了 Firefox ESR 115.26、ESR 128.13、ESR 140.1、Firefox 141 及相应 Thunderbird 版本中的内存安全漏洞。
- **[CVE-2025-8040](https://www.suse.com/security/cve/CVE-2025-8040.html)**：解决了 Firefox ESR 140.1、Thunderbird ESR 140.1、Firefox 141 和 Thunderbird 141 中的内存安全漏洞。
- **[CVE-2025-8035](https://www.suse.com/security/cve/CVE-2025-8035.html)**：修补了Firefox ESR 128.13、ESR 140.1、Firefox 141及相应Thunderbird版本中的内存安全漏洞。
- **[CVE-2025-6424](https://www.suse.com/security/cve/CVE-2025-6424.html)**：FontFaceSet 中存在释放后使用问题。
- **[CVE-2025-6425](https://www.suse.com/security/cve/CVE-2025-6425.html)**：Firefox 附带的 WebCompat 浏览器扩展暴露了一个持久化的 UUID。
- **[CVE-2025-6426](https://www.suse.com/security/cve/CVE-2025-6426.html)**：在 macOS 上打开可执行终端文件时无警告提示。
- **[CVE-2025-6427](https://www.suse.com/security/cve/CVE-2025-6427.html)**：connect-src 内容安全策略限制可被绕过。
- **[CVE-2025-6429](https://www.suse.com/security/cve/CVE-2025-6429.html)**：URL的不正确解析可能允许嵌入 youtube.com。
- **[CVE-2025-6430](https://www.suse.com/security/cve/CVE-2025-6430.html)**：当文件包含在 embed 或 object 标签中时，Content-Disposition 头被忽略。
- **[CVE-2025-6431](https://www.suse.com/security/cve/CVE-2025-6431.html)**：攻击者本可以绕过此提示，可能使用户面临外部应用程序中的安全漏洞或隐私泄露风险。

**[mozjs128](https://spidermonkey.dev/) 128.13.0 和 128.12.0**：

- **[CVE-2025-8027](https://www.suse.com/security/cve/CVE-2025-8027.html)**: 修复了 JavaScript 引擎中仅将部分返回值写入栈中的漏洞。
- **[CVE-2025-8028](https://www.suse.com/security/cve/CVE-2025-8028.html)**: 解决了大型分支表可能导致指令被截断的漏洞。
- **[CVE-2025-8029](https://www.suse.com/security/cve/CVE-2025-8029.html)**: 修复了允许 `javascript:` 网址在 `<object>` 和 `<embed>` 标签中执行的问题。
- **[CVE-2025-8030](https://www.suse.com/security/cve/CVE-2025-8030.html)**: 修补了“复制为 cURL”命令中潜在的用户辅助代码执行漏洞。
- **[CVE-2025-8031](https://www.suse.com/security/cve/CVE-2025-8031.html)**: 修正了内容安全策略（CSP）报告中不当的 URL 剥离问题。
- **[CVE-2025-8032](https://www.suse.com/security/cve/CVE-2025-8032.html)**: 修复了允许 XSLT 文档绕过 CSP 限制的缺陷。
- **[CVE-2025-8033](https://www.suse.com/security/cve/CVE-2025-8033.html)**: 解决了影响生成器函数的 JavaScript 状态机漏洞。
- **[CVE-2025-8034](https://www.suse.com/security/cve/CVE-2025-8034.html)**: 修补了 Firefox ESR 115.26、ESR 128.13、ESR 140.1、Firefox 141 及相应 Thunderbird 版本中的多个内存安全漏洞。
- **[CVE-2025-8035](https://www.suse.com/security/cve/CVE-2025-8035.html)**: 修复了 Firefox ESR 128.13、ESR 140.1、Firefox 141 及相应 Thunderbird 版本中的内存安全漏洞。
- **[CVE-2025-6424](https://www.suse.com/security/cve/CVE-2025-6424.html)**: 修复了 `FontFaceSet` 中可能导致内存损坏的释放后使用漏洞。
- **[CVE-2025-6425](https://www.suse.com/security/cve/CVE-2025-6425.html)**: 解决了通过 WebCompat 浏览器扩展暴露持久化 UUID 的问题。
- **[CVE-2025-6426](https://www.suse.com/security/cve/CVE-2025-6426.html)**: 解决了在 macOS 上打开可执行终端文件时缺少警告的问题。
- **[CVE-2025-6429](https://www.suse.com/security/cve/CVE-2025-6429.html)**: 修复了可能允许不当嵌入 `youtube.com` 内容的 URL 解析缺陷。
- **[CVE-2025-6430](https://www.suse.com/security/cve/CVE-2025-6430.html)**: 修正了通过 `<embed>` 或 `<object>` 包含文件时对 `Content-Disposition` 头的处理。
- **[CVE-2025-5283](https://www.suse.com/security/cve/CVE-2025-5283.html)**: 修复了 `libvpx` 编码器中的双重释放漏洞。
- **[CVE-2025-5263](https://www.suse.com/security/cve/CVE-2025-5263.html)**: 修补了脚本执行与网页内容的错误处理隔离不当的问题。
- **[CVE-2025-5264](https://www.suse.com/security/cve/CVE-2025-5264.html)**: 修复了“复制为 cURL”开发者工具命令中的本地代码执行风险。
- **[CVE-2025-5265](https://www.suse.com/security/cve/CVE-2025-5265.html)**: 解决了通过“复制为 cURL”命令实现的另一个本地代码执行途径。
- **[CVE-2025-5266](https://www.suse.com/security/cve/CVE-2025-5266.html)**: 解决了通过脚本元素事件导致的跨域信息泄露问题。
- **[CVE-2025-5267](https://www.suse.com/security/cve/CVE-2025-5267.html)**: 修复了可能暴露已保存支付卡信息的点击劫持漏洞。
- **[CVE-2025-5268](https://www.suse.com/security/cve/CVE-2025-5268.html)**: 修补了 Firefox 139、Thunderbird 139 和 ESR 128.11 版本中的多个内存安全问题。
- **[CVE-2025-5269](https://www.suse.com/security/cve/CVE-2025-5269.html)**: 修复了 Firefox ESR 128.11 和 Thunderbird 128.11 中的另一个内存安全漏洞。

**[openssl-3](https://www.openssl.org/) 3.5.1**：

- **[CVE-2025-5278](https://www.suse.com/security/cve/CVE-2025-5278.html)**: 修复了 WebKit 中样式表规则的意外执行问题。
- **[CVE-2025-4575](https://www.suse.com/security/cve/CVE-2025-4575.html)**: 修正了 OpenSSL 的 `-addreject` 标志误用问题，以防止意外的信任标记。

**[raptor](https://www.linuxfromscratch.org/blfs/view/svn/general/raptor.html)**：

- **[CVE-2024-57822](https://www.suse.com/security/cve/CVE-2024-57822.html)**: 修补了 LibreOffice 的 XML 解析器中通过特制文档导致的内存损坏问题。
- **[CVE-2024-57823](https://www.suse.com/security/cve/CVE-2024-57823.html)**: 解决了 LibreOffice 图形处理层中的释放后使用问题。

**[djvulibre](https://djvu.sourceforge.net/) 3.5.29**：

- **[CVE-2025-53367](https://www.suse.com/security/cve/CVE-2025-53367.html)**: 修复了多个漏洞，添加了损坏文件测试，并解决了 clang 警告问题。
- **[CVE-2021-32490](https://www.suse.com/security/cve/CVE-2021-32490.html)**: 修复了 DjVu 解码函数中的越界写入问题。
- **[CVE-2021-32491](https://www.suse.com/security/cve/CVE-2021-32491.html)**: 解决了通过畸形 JB2 流导致的内存损坏问题。
- **[CVE-2021-32492](https://www.suse.com/security/cve/CVE-2021-32492.html)**: 处理了 IW44 解压缩代码中不恰当的边界检查问题。
- **[CVE-2021-32493](https://www.suse.com/security/cve/CVE-2021-32493.html)**: 修复了 RLE 解码器中的堆缓冲区溢出问题。
- **[CVE-2021-46310](https://www.suse.com/security/cve/CVE-2021-46310.html)**: 修补了因 JBIG2 解码中的无限循环导致的拒绝服务漏洞。


**[libxml2](https://gitlab.gnome.org/GNOME/libxml2)**：

- **[CVE-2025-49794](https://www.suse.com/security/cve/CVE-2025-49794.html)**: 修复了可能导致拒绝服务（DoS）的堆使用后释放漏洞。
- **[CVE-2025-49795](https://www.suse.com/security/cve/CVE-2025-49795.html)**: 修补了可能导致拒绝服务（DoS）的空指针解引用问题。
- **[CVE-2025-49796](https://www.suse.com/security/cve/CVE-2025-49796.html)**: 解决了可能导致拒绝服务（DoS）的类型混淆漏洞。
- **[CVE-2025-6021](https://www.suse.com/security/cve/CVE-2025-6021.html)**: 修复了 `xmlBuildQName()` 中的整数溢出问题，该问题可能导致栈缓冲区溢出。
- **[CVE-2025-6170](https://www.suse.com/security/cve/CVE-2025-6170.html)**: 处理了可能导致应用程序崩溃的栈缓冲区溢出漏洞。


**[apache2](https://httpd.apache.org/) 2.4.64**：

- **[CVE-2025-53020](https://www.suse.com/security/cve/CVE-2025-53020.html)**: 修复了 Apache HTTP Server 的 HTTP/2 实现中可能导致内存过度使用的拒绝服务漏洞。
- **[CVE-2025-49812](https://www.suse.com/security/cve/CVE-2025-49812.html)**: 解决了 `mod_ssl` 中的 TLS 升级攻击问题，该攻击可能危及加密连接。
- **[CVE-2025-49630](https://www.suse.com/security/cve/CVE-2025-49630.html)**: 修补了 `mod_proxy_http2` 中的拒绝服务问题。
- **[CVE-2025-23048](https://www.suse.com/security/cve/CVE-2025-23048.html)**: 修复了使用 TLS 会话恢复时 `mod_ssl` 中的访问控制绕过问题。
- **[CVE-2024-47252](https://www.suse.com/security/cve/CVE-2024-47252.html)**: 修正了 `mod_ssl` 错误日志中变量的不当转义问题。
- **[CVE-2024-43394](https://www.suse.com/security/cve/CVE-2024-43394.html)**: 解决了 Windows 上因对 UNC 路径处理不当导致的 SSRF 漏洞。
- **[CVE-2024-43204](https://www.suse.com/security/cve/CVE-2024-43204.html)**: 修复了使用 `mod_headers` 设置 `Content-Type` 头时出现的 SSRF 问题。
- **[CVE-2024-42516](https://www.suse.com/security/cve/CVE-2024-42516.html)**: 修补了 Apache HTTP Server 中的 HTTP 响应拆分漏洞。
- **[CVE-2025-54090](https://www.suse.com/security/cve/CVE-2025-54090.html)**: 修复了 Apache HTTP Server 2.4.64 中的逻辑缺陷。

建议用户更新到最新版本，以缓解这些漏洞带来的风险。

## 总结

7月，openSUSE Tumbleweed 延续了其为 Linux 桌面和基础设施栈带来强大改进的传统。从 `hwinfo` 之类的硬件工具，到由 KDE Plasma 6.4.3 驱动的桌面环境，再到 GStreamer 中的多媒体升级，以及 `sudo`、`bind` 和 `libxml2` 中以安全为重点的增强功能，这个滚动发布版本进一步巩固了其在尖端稳定性方面的声誉。随着数十个核心软件包中的关键 CVE 漏洞得到解决，用户不仅能享受到新功能，还能获得更坚固的安全性保障。

## Slowroll 的更新

请注意，上述更新同样适用于 [Slowroll](https://en.opensuse.org/Archive:Old_Slowroll_Page) 发行版，通常会在 Tumbleweed 快照发布后的 5 至 10 天 内推送。这一月度同步机制已稳定运行数月，能确保用户在获得可靠性的同时，也能及时接收功能与安全增强。Slowroll 的更新包会定期通过 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 发布公告。

## 为 openSUSE Tumbleweed 做贡献

您可以通过订阅 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 获取最新的快照更新信息。如果您希望参与贡献或深入技术讨论，该邮件列表是交流的核心平台。openSUSE 团队欢迎用户通过以下方式参与，包括提交错误报告、提出功能建议、参与社区讨论。

您的每一次反馈和贡献，都在帮助 Tumbleweed 变得更好。无论是报告错误、提出功能建议，还是参与社区讨论，您的参与都极具价值。

---
原文：[Tumbleweed Monthly Update - July 2025](https://news.opensuse.org/2025/08/01/tw-monthly-update-july/)，作者：Douglas DeMaio
