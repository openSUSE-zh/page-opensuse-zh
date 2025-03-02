---
author: Poplar at twilight
date: 2025-03-02 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 2 月
image: /assets/posts/misc/new-tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[Tumbleweed] 在本月发布了多个快照和一系列更新，其中包括二月中旬对一个重要的默认设置的变更以及 3D 图形库 [Mesa] 的一个大版本更新。[GIMP] [3.0.0~RC3] 整合了 [GTK] 3.24.48，似乎已接近正式发布。[KDE Plasma 6.3] 增强了分数缩放功能，引入了精致的缩放效果，并全面修改了绘图板设置。 同时，[KDE Gear 24.12.2] 改进了可用性，[gdb 15.2] 提高了调试效率，[fwupd] 增强了固件更新处理。其他值得注意的更新包括 [postgresql] 17.3、[Ruby] 3.4.2 和 [OpenSSL] 3.4.1 的关键安全修复。

[3.0.0~RC3]: https://www.gimp.org/news/2025/02/10/gimp-3-0-RC3-released/
[KDE Plasma 6.3]: https://kde.org/announcements/plasma/6/6.3.0/
[KDE Gear 24.12.2]: https://kde.org/announcements/changelogs/gear/24.12.2/
[gdb 15.2]: https://www.gnu.org/software/gdb/
[fwupd]: https://fwupd.org/

与往常一样，如果出现任何问题，请记住使用 [snapper] 进行回滚。

祝您在风滚草上玩得愉快！🦎

有关当月更改日志的更多详细信息，请访问 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- [Mesa] 25.0：
    - 该版本在 `radv/gfx8+` 上引入了 Vulkan 1.4 支持，并为 `panvk` 引入了多个新的 Vulkan 扩展，包括 `VK_KHR_dedicated_allocation`、`VK_KHR_global_priority`、`VK_KHR_multiview`、`VK_KHR_shader_float16_int8`、`VK_EXT_image_robustness` 等。
    - 为 `radv` 添加了 GFX12 (RDNA4) 初始支持。
    - 对 `radv`、`anv` 和 `panvk` 进行了性能优化，提高了不同应用程序的稳定性。
    - 其他修复还改善了 [Wayland] 和 [X11] 的兼容性，纠正了视频解码问题，并解决了影响各种游戏和工作负载的[内存泄漏]问题。
- [GIMP 3.0.0~RC3][3.0.0~RC3]：
    - 最新的 RC 版完成了 GTK 3.24.48 集成，解决了 Wayland 中的崩溃问题，并改进了 RTL（Right-To-Left）文本渲染。
    - 图像图形增强功能防止了不必要的位深度转换，从而保留了非破坏性编辑的细节。
    - 线程安全投影修正消除了[多线程]冲突造成的崩溃。
    - Script-Fu API 引入了新的命名参数语法，使脚本更灵活、更易读。
    - GIMP 发布了官方 [AppImage] 软件包，确保为 Linux 用户提供干净、上游支持的软件包。
    - GEGL 优化完善了滤镜和浮点运算。 目前，GIMP 3.0 只剩下少量的错误修复，即将发布。
- [KDE Plasma 6.3]：
    - Plasma 6.3 改进了窗口管理器和 Wayland 混成器 KWin 中的分数缩放功能，以提供更清晰的视觉效果，并使元素与像素网格对齐。缩放效果提供了完美的像素放大效果，并带有网格叠加，这对设计师来说非常有用。
    - 绘图板设置通过手写笔压力曲线调整和更好的校准进行了重大调整。
    - 系统监视器改进了 CPU 跟踪功能，同时减少了资源使用；其信息中心现在可以显示 GPU 详情和电池周期计数。
    - 应用程序商店 [Discover] 通过突出显示沙盒应用程序中的权限更改来增强安全性，天气部件则增加了 [Deutscher Wetterdienst] 作为数据源。
    - 易用性方面的调整包括为鼠标用户自动禁用触摸板、重组启动器菜单，以及改进的启动行为（仅在点击时切换类别）。
    - 自定义选项扩展了面板克隆、可编写脚本的不透明度调整和灵活的启动器图标。
- [gdb] 15.2：
    - 此主要版本更新改善了后台 DWARF 读取的启动性能，并完善了调试功能，引入了针对丢失的调试处理程序和线程管理的新命令。
    - GDB 现在可以生成稀疏的（sparse）内核文件，提供更好的错误信息，并支持可配置的低层级（inferior）函数调用超时。
    - `GDBserver` 简化了调试选项，新的 Python API 函数增强了脚本功能。 
    - 本次更新还淘汰了与 MPX 相关的命令，并改进了现有命令，使其更加清晰和一致。
- [fwupd]：
    - 此更新引入了新功能，如用于设置 nmbl cmdline 的 `fwupdtool efiboot-hive`、改进的 `fwupdmgr` 中的抑制原因处理，以及 USB 提供的 DS-20 描述符 [hidraw] 支持。
    - 错误修正包括在 MSI 硬件上正确部署 dbx、联想版本解析修正、改进的罗技 HID++ 检测和性能优化。
    - 此外，还增加了对使用 Redfish 的 HPE Gen10/Gen10+ 设备的支持，以及对未来 Huddly 设备的更好处理和更可靠的罗技 Rallybar 更新。
- [KDE Frameworks 6.11.0]:
    - Frameworks 6.11.0 通过传播失败原因和减少 `m_env` 的手动管理，改进了 Baloo 的数据库处理。
    - [Breeze] 图标引入了 12x12 版本的打开链接图标，并将关闭图标更新为黑色 X 符号。
    - KConfig 现在可从 Windows 注册表中读取默认值，并改进了嵌套组值的处理。
    - [Kirigami] 改进了 SwipeListItem 的键盘导航功能，并修复了 ActionsMenu 中的深嵌套问题。
    - [KIO] 解决了文件属性中的符号链接路径解析问题，并增强了文件对话框的撤销行为。
    - [KTextEditor] 改进了书签循环，并完善了主题配置边距。
    - KSVG 增强了呈现缓存线程的安全性。
    - KWallet 则删除了未使用的函数，使代码库更加精简。
- [KDE Gear 24.12.2]：
    - KDE 的 [Dolphin] 改进了图标缩放和叠加处理。
    - [Kdenlive] 则修复了崩溃、增强了效果堆叠并提高了渲染进度的可见性。 
    - [KMail] 和 [Kontact] 简化了账户管理，防止删除账户时出现重复条目。 
    - [KTrip] 和 [KWeather] 可清理未使用的字符串，带来更流畅的移动体验。 
    - [Kate] 确保了正确的选择处理并修复了搜索匹配导出。
    - [Okular] 可防止带有大量选择字段的表单挂起，并能正确响应调色板的更改。
- [postgresql] 17.3：
    - 此更新涉及各种安全修复和性能改进。
    - 一个关键的安全修复加强了 `PQescapeString` 和相关函数中的编码验证，以防止潜在的 SQL 注入风险。
    - 连接权限检查和限制现在可对并行工作者正确执行。
    - 一些错误修复提高了数据库的稳定性，包括防止真空操作（vacuum operation）中的目录损坏、修复并行查询中的竞赛条件以及解决意外事务错误。
    - 其他增强功能包括改进了对 SQL/JSON 析取的处理，提高了 `UNION` 查询中的校对一致性，并优化了 VACUUM 和索引。
- [Ruby] 3.4.2：
    - Ruby 主要修复了 `ripper` 中的分段错误、`-ne` 中的堆栈一致性错误以及 `Array#sum` 和 `Numeric` 子类中的意外行为。
    - 解决了 `prism` 和 `parse.y` 中的解析问题，包括递归深度不一致和处理未命名的转发变量。
    - 其他修复包括改进了与 [GCC] 15 的兼容性，修正了 `Module#autoload?` 性能、`TCPSocket` 错误处理，并确保了 `ENV.inspect` 编码的一致性。
    - 此外，还向前移植了针对 ARM64 的 TLS 修正，并解决了各种语法不一致的问题。
- [wireplumber] 0.5.8：
    - 本次更新在 [ALSA] 监视器中引入了对处理 UCM SplitPCM 节点的支持，并改进了通过环回进行的 PipeWire 通道重映射。
    - 新功能可将 `WpSpaDevice` 子对象标记为待处理，从而加强了对异步创建的环回节点的处理。
    - 改进了 ALSA 节点名称重复数据删除功能，避免了不必要的 `.2` 和 `.3` 后缀。
    - 修复的问题包括解决用户界面中重复的蓝牙 `SCO (HSP/HFP)` 源，纠正设备环回节点的流恢复行为，以及解决 `wp_lua_log_topic_copy()` 中的问题。
    - 此外，还更新了测试脚本，以提高对象识别的一致性。
- [python-cryptography] 44.0.0：
    - 这一重大 [pypi] 更新放弃了对低于 3.9 版本的 [LibreSSL] 的支持，并弃用了 Python 3.7，该版本将在今后的版本中删除。
    - Linux wheels 现在使用 [OpenSSL] 3.4.0 编译。
    - 该更新执行了 RFC 5280 规则，防止空扩展密钥使用扩展，允许提取 `MultiFernet` 的时间戳，并放宽了对根 CA 证书的授权密钥标识符要求。
    - 在使用 OpenSSL 3.2.0+ 时，新增了对 `Argon2id` KDF 的支持，以及对 `Admissions` 证书扩展的支持。
    - 此外，现在还通过新的解密函数支持 PKCS7 解密，包括 S/MIME 3.2。
- [python-pyOpenSSL] 25.0.0：
    - 此重大 pypi 更新删除了已废弃的 API，包括 `CRL`、`Revoked`、`dump_crl` 和 `load_crl`，并将 CRL 功能过渡到 `cryptography.x509`。`sign` 和 `verify` 函数已被移除，转而使用 `cryptography.hazmat.primitives.asymmetric` 签名 API。
    - 已废弃的功能包括 `OpenSSL.rand`（使用 `os.urandom()` 代替）、`X509Extension` 和椭圆曲线函数。
    - 未来将计划弃用 `X509` 和 `PKey` 对象，鼓励用户迁移到 `cryptography.x509.Certificate` 和加密私钥。
    - 更新还为 `get_certificate` 和相关函数引入了 `as_cryptography` 参数，允许返回 `cryptography.x509.Certificate` 对象。

[AppImage]: https://www.gimp.org/news/2025/02/10/gimp-3-0-RC3-released/#appimage-is-now-official
[python-pyOpenSSL]: https://pypi.org/project/pyOpenSSL/
[python-cryptography]: https://pypi.org/project/cryptography/
[gdb]: https://www.gnu.org/software/gdb/
[KWeather]: https://apps.kde.org/kweather/
[KTrip]: https://apps.kde.org/ktrip/
[Kontact]: https://apps.kde.org/kontact/
[KDE Frameworks 6.11.0]: https://kde.org/announcements/plasma/6/6.2.5/
[hidraw]: https://docs.kernel.org/hid/hidraw.html
[Deutscher Wetterdienst]: https://www.dwd.de/
[多线程]: https://en.wikipedia.org/wiki/Thread_(computing)#Single-threaded_vs_multithreaded_programs

## 关键软件包更新

- [Kernel] 6.13.4、6.13.3 和 6.13.2：
    - 这些更新包括多个子系统的各种修复和改进。
    - 它解决了 Btrfs 中的问题，包括 lockdep splat 修复和更好地处理事务中止。
    - 安全改进涉及 x86 SRSO 对 VM-Exit 丢失 `IBPB` 的缓解、`winwing` 和 `thrustmaster` 的 HID 设备处理修复以及多个 `pinctrl` bug 修复。 
    - 更新还完善了 DRM 和 AMD 显示组件，改进了 HDMI、DSC 直通和背光怪异现象。
    - 其他修复还改进了调度程序、IRQ 处理、日志记录和文件系统稳定性。
    - 各种 DRM 桥接器、面板和连接器更新增强了 ELD 处理和同步功能。
    - 其他增强功能还改进了 safesetid 策略检查、WiFi 驱动程序和特定设备优化。
- [curl] 8.12.1：
    - 此更新包含多种安全修复，如解决主机间密码泄露、HSTS 缓存条目覆盖和 eventfd 双关闭漏洞。
    - 增强功能包括支持 PKCS#11 密钥、使用 GnuTLS 的 QUIC 0RTT、改进的 HTTP 身份验证跟踪，以及针对连接重用的扩展错误处理。
    - 显著的错误修复涉及 TLS 升级问题、DNS 解析改进、HTTP 重试处理以及跨多个协议的性能优化。
- [selinux-policy] 20250211：
    - 此更新[将 SELinux 设置为所有新安装的默认 Linux 安全模块] (LSM)。虽然 [AppArmor] 仍然可用，但 SELinux 在新安装（包括 minimalVM 变体）时将默认为强制执行模式。 SELinux 更新将在未来几周内继续完善实施。
- [sdbootutil]：
    - 此更新引入了对 PCR 15 测量的改进，包括验证服务和 crypttab 变更预测功能。
    - 更新还改进了使用 FIDO2 密钥时的加密设备排序，并删除了 `grubenv` 中的 `.conf` 后缀。
    - 其他修复还可确保在 `/etc/crypttab` 丢失时生成器行为正确，并改进了 PCR 验证的日志输出。
- [GStreamer] 1.24.12：
    - 本次更新解决了 `d3d12` 中的着色器编译故障，并修正了 `decklinkvideosink` 中的帧速率处理。
    - `gst-libav` 模块现在可避免音频编码器在输入数据对齐不足时崩溃，并恢复了与 FFmpeg 4.2 的兼容性。
    - 其他修复包括改进了 `oggdemux` 中的寻道和持续时间处理、`tsdemux` 中的 PTS 包裹检测，以及 macOS 上 `vtdec` 中的竞赛条件修复。
    - 对 `qtdemux` 进行了增强，以更好地支持矩阵转换和翻转，而 `webrtc` 现在可以在使用 RTX 和多个视频编解码器时防止重复的有效载荷类型。
    - 此外，还对 `wpe`、`x264enc` 和` win32-pluginoader` 进行了改进，并修复了各种内存泄漏和稳定性问题。
- [XFSProgs] 6.13.0：
    - 此更新引入了重大改进，包括增强了对实时卷、配额处理和元数据目录的支持。
    - `xfs_repair` 增加了对元数据目录中配额节点的支持，而 `xfs_scrub` 则使用直方图加速了第 8 阶段的处理。
    - 其他修复涉及错误报告、设备编码和实时分配组的并发性改进。
    - 各种构建、文档和工具增强功能进一步完善了 XFS 生态系统。
- [kdump] 2.0.16：
    - 此更新通过修复 `KDUMP_AUTO_RESIZE` 提高了可靠性，解决了崩溃转储大小调整中的问题。
    - 此更新还解决了 `dracut` 中的一个关键绑定配置错误，该错误曾导致 kdump initrd 出现网络故障。该问题源于对绑定设备参数的不当解析，其中 MAC 地址的冒号会导致错误。修复后，kdump 可以正确过滤掉有问题的绑定密钥，防止解析失败。

[XFSProgs]: https://xfs.wiki.kernel.org/
[sdbootutil]: https://software.opensuse.org/package/sdbootutil
[selinux-policy]: https://github.com/SELinuxProject
[将 SELinux 设置为所有新安装的默认 Linux 安全模块]: https://news.opensuse.org/2025/02/13/tw-plans-to-adopt-selinux-as-default/

## 错误修复和安全更新

本月解决了几个关键的安全漏洞。本月的 [CVE] 有：

- [qemu]：
    - [CVE-2023-2861]：修正了 9p 直通文件系统 (9pfs) 实现中的一个缺陷，该缺陷可能允许恶意客户端通过在共享文件夹中创建并打开设备文件来逃避导出的 9p 树。
- [curl]：
    - [CVE-2024-11053]：修复了结合 HTTP 重定向使用 `.netrc` 文件时的凭证泄漏问题。
    - [CVE-2024-9681]： 解决了一个问题，即 HSTS 子域条目可能会覆盖父域缓存条目，从而导致不正确的 HTTPS 执行。
    - [CVE-2025-0665]： 解决了 `eventfd` 的双关闭漏洞，该漏洞可能导致未定义的行为或应用程序崩溃。
- [emacs]：
    - [CVE-2025-1244]： 有关此 CVE 的详细信息目前不可用。 有关最新信息，请参阅 [Emacs 官方新闻页面]。
- [OpenSSL] 3.4.1：
    - [CVE-2024-12797]： 修正了使用 RFC7250 原始公开密码匙 (RPK) 的用户端可能侦测不到伺服器验证失败的问题，这可能导致 TLS/DTLS 连线受到中间人攻击。
    - [CVE-2024-13176]：ECDSA 签署计算中的时序侧信道漏洞可能让攻击者复原私人密匙。这主要影响 NIST P-521 曲线，需要本地访问或高速、低延迟的网络连接才能利用。
    - [CVE-2024-9143]：修复了低级 GF(2^m) 椭圆曲线 API 中的越界内存访问问题，该问题可能导致内存损坏或崩溃。
- [postgresql] 17.3:
    - [CVE-2025-1094]： 修正了 `psql` 交互式工具中的一个 SQL 注入漏洞，该漏洞由某些函数中引号语法的不当中和引起。
- [ffmpeg]：
    - [CVE-2025-22921]： 解决了 jpeg2000dec.c 中的分段违规问题，防止了潜在的崩溃。
    - [CVE-2025-22919]： 修正了处理伪造的 AAC 文件时的可达断言，减轻了拒绝服务风险。
    - [CVE-2025-0518]：解决了允许远程验证攻击者执行任意代码的基于堆栈的缓冲区溢出。
    - [CVE-2025-25473]：修正了允许远程验证攻击者执行任意命令的多个漏洞： 修正了多个漏洞，使通过验证的远程攻击者能够执行任意命令。 
    - [CVE-2024-12361]： 解决了证书数据处理中可能导致拒绝服务的漏洞。
- [grub2]：
    - [CVE-2024-45781]： 修正 UFS 档案系统中的 `strcpy` 溢出。
    - [CVE-2024-56737]: 解决了 HFS 文件系统中基于堆的缓冲区溢出。
    - [CVE-2024-45782]： 解决了 HFS 文件系统中的 `strcpy` 溢出。
    - [CVE-2024-45780]： 修正了 TAR/CPIO 处理中的溢出问题。
    - [CVE-2024-45783]： 修正 HFS+ 文件系统中的引用计数溢出。
    - [CVE-2025-0624]: 修正网路开机过程中的越界写入问题。
    - [CVE-2024-45774]： 解决了 JPEG 解析器中的堆溢出问题。
    - [CVE-2024-45775]： 解决了 `extcmd` 解析器中的 NULL 检查缺失问题。
    - [CVE-2025-0622]：修复了 `command/gpg` 模块卸载期间处理钩子时的 “use-after-free ”问题。
    - [CVE-2024-45776]： 修正了 `.MO` 文件处理中的溢出。
    - [CVE-2024-45777]： 修正 `gettext` 函数的整数满溢。
    - [CVE-2025-0690]： 解决了一个整数溢出问题，该问题可通过 `read` 命令导致越界写入。
    - [CVE-2025-1118]: 确保在 GRUB 处于锁定模式时阻止 `dump` 命令。
    - [CVE-2024-45778]：从可锁定模块中移除 BFS 文件系统。
    - [CVE-2024-45779]： 修正了 BFS 档案系统的堆叠满溢。
    - [CVE-2025-0677]： 解决了在 UFS 中处理符号链接时导致越界写入的整数溢出。
    - [CVE-2025-0684]： 解决在 ReiserFS 中处理 symlink 时，导致越界写入的整数满溢。
    - [CVE-2025-0685]: 修正在 JFS 处理 symlink 时，导致越界写入的整数满溢。
    - [CVE-2025-0686]： 更正在 ROMFS 处理交点连结时，导致越界写入的整数满溢。
    - [CVE-2025-0689]： 修正 UDF 中基于堆的缓冲记忆体满溢，可能导致任意程式码执行。
    - [CVE-2025-1125]：修复在 HFS 档案系统中导致越界写入的整数满溢。
    - [CVE-2025-0678]: 解决了 SquashFS 中一个导致越界写入的整数溢出。
- [libtasn1] 4.20.0：
    - [CVE-2024-1213]：修正了处理特定证书数据效率低下的问题，攻击者可利用该问题发送特制证书，导致拒绝服务攻击。
- [libxml2] 2.13.6:
    - [CVE-2025-24928]： 修正了 `xmlSnprintfElements` 函数中基于堆栈的缓冲区溢出，该漏洞可在对不信任文档进行 DTD 验证时被利用，导致拒绝服务或代码执行。
    - [CVE-2024-56171]： 解决了 `xmlSchemaIDCFillNodeTables` 和 `xmlSchemaBubbleIDCNodeTables` 函数中的使用后即释放漏洞，该漏洞在处理伪造的 XML 文档或模式时可能导致任意代码执行。 
    - [CVE-2025-27113]： 解决了 `xmlPatMatch` 函数中的取消引用 NULL 指针问题，该问题可能会在处理某些输入时导致应用程序崩溃。
- [gnutls] 3.8.9：
    - [CVE-2024-12243]： 解决了一个缺陷，即解码某些 DER 编码证书可能导致过多的资源消耗，从而导致拒绝服务情况。
- [mozjs128] 128.7.0:
    - [CVE-2025-1009]： 修复了 XSLT 中的一个使用后即释放漏洞，该漏洞可能导致崩溃。
    - [CVE-2025-1010]：解决了自定义高亮 API 中的一个使用后即释放问题，该问题可能导致崩溃。
    - [CVE-2025-1011]： 解决了 WebAssembly 代码生成中的一个 Bug，该 Bug 可导致崩溃和可能的代码执行。
    - [CVE-2025-1012]： 修复了并发去齐平过程中的释放后使用问题，该问题可能会导致崩溃。
    - [CVE-2024-11704]： 修正了 PKCS#7 解密处理中的一个潜在双重释放漏洞。
    - [CVE-2025-1013]： 解决了私人浏览标签页可能在正常浏览窗口中打开，从而导致潜在隐私泄漏的问题。
    - [CVE-2025-1014]： 修正了添加到证书存储时证书长度检查不当的问题。 
    - [CVE-2025-1016]： 解决了多个内存安全漏洞，这些漏洞有可能被利用来运行任意代码。
    - [CVE-2025-1017]： 解决了浏览器引擎中存在的其他内存安全漏洞。
- [webkit2gtk3]： 
    - [CVE-2025-24143]： 修复了一个漏洞，当处理恶意制作的网页内容时，该漏洞可能导致任意代码执行。
    - [CVE-2025-24150]： 解决了访问恶意网站可能导致地址栏欺骗的问题。 
    - [CVE-2025-24158]： 解决了一个内存损坏问题，该问题可能允许攻击者执行任意代码。
    - [CVE-2024-24162]： 修正了处理恶意制作的网页内容可能导致执行任意代码的漏洞。
- [Python311]:
    - [CVE-2025-0938]： 修正了 `urllib.parse` 函数中不正确的 URL 解析，该函数接受带方括号的无效域名，可能导致安全问题。
- [PAM-PKCS] 0.6.13:
    - [CVE-2025-24032]： 修正了一个问题，即攻击者可使用用户的公共证书和已知 PIN 创建令牌，从而无需私钥即可进行未经授权的登录。
    - [CVE-2025-24531]：解决了使用智能卡登录时在错误情况下可能出现的身份验证绕过问题。
- [krb5]：
    - [CVE-2025-24528]：解决了一个漏洞，在该漏洞中，通过身份验证的攻击者可导致 kadmind 将写入内容超出映射区域的末端，从而导致潜在的安全风险。

建议用户更新至最新版本，以缓解这些漏洞。

[grub2]: https://www.gnu.org/software/grub/
[CVE-2025-24143]: https://www.suse.com/security/cve/CVE-2025-24143.html
[CVE-2025-24150]: https://www.suse.com/security/cve/CVE-2025-24150.html
[CVE-2025-24158]: https://www.suse.com/security/cve/CVE-2025-24158.html
[CVE-2024-24162]: https://www.suse.com/security/cve/CVE-2024-24162.html
[CVE-2025-0938]: https://www.suse.com/security/cve/CVE-2025-0938.html
[PAM-PKCS]: https://software.opensuse.org/package/pam_pkcs11?locale=en
[CVE-2025-24032]: https://www.suse.com/security/cve/CVE-2025-24032.html
[CVE-2025-24531]: https://www.suse.com/security/cve/CVE-2025-24531.html
[krb5]: https://kerberos.org/
[CVE-2025-24528]: https://www.suse.com/security/cve/CVE-2025-24528.html
[CVE-2024-12243]: https://www.suse.com/security/cve/CVE-2024-12243.html
[mozjs128]: https://spidermonkey.dev/
[CVE-2025-1009]: https://www.suse.com/security/cve/CVE-2025-1009.html
[CVE-2025-1010]: https://www.suse.com/security/cve/CVE-2025-1010.html
[CVE-2025-1011]: https://www.suse.com/security/cve/CVE-2025-1011.html
[CVE-2025-1012]: https://www.suse.com/security/cve/CVE-2025-1012.html
[CVE-2024-11704]: https://www.suse.com/security/cve/CVE-2024-11704.html
[CVE-2025-1013]: https://www.suse.com/security/cve/CVE-2025-1013.html
[CVE-2025-1014]: https://www.suse.com/security/cve/CVE-2025-1014.html
[CVE-2025-1016]: https://www.suse.com/security/cve/CVE-2025-1016.html
[CVE-2025-1017]: https://www.suse.com/security/cve/CVE-2025-1017.html
[CVE-2024-1213]: https://www.suse.com/security/cve/CVE-2024-12133.html
[libtasn1]: https://www.gnu.org/software/libtasn1/manual/libtasn1.html
[CVE-2025-24928]: https://www.suse.com/security/cve/CVE-2025-24928.html
[CVE-2024-56171]: https://www.suse.com/security/cve/CVE-2024-56171.html
[CVE-2025-27113]: https://www.suse.com/security/cve/CVE-2025-27113.html
[libxml2]: https://gitlab.gnome.org/GNOME/libxml2
[CVE-2023-2861]: https://www.suse.com/security/cve/CVE-2023-2861.html
[CVE-2024-11053]: https://curl.se/docs/CVE-2024-11053.html
[CVE-2024-9681]: https://curl.se/docs/CVE-2024-9681.html
[CVE-2025-0665]: https://curl.se/docs/CVE-2025-0665.html
[CVE-2025-1244]: https://www.suse.com/security/cve/CVE-2025-1244.html
[Emacs 官方新闻页面]: https://www.gnu.org/software/emacs/news/
[CVE-2024-12797]: https://www.suse.com/security/cve/CVE-2024-12797.html
[CVE-2024-13176]: https://www.suse.com/security/cve/CVE-2024-13176.html
[CVE-2024-9143]: https://www.suse.com/security/cve/CVE-2024-9143.html
[CVE-2025-1094]: https://www.suse.com/security/cve/CVE-2025-1094.html
[CVE-2025-22921]: https://www.suse.com/security/cve/CVE-2025-22921.html
[CVE-2025-22919]: https://www.suse.com/security/cve/CVE-2025-22919.html
[CVE-2025-0518]: https://www.suse.com/security/cve/CVE-2025-0518.html
[CVE-2025-25473]: https://www.suse.com/security/cve/CVE-2025-25473.html
[CVE-2024-12361]: https://www.suse.com/security/cve/CVE-2024-12361.html
[CVE-2024-45781]: https://www.suse.com/security/cve/CVE-2024-45781.html
[CVE-2024-56737]: https://www.suse.com/security/cve/CVE-2024-56737.html
[CVE-2024-45782]: https://www.suse.com/security/cve/CVE-2024-45782.html
[CVE-2024-45780]: https://www.suse.com/security/cve/CVE-2024-45780.html
[CVE-2024-45783]: https://www.suse.com/security/cve/CVE-2024-45783.html
[CVE-2025-0624]: https://www.suse.com/security/cve/CVE-2025-0624.html
[CVE-2024-45774]: https://www.suse.com/security/cve/CVE-2024-45774.html
[CVE-2024-45775]: https://www.suse.com/security/cve/CVE-2024-45775.html
[CVE-2025-0622]: https://www.suse.com/security/cve/CVE-2025-0622.html
[CVE-2024-45776]: https://www.suse.com/security/cve/CVE-2024-45776.html
[CVE-2024-45777]: https://www.suse.com/security/cve/CVE-2024-45777.html
[CVE-2025-0690]: https://www.suse.com/security/cve/CVE-2025-0690.html
[CVE-2025-1118]: https://www.suse.com/security/cve/CVE-2025-1118.html
[CVE-2024-45778]: https://www.suse.com/security/cve/CVE-2024-45778.html
[CVE-2024-45779]: https://www.suse.com/security/cve/CVE-2024-45779.html
[CVE-2025-0677]: https://www.suse.com/security/cve/CVE-2025-0677.html
[CVE-2025-0684]: https://www.suse.com/security/cve/CVE-2025-0684.html
[CVE-2025-0685]: https://www.suse.com/security/cve/CVE-2025-0685.html
[CVE-2025-0686]: https://www.suse.com/security/cve/CVE-2025-0686.html
[CVE-2025-0689]: https://www.suse.com/security/cve/CVE-2025-0689.html
[CVE-2025-1125]: https://www.suse.com/security/cve/CVE-2025-1125.html
[CVE-2025-0678]: https://www.suse.com/security/cve/CVE-2025-0678.html

## 结论

通过最新的 KDE Gear、Frameworks 和 Plasma 更新，KDE 用户将获得更完美、更高效的体验。 除了可见的改进之外，Tumbleweed 还继续加强其基础，为 curl、mozjs128、grub2 和 PostgreSQL 提供了重要的安全补丁，并通过 libxml2 优化了 XML 处理。 这些持续的改进确保了 Tumbleweed 对开发者和用户来说仍然是一个可靠、高性能的开源平台。

## Slowroll 更新

请注意，这些更新也适用于 [Slowroll]，并且通常会在 Tumbleweed 快照发布后平均 5 到 10 天内到达。这种按月发布的方式已经持续多个月，确保了用户的稳定性和及时的增强功能。

## 为 openSUSE Tumbleweed 做出贡献

订阅 openSUSE Factory 邮件列表，随时了解最新快照。对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - February 2025](https://news.opensuse.org/2025/02/27/tw-monthly-update-february/)，作者：Douglas DeMaio

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