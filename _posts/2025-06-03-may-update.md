---
author: Fangzhou Liu
date: 2025-06-03 22:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 5 月
image: /assets/posts/2025-05/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---
[openSUSE]() 的 [滚动发行版]() 以一次重大更新告别了过去的五月。该快照版本解决了多个 [常见漏洞和暴露问题](https://zh.wikipedia.org/wiki/公共漏洞和暴露)（CVE, Common Vulnerabilities and Exposures），整个五月期间还陆续推出了更多安全补丁。

五月更新带来了多项重要升级：[QEMU](https://www.qemu.org) 10.0 显著提升虚拟化性能，[KDE Plasma 6.3.5](https://kde.org/announcements/plasma/6/6.3.5/) 优化了用户界面体验，[GStreamer](https://gstreamer.freedesktop.org) 1.26.1 为桌面及嵌入式设备带来更流畅的多媒体播放。安全方面成为焦点，[OpenSSL](https://www.openssl.org) 3.5.0 新增后量子加密支持，内核更新修复了推测执行漏洞。无论开发者、系统管理员还是普通用户，五月的快照版本都为 Tumbleweed 用户提供了值得信赖的增强体验。

与过去一样，如遇问题，请务必使用 [snapper](https://github.com/openSUSE/snapper) 回滚系统。

欲了解本月完整更新日志，请访问 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)。

## 新功能和增强功能

**[QEMU](https://www.qemu.org) 10.0**：这是 openSUSE Tumbleweed 虚拟化技术的一次重大飞跃，将使桌面用户、开发人员和服务器管理员同样受益。此次更新通过为 virtio-scsi 添加多队列支持，使虚拟机能够通过跨多个线程分配任务来实现更好的 I/O 性能。英特尔 GPU 直通（VFIO）现在获得了更好的支持，帮助用户构建更强大的桌面虚拟机或具备硬件加速能力的开发环境。针对开发者和嵌入式爱好者，此次更新现在支持新的 [ARM](https://www.arm.com)、龙芯（LoongArch）、[RISC-V](https://riscv.org)、HPPA 架构主板和 CPU 功能。这其中包括支持了 ARM 的 EL2 计时器仿真，以及 `smrnmi`、`supm` 等新型 RISC-V 扩展指令集。QEMU 机器协议（QMP）文档经过全面重构，显著简化了自动化和脚本编写流程。此版本还修复了 GCC 15 的构建问题，并提高了 openSUSE 软件包的测试可靠性。特别对于运行 32 位主机的用户，务必检查 [已弃用的功能]()。

**[KDE Plasma 6.3.5](https://kde.org/announcements/plasma/6/6.3.5/)**：Plasma 的 [KWin](https://userbase.kde.org/KWin/zh-cn) 窗口管理器修复了崩溃问题、渲染问题、HDR 亮度控制、平板输入可靠性以及屏幕渐暗效果等关键问题。[Discover 软件中心](https://invent.kde.org/plasma/discover) 改进了更新信息的显示方式，修复了“仍在查找”指示器错误，使软件包检索体验更加流畅。通知气泡的边距和定位更加合理；天气组件现在对默认单位的支持更加精准一致；便签小程序不再因布局尺寸而显示异常；任务管理器的分组视觉效果更加稳定。此外，[Dolphin](https://apps.kde.org/dolphin/) 文件管理器修复了界面元素错位问题，Plasma Vaults 避免了构建错误，应用程序和小程序的色彩方案集成也采用了正确的样式，整体视觉风格更趋统一。

**[GStreamer](https://gstreamer.freedesktop.org) 1.26.1**：本次版本更新提升了媒体播放的稳定性，尤其在流媒体播放、字幕显示和摄像头输入方面。如果您使用 [GNOME](https://www.gnome.org) Videos、OBS 或基于 [PipeWire](https://pipewire.org) 的系统，此次更新意味着更少的崩溃和更流畅的性能。值得注意的修复包括：改进 H.264/H.265 格式的字幕处理、V4L2 解码的音视频同步、WebRTC 通话的稳定性、更好的 Matroska 和 MP4 格式支持，以及更精确的帧率检测。开发人员方面，Windows 平台的插件加载获得了优化，同时提升了与新版本 Python 和 GObject 的兼容性。此次更新全面提升了桌面端、浏览器和嵌入式设备的多媒体体验。

**[GIMP](https://www.gimp.org) 3.0.4**：本次更新修复了粘贴内容出现多余留白的剪贴板问题，并优化了多显示器断开或切换时的运行流畅度，从而显著加快了拥有大型字体库用户的启动速度。非破坏性滤镜工作流获得改进，撤销追踪功能更好，视觉伪影更少。KDE Wayland 用户将体验到修正后的图标渲染效果，同时通过针对 ZDI-CAN-26752 漏洞的补丁修复了 .ICO 文件支持问题。此外移除了两个已合并至上游的补丁，确保软件包保持精简与最新状态。

**[GNOME Music](https://apps.gnome.org/zh-CN/Music/) 48.0**：本次更新通过弃用特定的旧版兼容解决方案并增强 [GLib](https://gitlab.gnome.org/GNOME/glib) 集成，显著提升了现代 [Python](https://www.python.org) 环境的兼容性。虽然并非功能密集型更新，但修复了与内省机制相关的后端问题，确保在现行 openSUSE Tumbleweed 系统上实现更流畅的启动和更稳定的运行表现。

**[OpenSSL](https://www.openssl.org) 3.5.0**：本次重大更新全面强化了加密安全性，并为 openSUSE Tumbleweed 用户提供了现代化的 TLS 支持。`req`、`cms` 和 `smine` 等工具现已默认采用更强大的 `aes-256-cbc` 加密算法，取代了过时的 3DES 标准。此次更新改进了 TLS 配置，新增了对 [后量子密码学](https://zh.wikipedia.org/wiki/后量子密码学)（PQC, post-quantum cryptography）密钥交换方法（如 ML-KEM）的支持，为用户提供了比传统方法更快且面向未来的加密选项。该版本还引入了 QUIC 服务器支持（用于 HTTP/3 协议），这对开发低延迟或流媒体应用的开发者尤为重要。此次更新显著提升了系统整体的加密性能，增强了对现代网络协议的兼容性，并优化了默认加密方案。使用 cURL、Git 等安全工具或任何基于OpenSSL TLS 的应用时，用户不仅能获得更强的安全性，还能在新硬件上享受更低的 CPU 负载。

**[KDE Gear 25.04.1](https://kde.org/announcements/gear/25.04.1/)**：本次更新重点优化了系统稳定性和使用体验，显著提升了 [Dolphin](https://apps.kde.org/zh-cn/dolphin/)、[Kdenlive](https://kdenlive.org/zh-cn/) 和 [KDE Connect](https://kdeconnect.kde.org) 等核心应用的工作流顺畅度。Dolphin 文件管理器方面，通过优化主题样式和右键菜单，带来更简洁的文件管理体验。Kdenlive 视频编辑器上，修复了大量崩溃问题，优化界面布局，并调整了自动保存策略使其不再过于频繁触发。KDE Connect 上修复了媒体文件崩溃问题，同时改进了导航操作体验。

**[KDE Framworks 6.14.0](https://kde.org/announcements/frameworks/6/6.14.0/)**：本次更新全面优化了 KDE 生态的系统集成度、易用性及应用表现。开发者将受益于以下改进：[KArchive](https://community.kde.org/Frameworks) 中更安全的文件处理、[KIO](https://api.kde.org/frameworks/kio/html/index.html) 中拖放功能的增强、KColorScheme 对高对比度主题支持的优化以及 KGuiAddons 中更流畅的 Wayland 剪贴板操作。[Kirigami](https://develop.kde.org/frameworks/kirigami//) 获得了布局修复和滚动改进，而 [KWallet](https://github.com/KDE/kwallet) 引入了对 [KeePassXC](https://keepassxc.org) 密码管理器作为后端支持。语法高亮新增了语言定义，包括 ACPI 和 RISC-V 的更新。

## 关键软件包更新
**[GTK4](https://www.gtk.org) 4.18.5**：本次更新提升了整体桌面稳定性和响应速度。它解决了多个可能影响文件选择对话框、无障碍工具以及 XCompose 等输入法的崩溃和错误，为使用多语言输入或屏幕阅读器的用户提供了重要修复。针对Cairo模糊渲染的主要性能问题已得到解决，这对使用阴影、过渡效果或透明度的应用很有帮助。本次更新还优化了 [Epiphany](https://gitlab.gnome.org/GNOME/epiphany) 等应用程序及基于 [gtkmm](https://gtkmm.gnome.org/en/index.html) 构建应用的行为表现，使 GNOME 应用和自定义 GTK 工具的使用更加稳定流畅。

**[kernel-source](https://www.kernel.org) 6.14.6 和 6.14.5**：6.14.6 版本更新包含针对 [CVE-2024-28956](https://www.suse.com/security/cve/CVE-2024-28956.html) 漏洞的防护措施，这是一个新发现的现代英特尔 CPU 推测执行漏洞。本次更新引入了ITS（间接目标选择，Indirect Target Selection）缓解机制，确保在上下文切换期间更安全地处理返回和分支指令。同时新增了几项分支预测器强化改进，这些改进对使用 ARM64 硬件的嵌入式设备和容器尤为重要。一些惠普笔记本电脑静音指示灯存在的长期故障也得以解决。6.14.5 版本带来了新一轮的错误修复和驱动程序更新，以增强滚动发行版上的系统稳定性和兼容性。此更新解决了网络（MLX5、ENETC）、蓝牙和 CPU 频率调节等关键子系统中的边界情况崩溃、内存泄漏和设备兼容性问题。本次更新为图形用户带来了多项改进：通过英特尔 Xe 驱动调优和 DRM 修复，显著提升了图形性能与电源管理效率；同时持续扩展媒体硬件支持，新增了对多款新型相机传感器的兼容性。在文件系统方面，[Btrfs](https://archive.kernel.org/oldwiki/btrfs.wiki.kernel.org/) 和 [ceph](https://ceph.io/en/) 的修复增强了数据完整性，有效预防极端场景下的数据损坏风险。

**[curl](https://curl.se) 8.14.0**：本次更新修复了使用 wolfSSL 时影响 QUIC 证书验证的两个漏洞（CVE-2025-4947和CVE-2025-5025），完善了证书验证和固定机制。同时新增了对 OpenSSL 与 ngtcp2 组合的 QUIC 支持，并引入了`CURLOPT_SSL_SIGNATURE_ALGORITHMS` 等新的 TLS 选项。MQTT 连接现在会按间隔发送心跳，同时用户可禁用 WebSocket 的自动响应回复功能。这些改进既增强了 curl 的稳定性，也扩展了其对新兴网络协议的支持能力。

**[AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/) 1.0.5**：本次更新显著提升了软件中心和包管理器（如 GNOME  Software 和 Discover）的元数据显示能力，为用户呈现更丰富、更准确的软件信息。通过改进截图、图标和描述的验证与解析机制，帮助应用开发者确保其软件列表展示更精美且符合统一标准。Tumbleweed 用户将体验到以下改进：软件列表的视觉呈现更加一致、应用商店的运行更加稳定，以及软件仓库中的元数据质量提升。

**[fwupd](https://fwupd.org) 2.0.9**：本次显著提升了固件更新的可靠性并扩展了硬件兼容性，对于依赖安全无缝固件管理的 openSUSE 滚动发行版用户而言，这是一个重要升级。关键改进包括：增强了对 UEFI 密钥交换密钥（KEK, Key Exchange Key）和签名数据库（db）更新的支持，现在支持一次性安装多个证书，这对维护安全启动完整性至关重要。针对开发者和高级用户，`fwupdtool` 工具现在提供了更详细的 JSON 输出和更好的 Redfish 协议处理能力，同时确保隐藏设备和备份设备不会被错误更新。这些改进全面提升了系统稳定性，扩展了设备支持范围，使得跨桌面和服务器环境的固件更新管理更加可靠。

**[gpg2](https://gnupg.org) 2.5.6**：此版本修复了前一版本中签名误判问题，该问题将已撤销或过期密钥的签名误分类为 “缺失”，导致查看已签名文件或电子邮件的用户感到困惑。另一项重要修复是解决了在无签名缓存模式下运行时可能出现的崩溃问题（双重释放错误）。新功能包括：支持左锚定子字符串过滤器（便于编写密钥列表脚本）、新增 `--quick-tsign-key` 命令用于快速创建信任签名、以及在密钥生成时新增 `User-Id` 选项以简化自定义流程。此外还增强了智能卡支持，改进了证书选择和卡片检测功能，特别是针对 P15 卡的支持。

**[sqlite](https://www.sqlite.org/index.html) 3.49.2**：该版本修复了自 3.40.0 版本引入的 NOT NULL 优化可能触发的罕见内存错误，确保了更安全的查询执行。本次更新还修复了使用视图的 DISTINCT 查询以及涉及 UNIQUE 约束与 IN 运算符的边界情况，这些问题可能导致复杂数据库架构中出现错误查询结果。依赖 `generate_series()` 函数的用户将获得更好的稳定性，同时小幅度的构建改进也提升了该软件的可移植性。

**[thunar] 4.20.3**：文件管理器现在会在永久删除文件前发出警告，增加了一层关键保护。得益于多个内存泄漏和子菜单错误的修复，文件管理器现在能更可靠地处理用户自定义操作（UCAs），特别是在涉及子菜单时。在 Wayland 环境下，弹出式菜单现在能正确运作，不再会意外保持打开状态。此次更新还修复了与列表视图和属性对话框相关的崩溃问题，改进了对 exFAT 文件系统的文件处理能力，并优化了搜索期间状态栏的更新机制。

**[PiprWire] 1.4.4**：本次更新恢复了与旧版 1.2 风格 MIDI 的兼容性，并修复了影响 `mpv` 等工具的功能退化问题。同时增强了与 libcamera 的集成，确保 GStreamer 中视频和多媒体处理更流畅。使用 MIDI 设备的用户将受益于改进的 UMP 和 ALSA 音序器支持，包括更好的 SysEx 和程序变更处理能力。NetJACK2 网络音频现在通过优化的驱动/管理器角色和错误管理变得更加可靠。

## 错误修复和安全更新
本月修复了多个关键安全漏洞，涉及的 [通用漏洞披露问题](https://zh.wikipedia.org/wiki/公共漏洞和暴露) 包括：

### 安全更新
**[libsoup](https://gitlab.gnome.org/GNOME/libsoup)**
- **[CVE-2025-32914](https://www.suse.com/security/cve/CVE-2025-32914.html)**：该越界读取漏洞可能被恶意 HTTP 客户端利用触发内存访问错误，进而导致系统崩溃。
- **[CVE-2025-32907]()**：修复了因重复 HTTP 范围请求导致的内存过度占用问题，避免部分系统资源耗尽。
- **[CVE-2025-46421]()**：修复了 HTTP 重定向时 Authorization 头信息泄露问题，防止凭证暴露给第三方主机。
- **[CVE-2025-4969:]()**：修复了 curl 的 `dynbuf` API 中可能引发数据损坏或崩溃的缓冲区溢出漏洞。
- **[CVE-2025-4476]()**：修复了 curl 中 `setopt` 选项的凭据处理缺陷，避免凭据跨请求泄露。
- **[CVE-2025-4948]()**：修复了 curl 在使用 wolfSSL 复用连接时可能绕过 `CURLOPT_SSL_VERIFYPEER` 验证的问题。

**[cyrus-imapd](https://www.cyrusimap.org/)**
- **[CVE-2025-23394](https://www.suse.com/security/cve/CVE-2025-23394.html)**：修复了 `cyradm` 中由于调用子 shell 命令时未能正确转义 shell 字符而导致的潜在权限提升问题。

**[Mozilla Firefox](https://www.mozilla.org/zh-CN/) 138.0**
- **[CVE-2025-2817](https://www.suse.com/security/cve/CVE-2025-2817.html)**：修复了 Firefox 更新程序中的权限提升漏洞，该漏洞曾允许执行 SYSTEM 级操作。
- **[CVE-2025-4082](https://www.suse.com/security/cve/CVE-2025-4082.html)**：修复了 macOS 上 WebGL 着色器属性中的内存损坏漏洞。
- **[CVE-2025-4083](https://www.suse.com/security/cve/CVE-2025-4083.html)**：修复了通过跨源框架中的 `javascript:` 链接绕过进程隔离的漏洞。
- **[CVE-2025-4085](https://www.suse.com/security/cve/CVE-2025-4085.html)**：解决了通过 UITour 组件可能导致的信息泄露和权限提升漏洞。
- **[CVE-2025-4086](https://www.suse.com/security/cve/CVE-2025-4086.html)**：通过构造文件名，在下载提示中隐藏了文件扩展名以防止误导用户。
- **[CVE-2025-4087](https://www.suse.com/security/cve/CVE-2025-4087.html)**：修复了 XPath 解析过程中不安全属性访问的问题。
- **[CVE-2025-4088](https://www.suse.com/security/cve/CVE-2025-4088.html)**：防止了通过 Storage Access API 重定向引发的跨站请求伪造（CSRF）攻击。
- **[CVE-2025-4089](https://www.suse.com/security/cve/CVE-2025-4089.html)**：修复了开发者工具中“复制为 cURL”功能存在的本地代码执行风险。
- **[CVE-2025-4090](https://www.suse.com/security/cve/CVE-2025-4090.html)**：修复了 Android 版 Firefox 中通过日志输出导致的库路径泄露问题。
- **[CVE-2025-4091](https://www.suse.com/security/cve/CVE-2025-4091.html)**：在 Firefox 138、Thunderbird 138 及其 ESR 版本中修复了多个内存安全相关的缺陷。
- **[CVE-2025-4092](https://www.suse.com/security/cve/CVE-2025-4092.html)**：在 Firefox 138 和 Thunderbird 138 中进行了额外的内存安全修复。版本 [138.0.1](https://www.mozilla.org/en-US/firefox/138.0.1/releasenotes/) 和 [138.0.4](https://www.mozilla.org/en-US/security/advisories/mfsa2025-36/) 中增加了更多修复内容。

**[curl](https://curl.se/) 8.14.0**
- **[CVE-2025-4947](https://www.suse.com/security/cve/CVE-2025-4947.html)**：修复了 libcurl 中在使用 QUIC 协议连接 IP 地址时存在的证书验证不当问题。
- **[CVE-2025-5025](https://www.suse.com/security/cve/CVE-2025-5025.html)**：解决了 libcurl 在使用 QUIC 协议并配合 [wolfSSL](https://github.com/wolfssl/wolfssl) 时缺少证书锁定（Certificate Pinning）的问题。

**[389-ds](https://www.port389.org/)**
- **[CVE-2025-3416 ](https://www.suse.com/security/cve/CVE-2025-3416.html)**：修复了 OpenSSL 在某些函数中处理 `properties` 参数时使用已释放内存的漏洞。该漏洞可能导致未定义行为或属性解析错误，甚至可能使 OpenSSL 将输入错误地视为空字符串。

**[gpg2](https://gnupg.org/index.html) 2.5.6**
- **[CVE-2025-30258](https://www.suse.com/security/cve/CVE-2025-30258.html)**：修复了 GnuPG 2.5.5 之前版本中存在一个验证过程中的拒绝服务（DoS）漏洞。

**[kernel-source](https://www.kernel.org) 6.14.8**
- **[CVE-2024-28956](https://www.suse.com/security/cve/CVE-2024-28956.html)**：修复了 x86 平台间接目标选择（ITS, Indirect Target Selection）相关的多个漏洞，包括分支预测行为异常和未对 RSB 填充实施缓解措施的问题。

**[iputils](https://github.com/iputils/iputils)**
- **[CVE-2025-47268](https://www.suse.com/security/cve/CVE-2025-47268.html)**：修复了 `ping` 命令中的整数溢出漏洞，该漏洞可能导致处理特制 ICMP 回显应答数据包时引发拒绝服务。

**[open-vm-tools](https://github.com/vmware/open-vm-tools/releases) 12.5.2**
- **[CVE-2025-22247](https://www.suse.com/security/cve/CVE-2025-22247.html)**：解决了不安全文件处理缺陷，该缺陷允许客户虚拟机上的本地攻击者篡改文件，可能导致权限提升。

**[nbdkit](https://gitlab.com/nbdkit) 1.42.3**
- **[CVE-2025-47712](https://www.suse.com/security/cve/CVE-2025-47712.html)**：修复了一个漏洞，该漏洞允许低权限用户通过资源耗尽导致部分拒绝服务。
- **[CVE-2025-47711](https://www.suse.com/security/cve/CVE-2025-47711.html)**：修复了不当输入处理问题，可能导致资源耗尽或系统不稳定，从而引发拒绝服务。
- **[CVE-2024-7383](https://www.suse.com/security/cve/CVE-2024-7383.html)**：修复了 TLS 连接未能正确验证 NBD 服务器证书的问题，可能允许中间人攻击。

**[webkit2gtk3](https://webkitgtk.org/) 2.48.2**：
- **[CVE-2025-24223](https://www.suse.com/security/cve/CVE-2025-24223.html)**：修复了 WebKit 在处理恶意构造的网页内容时可能出现的内存损坏问题。
- **[CVE-2025-31204](https://www.suse.com/security/cve/CVE-2025-31204.html)**：解决了 WebKit 中因恶意网页内容触发的内存损坏漏洞。
- **[CVE-2025-31205](https://www.suse.com/security/cve/CVE-2025-31205.html)**：修复了 WebKit 中因安全检查不足导致的跨源数据泄露问题。
- **[CVE-2025-31215](https://www.suse.com/security/cve/CVE-2025-31215.html)**：解决了 WebKit 在处理恶意网页内容时可能导致进程意外崩溃的漏洞。

**[grub2](https://www.gnu.org/software/grub/)**：
- **[CVE-2025-4382](https://www.suse.com/security/cve/CVE-2025-4382.html)**：修复了 GRUB 基于 TPM 的自动解密功能在文件系统故障后可能仍将 LUKS 磁盘解密数据保留在内存中的问题。攻击者可通过物理访问强制进入救援模式，从而获取未加密数据。

**[mozjs128](https://github.com/servo/mozjs) 128.10.1**：
- **[CVE-2025-4920](https://www.suse.com/security/cve/CVE-2025-4920.html)**：修复了 Firefox 在解析 Promise 对象时可能发生的越界访问漏洞。
- **[CVE-2025-4921](https://www.suse.com/security/cve/CVE-2025-4921.html)**：修复了 Firefox 在线性求和优化过程中可能发生的越界访问漏洞。

**[OpenSSL](https://www.openssl.org)**：
- **[CVE-2025-4575](https://www.suse.com/security/cve/CVE-2025-4575.html)**：修复了 OpenSSL 3.5 中 `openssl x509` 的 `-addreject` 选项错误地将证书标记为受信任（而非拒绝）的问题。

**[postgresql17](https://www.postgresql.org) 17.5**：
- [CVE-2025-4207](https://www.suse.com/security/cve/CVE-2025-4207.html)：修复了 PostgreSQL 在 GB18030 编码检查中的缓冲区越界读取漏洞，该漏洞可能导致拒绝服务。

**[python313](https://www.python.org)**：
- **[CVE-2025-4516](https://www.suse.com/security/cve/CVE-2025-4516.html)**：修复了 CPython 中可能导致内存损坏的释放后重引用（use-after-free）漏洞。

建议用户尽快更新至最新版本以防范上述安全风险。

## 总结
五月的 Tumbleweed 更新展现了其强大能力，集性能优化、界面改进与关键安全修复于一体。QEMU 10 扩展了硬件支持并提升虚拟机性能，OpenSSL 3.5 通过现代化加密默认配置显著改善了日常 Linux 使用体验。本月 OpenSSL 3.5 引入的后量子加密（PQC）技术更是一项重大进步。KDE Gear 25.04.1 为 Dolphin 和 Kdenlive 等核心应用带来了更高的稳定性，确保工作流程流畅直观。Thunar 文件管理器也迎来实用改进，包括更安全的文件删除功能和更好的 Wayland 兼容性。多媒体用户则受益于 GStreamer 和 GTK 的优化。AppStream 1.0.5 改进了软件包管理器和应用商店的元数据显示方式，使软件列表更清晰、信息更丰富。SQLite 3.49.2 和 gpg2 2.5.6 的更新修复了可能影响脚本执行、密钥管理或数据库可靠性的边界场景问题。这些滚动更新切实提升了用户体验，再次证明 Tumbleweed 始终如一地为开发者和高级用户提供持续、前沿的软件更新。

## Slowroll 的更新

请注意，上述更新同样适用于 [Slowroll](https://en.opensuse.org/Archive:Old_Slowroll_Page) 发行版，通常会在 Tumbleweed 快照发布后的 5 至 10 天 内推送。这一月度同步机制已稳定运行数月，能确保用户在获得可靠性的同时，也能及时接收功能与安全增强。Slowroll 的更新包会定期通过 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 发布公告。

## 为 openSUSE Tumbleweed 做贡献

您可以通过订阅 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 获取最新的快照更新信息。如果您希望参与贡献或深入技术讨论，该邮件列表是交流的核心平台。openSUSE 团队欢迎用户通过以下方式参与，包括提交错误报告、提出功能建议、参与社区讨论。

您的每一次反馈和贡献，都在帮助 Tumbleweed 变得更好。无论是优化稳定性、增强功能，还是改进用户体验，社区的力量始终是推动 openSUSE 持续进步的关键。

---
原文：[Tumbleweed Monthly Update - May 2025](https://news.opensuse.org/2025/06/02/tw-monthly-update-may/)，作者：Douglas DeMaio
