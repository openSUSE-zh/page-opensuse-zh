---
author: Poplar at twilight
date: 2024-11-30 07:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 十一月
image: /assets/posts/misc/new-tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[Tumbleweed] 在本月继续向一台运转良好的机器飞快奔驰着。风滚草在十一月更新了 [gtk4]、[php8]、[postgresql17][postgresql] 等关键软件包。除了这些关键更新外，风滚草还为 [mozjs128]、[postgresql]、[Firefox] 和 [OpenSC] 提供了重要的安全修复，解决了多个 CVE 问题，有助于增强系统的弹性。上个月推出的全新设计、焕然一新的徽标和日/夜主题壁纸继续增强了 Tumbleweed 的美感，而本月的更新则提高了功能性和安全性。

[OpenSC]: https://github.com/OpenSC/OpenSC/wiki
[mozjs128]: https://github.com/servo/mozjs

与往常一样，如果出现任何问题，请记住使用 [snapper] 进行回滚。

祝您在风滚草上玩得愉快！🦎

有关当月更改日志的更多详细信息，请访问 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- **[GTK4] 4.16.6 和 4.16.7**：
    - 最新版本减小了文本渲染中错误下划线的大小，使视觉更清晰；
    - 4.16.6 版本提供了一些修复，让用户体验更流畅；
    - [Wayland] 颜色管理现在是可选的，有助于避免与 [KWin] 的兼容性问题。用户可以通过设置 `GDK_DEBUG=color-mgmt` 来尝试此功能；
    - 改进包括防止在 `GtkText` 中插入时选择表情符号、根据 `GtkApplication` 中的应用程序 ID 设置默认窗口图标，以及增强 `GtkFontChooser` 使其对话框更具适应性；
    - 该版本还包括更新的翻译。
- **[postgresql] 17.2**：
    - 该软件包本月收到了两个更新，解决了影响与 `ResultRelInfo` 交互的扩展的 [ABI] 中断，并恢复了 `ALTER {ROLE|DATABASE} SET` 角色的功能。逻辑复制槽现在可以正确处理 `restart_lsn` 以避免向后移动；
    - 新版本现在防止了在 `pg_rewind` 过程中删除所需的 WAL 文件，并修复了共享统计条目的竞争条件；
    - 现在能正确计算 `contrib/bloom` 中的索引统计数据；
    - 该更新修复了由于 NFA 子图断开连接导致的正则表达式解析中的断言失败。
- **[gnutls] 3.8.8**：
    - 该软件包改进了[后量子加密]和[在线证书状态协议][OCSP]处理；
    - 在 TLS 1.3 中添加了对 [X25519MLKEM768][key] 和 [SecP256r1MLKEM768][key] 密钥交换算法的实验支持，以与最终的 [ML-KEM 标准]保持一致；
    - 此更新需要 [liboqs] 0.11.0 或更新版本；
    - 此外，该库现在还能验证 [OCSP] 响应中的所有记录，确保服务器证书与所有可用记录进行核对，而不是只核对第一条记录；
    - 改进了对格式错误的 `compress_certificate` 扩展的处理，使其更严格地符合 [RFC 8879] 合规性，用 `illegal_parameter` 代替了不正确的警报，并拒绝超长的扩展数据。
- **[KDE Plasma 6.2.3]**：
    - [Bluedevil] 改进了 PIN 输入行为；
    - [Breeze] 则解决了一个潜在的空指针问题；
    - [Discover] 更新了后端以兼容 [fwupd] 2.0.0，并修正了应用页面中的审查可见性；
    - [KWin] 获得了大量更新，包括对崩溃、色谱图泄漏、文件描述符处理和 HDR 亮度管理等问题的修复；
    - [Plasma Desktop] 修复了应用程序工具提示、任务管理器图标对齐、表情符号搜索等问题，并优化了活动管理；
    - [KPipeWire]、[KSystemStats] 和 [Powerdevil] 等其他组件分别改进了数据流处理、传感器稳健性和亮度调整；
    - [Plasma Mobile] 简化并清理了操作抽屉，增强了应用列表导航和搜索功能；
    - [Plasma Audio Volume Control] 可确保设备名称更新的准确性；
    - [Plasma Workspace] 则调整了注销屏幕行为、主题默认值和移动用户界面修复。
- **[KDE Gear 24.08.3]**：
    - [Elisa] 修复了某些平台上图标缺失的问题；
    - [K3b] 更正了翻录文件的文件模式分析，并删除了已弃用的 MusicBrainz 代码；
    - [KAccounts-Integration] 改进了日志记录，修复了悬空引用，并优雅地处理了丢失的文件；
    - [Kate] 解决了会话组保存、SQL 导出顺序等问题，并通过更新依赖关系在 openSUSE 上进行了构建；
    - [Kdenlive] 解决了多次崩溃问题，并改进了项目处理、代理生成和时间线管理；
    - [KIO-Extras] 增加了 WebP 缩略图支持；
    - [Kitinerary] 扩展了对多种运输服务的票据提取支持，并改进了对 Renfe 和 Agoda 格式的处理；
    - [Konsole] 修复了 OSC 颜色命令的问题。
- **[KDE Frameworks 6.8.0]**：
    - [Baloo] 现在可将 model/obj 和 text/rust 排除在索引之外；
    - [Breeze Icons] 增加了对 text/x-typst mimetype 图标的支持，并统一了索引主题以提高一致性；
    - 额外的 [CMake] 模块获得了 [Python] 绑定，并改进了对 [Qt6][Qt] 的静态支持；
    - [KIO] 改进了 http 处理、[KFilePlacesView] 中的大小调整以及整体用户体验；
    - [Kirigami] 解决了图标、主题和叠加的各种问题，提高了可用性；
    - [KTextEditor] 增强了会话还原和模板处理功能，并引入了全面的交换文件测试；
    - [Solid] 恢复了音频 CD 的媒体更改处理，并采用了 Linux 上的 [libmount] 以获得更好的功能；
    - 该版本还包括大量错误修复、静态构建的 CI 改进、Qt6 兼容性增强以及翻译更新。
- **[gnome-control-center 47.2]**：
    - 通过移除过多的 “屏幕” 标签，[GNOME] 用户的可访问性得到了改善；
    - 外观设置修复了意外重置重点颜色的问题；
    - 在应用程序部分解决了 [Lemory 泄漏]问题；
    - 色彩部分则确保在使用前连接了配置文件；
    - 打印机 “修复了 ”添加打印机" 按钮中不正确的工具提示；
    - 更新了翻译。
- **[ruby] 3.3.6**：
    - 此更新包括合并 JSON 2.7.2 和 reline 0.5.10，以及升级至 REXML 3.3.9；
    - 该版本解决了一些重大错误，如使用 `Data_Make_Struct` 时对象释放不当、Fiber 调度下 `IO#close` 功能损坏以及 Windows 下多字节路径名错误等；
    - 其他修复还涉及 `Float` 处理 ASCII 不兼容字符串的问题、`IO::Buffer` 操作中的内存管理问题，以及不同 Ruby 版本中 `instance_method` 行为的差异；
    - 该版本还修正了使用特定标志时损坏的 `RUBY_DESCRIPTION` 元数据，并改进了 `Process.warmup` 之后的哈希键检索。

[Lemory 泄漏]: https://en.wikipedia.org/wiki/Memory_leak
[gnome-control-center 47.2]: https://gitlab.gnome.org/GNOME/gnome-control-center
[KDE Frameworks 6.8.0]: https://kde.org/announcements/frameworks/6/6.8.0/
[KDE Gear 24.08.3]: https://kde.org/announcements/gear/24.08.3/
[KDE Plasma 6.2.3]: https://kde.org/announcements/plasma/6/6.2.3/
[后量子加密]: https://en.wikipedia.org/wiki/Post-quantum_cryptography
[OCSP]: https://en.wikipedia.org/wiki/Online_Certificate_Status_Protocol
[key]: https://datatracker.ietf.org/doc/draft-kwiatkowski-tls-ecdhe-mlkem/02/
[ML-KEM 标准]: https://csrc.nist.gov/pubs/fips/203/final
[liboqs]: https://github.com/open-quantum-safe/liboqs
[RFC 8879]: https://www.rfc-editor.org/rfc/rfc8879

## 关键包更新

- **[Mesa] 24.3.0**：
    - 该软件包引入了一个新的稳定版本，其中的更新增强了其图形功能并解决了安全性和构建问题；
    - 该版本更新了各种漏洞的补丁，包括 [CVE-2023-45913] 、 [CVE-2023-45919] 和 [CVE-2023-45922] ，同时合并了针对 [Python] 3.6 构建兼容性和其他调整的修复；
    - 删除了已弃用的选项（例如 `-Ddri3=enabled` 和 `-Ddri-search-path` 以简化构建配置；
    - [Vulkan] 1.3 现在通过 v3dv 在 Raspberry Pi 4 和 5 上得到支持；
    - [NVK] 驱动程序增加了对 `VK_EXT_descriptor_buffer`、`VK_KHR_dynamic_rendering_local_read` 和 `VK_KHR_pipeline_binary` 等重要扩展的支持；
    - [RADV] 添加了新功能，显着增强着色器支持；
    - 完整的详细信息可以在[发行说明]中获取。
- **[kernel-source] 6.11.8**：
    - [Linux 内核]的关键更新解决了虚拟套接字和 hyper-v 套接字初始化中的悬挂指针等问题；
    - 改进了对某些笔记本电脑上 AMD 音频的支持；
    - 修复了[英特尔]和 [AMD] 显卡驱动程序中的显示渲染和超时处理；
    - 更新解决了多个内存管理、文件系统和 USB 相关的 bug，包括 USB Type-C 和串行设备处理；
    - 对 Thunderbolt 连接、媒体设备解析以及 AMD 处理器的系统时钟管理和 platformance 功能进行了修复；
    - 对 [Btrfs] 文件系统的更新增强了子卷标记管理和配额处理。
- **[GStreamer] 1.24.9**：
    - 修复的问题包括更好地处理 `flvmux` 中的时间戳、`RTPManager` 关键帧管理以及增强的 `SRT` 和 `V4L2` 支持；
    - 更新优化了 `aggregator`、`playbin3` 和 `qtdemux`，提供了更广泛的格式和库兼容性。
- **[gpgme] 1.24.0**：
    - 该软件包带来了一些重要的增强和修复，包括现在支持直接文件输出的扩展解密和验证命令，加密和签名命令还允许从文件中读取输入数据；
    - 其他功能还包括改进了对指定撤销密钥的处理，为导入选项和处理所有签名等高级操作添加了新的上下文标志，并引入了一种更简便的方法来更改所有者信任以及启用或禁用密钥；
    - Qt 库现在支持 Qt5 和 Qt6 的同步构建，支持基于文件的加密和签名操作，同时为导入选项和附加分离签名提供更好的集成。
- **[gtk4] 4.16.3**：
    - 此更新增强了通过在 XDG 目录中搜索来处理默认光标主题的方式，以确保更好地兼容 [Wayland] 环境；
    - 默认光标大小现在与 gsettings 模式相匹配，可提供更一致的用户体验。改进了 portal 设置的回退流程，因为在切换到无 portal 设置的回退时，`settings_portal` 会被清除；
    - 此版本还更新了翻译。
- **[php8] 8.3.14**：
    - 修复了 DOM、GD 和 FFI 中的分段故障，Reflection 和 [OpenSSL] 中的[内存泄漏]，以及 SPL 和套接字中的使用后即释放漏洞；
    - 更新还解决了多个模块的溢出问题，如 `mbstring`、`streams` 和 `GMP`，从而更稳定、更安全地处理边缘情况；
    - 显着的安全改进包括 LDAP 中的越界写入补丁 [CVE-2024-8932]、MySQLnd 中的堆缓冲区过度读取 [CVE-2024-8929] 以及流中的 CRLF 注入漏洞 [CVE-2024-11234]。
- **[ibus] 1.5.31**：
    - 该版本包含对通用设置和 Wayland 环境的增强型 CI 支持，以及基于最新 Xorg 和 GTK 标准的编译密钥更新；
    - 该版本过渡到在 Wayland 中使用 `localectl` 进行 XKB 配置检索，从而增强了集成性；
    - 安全方面的改进包括更改 IBus 唯一名称，同时更新 XKB 引擎和 Unicode 类别，以确保更广泛的兼容性；
    - 该版本解决了各种问题，包括 X11 应用程序和游戏、表情符号处理、[Flatpak] 集成以及特定输入法（如 `m17n:sa:itrans`）中的预编辑行为。

[CVE-2024-11234]: https://www.suse.com/security/cve/CVE-2024-11234.html
[CVE-2024-8929]: https://www.suse.com/security/cve/CVE-2024-8929.html
[CVE-2024-8932]: https://www.suse.com/security/cve/CVE-2024-8932.html
[CVE-2023-45913]: https://www.suse.com/security/cve/CVE-2023-45913.html
[CVE-2023-45919]: https://www.suse.com/security/cve/CVE-2023-45919.html
[CVE-2023-45922]: https://www.suse.com/security/cve/CVE-2023-45922.html
[发行说明]: https://docs.mesa3d.org/relnotes/24.3.0

## 错误修复和安全更新

本月解决了几个关键的安全漏洞：

- **[Firefox] 132**：
    - [CVE-2024-10458]：通过嵌入或对象元素造成权限泄漏。
    - [CVE-2024-10459]：具有可访问性的布局中的释放后使用，可能导致可利用的崩溃。
    - [CVE-2024-10460]：外部协议处理程序提示的来源显示令人困惑。
    - [CVE-2024-10461]：由于在 multipart/x-mixed-replace 响应中忽略 Content-Disposition，导致 XSS。
    - [CVE-2024-10462]：权限提示的来源可能会被长 URL 欺骗。
    - [CVE-2024-10463]：某些情况下跨源视频帧泄漏。
    - [CVE-2024-10468]：IndexedDB 中的竞争条件可能会导致内存损坏和潜在可利用的崩溃。
    - [CVE-2024-10464]：历史记录接口可能会导致拒绝服务情况。
    - [CVE-2024-10465]：剪贴板“粘贴”按钮在选项卡中持续存在，从而允许潜在的欺骗攻击。
    - [CVE-2024-10466]：DOM 推送订阅消息可能会挂起 Firefox，导致其无响应。
    - [CVE-2024-10467]：修复了内存安全错误，可能会被利用来运行任意代码。
- **[php8] 8.3.14**：
    - [CVE-2024-8932]：LDAP 扩展的 ldap_escape 函数中出现越界访问。
    - [CVE-2024-8929]：MySQLnd 中的堆缓冲区过度读取可能会泄漏部分堆内容。
    - [CVE-2024-11233]：Streams 组件中存在允许通过代理配置进行潜在 CRLF 注入的问题。
    - [CVE-2024-11234]：Streams 组件中存在与 CRLF 注入相关的漏洞。
    - [CVE-2024-11236]：PDO DBLIB 和 PDO Firebird 引用程序中的整数溢出，导致越界写入。\
- **[opensc] 0.26.0**：
    - [CVE-2024-45615]：`libopensc` 和 `pkcs15init` 中未初始化的值可能会导致未定义的行为。
    - [CVE-2024-45616]：`libopensc` 中 APDU 响应值的错误检查或使用可能会导致值未初始化。
    - [CVE-2024-45617]：`libopensc` 中缺少或不正确的返回值检查可能会导致未初始化的值。
    - [CVE-2024-45618]：由于返回值处理不当 `pkcs15init` 中出现类似问题。
    - [CVE-2024-45619]：`libopensc` 中缓冲区或文件长度处理不当。
    - [CVE-2024-45620]： `pkcs15init` 中类似的缓冲区或文件长度处理问题。
    - [CVE-2024-8443]：密钥生成期间 OpenPGP 驱动程序中的堆缓冲区溢出。
- **[libsoup]**：
    - [CVE-2024-52531]：缓冲区溢出 `soup_header_parse_param_list_strict` 在使用 3.6.1 之前的 libsoup 版本的应用程序中进行 UTF-8 转换期间可能会发生这种情况。通过网络接收的输入无法触发此问题。
    - [CVE-2024-52532]：在 3.6.1 之前的 libsoup 版本中从客户端读取某些模式的 WebSocket 数据时，可能会出现无限循环和过多的内存消耗。
- **[mozjs128] 128.4.0**：
    - [CVE-2024-10458]：通过 `embed` 或 `object` 元素造成权限泄漏。
    - [CVE-2024-10459]：具有可访问性的布局中的释放后使用。
    - [CVE-2024-10460]：外部协议处理程序提示的来源显示令人困惑。
    - [CVE-2024-10461]：由于在 multipart/x-mixed-replace 响应中忽略 Content-Disposition，导致 XSS。
    - [CVE-2024-10462]：权限提示的来源可能会被长 URL 欺骗。
    - [CVE-2024-10463]：跨源视频帧泄漏。
    - [CVE-2024-10464]：历史记录接口可能会导致拒绝服务情况。
    - [CVE-2024-10465]：剪贴板“粘贴”按钮在选项卡中持续存在。
    - [CVE-2024-10466]：DOM 推送订阅消息可能会挂起 Firefox。
    - [CVE-2024-10467]：Firefox 132、Thunderbird 132、Firefox ESR 128.4 和 Thunderbird 128.4 中修复了内存安全错误
- **[postgresql17][postgresql] 17.1**：
    - [CVE-2024-10976]：对具有行级安全性的表进行不完整的跟踪可能会允许重复使用的查询访问意外的行。
    - [CVE-2024-10977]：SSL 或 GS​​S 协议协商期间的错误消息可能会被中间人欺骗。
    - [CVE-2024-10978]：不正确的权限分配可能允许权限较低的用户查看或修改意外的行。
    - [CVE-2024-10979]：在 PL/Perl 中，非特权数据库用户可以更改敏感的进程环境变量，从而可能导致任意代码执行。
- **[libssh2_org] 1.11.1**：
    - [CVE-2023-48795]：该漏洞可能导致握手和序列号处理不当，从而允许攻击者绕过完整性检查并降级某些 OpenSSH 扩展中的安全功能。
- **[Xen] 4.19.0_06**：
    - [CVE-2024-45818]：修复了 x86 HVM 标准 VGA 处理中的死锁。
    - [CVE-2024-45819]：仅运行 PVH 虚拟机的 x86 系统受到影响； HVM 和 PV 虚拟机不易受到攻击。libxl 工具堆栈可能会通过 ACPI 表将数据泄漏给 PVH 虚拟机。
- **[python-tornado6] 6.4.2**：
    - [CVE-2024-52804]：6.4.2 之前的 Tornado 版本中用于解析 HTTP cookie 的算法有时具有二次复杂度，导致解析恶意制作的 cookie 标头时 CPU 消耗过多。此解析发生在事件循环线程中，可能会阻塞其他请求的处理。 6.4.2版本修复了该问题

[CVE-2024-52804]: https://www.suse.com/security/cve/CVE-2024-52804.html
[python-tornado6]: https://www.tornadoweb.org/en/stable/
[CVE-2024-45818]: https://www.suse.com/security/cve/CVE-2024-45818.html
[CVE-2024-45819]: https://www.suse.com/security/cve/CVE-2024-45819.html 
[CVE-2023-48795]: https://www.suse.com/security/cve/CVE-2023-48795.html
[CVE-2024-10976]: https://www.suse.com/security/cve/CVE-2024-10976.html
[CVE-2024-10977]: https://www.suse.com/security/cve/CVE-2024-10977.html
[CVE-2024-10978]: https://www.suse.com/security/cve/CVE-2024-10978.html
[CVE-2024-10979]: https://www.suse.com/security/cve/CVE-2024-10979.html
[CVE-2024-10458]: https://www.suse.com/security/cve/CVE-2024-10458.html
[CVE-2024-10459]: https://www.suse.com/security/cve/CVE-2024-10459.html
[CVE-2024-10460]: https://www.suse.com/security/cve/CVE-2024-10460.html
[CVE-2024-10461]: https://www.suse.com/security/cve/CVE-2024-10461.html
[CVE-2024-10462]: https://www.suse.com/security/cve/CVE-2024-10462.html
[CVE-2024-10463]: https://www.suse.com/security/cve/CVE-2024-10463.html
[CVE-2024-10464]: https://www.suse.com/security/cve/CVE-2024-10464.html
[CVE-2024-10465]: https://www.suse.com/security/cve/CVE-2024-10465.html
[CVE-2024-10466]: https://www.suse.com/security/cve/CVE-2024-10466.html
[CVE-2024-10467]: https://www.suse.com/security/cve/CVE-2024-10467.html
[CVE-2024-52532]: https://www.suse.com/security/cve/CVE-2024-52532.html
[CVE-2024-52531]: https://www.suse.com/security/cve/CVE-2024-52531.html
[CVE-2024-45615]: https://www.suse.com/security/cve/CVE-2024-45615.html
[CVE-2024-45616]: https://www.suse.com/security/cve/CVE-2024-45616.html
[CVE-2024-45617]: https://www.suse.com/security/cve/CVE-2024-45617.html
[CVE-2024-45618]: https://www.suse.com/security/cve/CVE-2024-45618.html
[CVE-2024-45619]: https://www.suse.com/security/cve/CVE-2024-45619.html
[CVE-2024-45620]: https://www.suse.com/security/cve/CVE-2024-45620.html
[CVE-2024-8443]: https://www.suse.com/security/cve/CVE-2024-8443.html
[CVE-2024-8932]: https://www.suse.com/security/cve/CVE-2024-8932.html
[CVE-2024-8929]: https://www.suse.com/security/cve/CVE-2024-8929.html
[CVE-2024-11233]: https://www.suse.com/security/cve/CVE-2024-11233.html
[CVE-2024-11234]: https://www.suse.com/security/cve/CVE-2024-11234.html
[CVE-2024-11236]: https://www.suse.com/security/cve/CVE-2024-11236.html
[CVE-2024-10458]: https://www.suse.com/security/cve/CVE-2024-10458.html
[CVE-2024-10459]: https://www.suse.com/security/cve/CVE-2024-10459.html
[CVE-2024-10460]: https://www.suse.com/security/cve/CVE-2024-10460.html
[CVE-2024-10461]: https://www.suse.com/security/cve/CVE-2024-10461.html
[CVE-2024-10462]: https://www.suse.com/security/cve/CVE-2024-10462.html
[CVE-2024-10463]: https://www.suse.com/security/cve/CVE-2024-10463.html
[CVE-2024-10468]: https://www.suse.com/security/cve/CVE-2024-10468.html
[CVE-2024-10464]: https://www.suse.com/security/cve/CVE-2024-10464.html
[CVE-2024-10465]: https://www.suse.com/security/cve/CVE-2024-10465.html
[CVE-2024-10466]: https://www.suse.com/security/cve/CVE-2024-10466.html
[CVE-2024-10467]: https://www.suse.com/security/cve/CVE-2024-10467.html

## 结论

2024 年 11 月对于 Tumbleweed 来说又是一个辉煌的月份，因为它展示了其致力于提供具有一系列令人印象深刻的更新的最新软件的承诺。 Mesa、GTK4、KDE ​​Plasma、PostgreSQL 等的显着更新为滚动发布用户提供了最新的开源技术，以实现安全、强大的系统。

订阅 openSUSE Factory 邮件列表，随时了解最新快照。对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

## Slowroll 更新

请注意，这些更新也适用于 [Slowroll]，并且在 Tumbleweed 快照中发布后平均 5 到 10 天到达。这种按月更新的方式已经持续了好几个月，确保了用户的稳定性和及时的增强。

[Slowroll]: https://en.opensuse.org/openSUSE:Slowroll

## 为 openSUSE Tumbleweed 做出贡献

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - November 2024](https://news.opensuse.org/2024/11/29/tw-monthly-update-november/)，作者：Douglas DeMaio

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