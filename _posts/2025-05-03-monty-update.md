---
author: Poplar at twilight
date: 2025-05-03 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 4 月
image: /assets/posts/2025-05/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[滚动发行版](https://en.opensuse.org/Portal:Tumbleweed) Tumbleweed 在四月持续增强，通过交付多个快照为游戏玩家、开发者和其他用户带来了更多实用功能。

本月的重点亮点包括，Tumbleweed 用户受益于 [OpenSSH 10.0p2](https://www.openssh.com/) 带来的主要安全提升，其特点是更快、抗量子攻击的密钥交换和改进的会话性能。开发者将注意到 [GDB 16.3](https://www.sourceware.org/gdb/) 更智能的多线程调试和更好的跟踪工具带来的更流畅的工作流程，而游戏玩家和多媒体用户将看到 [Mesa 25.0.4](https://docs.mesa3d.org/relnotes/25.0.4) 和 [FFmpeg 7.1.1](https://www.ffmpeg.org/) 中的关键修复带来的增强的 GPU 性能和稳定性。通过 [SBC 2.1](https://git.kernel.org/pub/scm/bluetooth/sbc.git) 和新的 [kernel-firmware-sound 20250408](https://www.kernel.org/) 更新，音频在更多设备上的可靠性得到了提高。同时，[KDE Gear 25.04.0](https://kde.org/announcements/gear/25.04.0/)、[GTK4 4.18.3](https://www.gtk.org/) 以及 [iproute2 6.14](https://git.kernel.org/pub/scm/network/iproute2/iproute2.git) 和 [rsyslog 8.2502](https://www.rsyslog.com/) 等系统软件包的重大更新带来了增强日常桌面、服务器和开发环境的改进。此外，[Mozilla Firefox 137.0](https://www.mozilla.org/)、[PHP 8.4.5](https://www.php.net/)、[OpenVPN 2.6.14](https://openvpn.net/) 和 [Python 3.13.3](https://www.python.org/) 也修复了众多安全漏洞。

与往常一样，如果出现任何问题，请务必使用 [snapper](https://github.com/openSUSE/snapper) 进行回滚。

祝您在风滚草上玩得愉快！🦎

有关本月更改日志的更多详细信息，请访问 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)。

### 新功能和增强功能
**[OpenSSH](https://www.openssh.com/) 10.0p2**：此主要版本为所有 openSUSE Tumbleweed 用户带来了重要的安全、稳定性和性能更新。它删除了对过时的 DSA 算法的支持，默认情况下使 SSH 连接更加安全，并引入了使用 mlkem768x25519-sha256 的更快、抗量子攻击的密钥交换。对于桌面和服务器用户，得益于有利于 AES-GCM 的密码改进，SSH 会话现在更快、更高效。开发者将受益于新的灵活配置选项，例如会话类型匹配和环境变量扩展。此次更新还通过修复转发设置问题和重构 SSH 守护进程以减少登录后的攻击面来增强安全性。日常远程访问、文件传输和自动化工作流程将更加安全、稍微更快，并为未来的加密标准做好准备。

**[GDB](https://www.sourceware.org/gdb/) 16.3**：新主要版本更新改进了 openSUSE Tumbleweed 上开发者的调试精度、性能和集成。更智能的线程特定断点减少了调试大型多线程应用程序时的开销。对带标记指针的监视点（例如英特尔的 LAM (线性掩码)）的支持意味着可以更好地处理现代 CPU 特性。使用英特尔处理器跟踪的新跟踪选项使得在指令级别分析程序更加容易。ARM 用户受益于改进的内存标记扩展 (MTE) 调试支持。此版本还扩展了 Python 脚本 API 并改进了调试适配器协议 (DAP) 集成，帮助 GDB 更无缝地融入现代开发工具和工作流程。总体而言，对于任何使用复杂应用程序或最新硬件的人来说，这是一个可靠的更新。

**[SBC ](https://git.kernel.org/pub/scm/bluetooth/sbc.git) 2.1** 另一个主要更新带来了重要的底层音频处理改进。SBC (Subband Codec) 广泛用于蓝牙音频，此更新修复了在非 x86 硬件（例如基于 ARM 的设备）上运行时出现的关键问题，并确保在禁用 SSE CPU 优化时具有更好的稳定性。虽然普通用户不会立即注意到差异，但这使得蓝牙音频在更多系统上更加可靠，尤其适用于较新的笔记本电脑、台式机和 ARM 主板。开发者也受益于更清晰的构建和更好的跨平台支持。

**kernel-firmware-sound 20250408**：此更新添加了对两个 [MediaTek](https://www.mediatek.com/) 芯片（MT8195 和 MT8188）的新 Sound Open Firmware (SOF) 支持。这意味着在使用这些芯片组的基于 MediaTek 的新设备上，音频硬件兼容性和支持得到了改进。

**[xz](https://tukaani.org/xz/) 5.8.1**：命令行工具和实用程序包带来了性能改进和关键安全修复。多线程 `.xz` 解码器现在可以正确处理导致崩溃的无效输入。还修复了一个性能错误，以确保在某些场景下解压缩期间使用所有线程。对于使用 SSE2 的系统（例如使用 musl libc 的 x86），在某些情况下，解压缩速度可显着提高，最高可达 15%。此次更新还提高了 64 位 PowerPC 和 [RISC-V](https://riscv.org/) 处理器上的编码器速度，并为 RISC-V、[ARM64](https://www.arm.com/) 和 [x86_64](https://en.wikipedia.org/wiki/X86-64) 上的 BCJ 过滤器添加了低级 [应用程序编程接口](https://en.wikipedia.org/wiki/API) 访问。在 Linux 上，`xz` 现在使用 `fsync()` 安全地同步输出文件，然后再删除输入文件，如果您想跳过此行为，可以使用新的 `--no-sync` 选项。

**[rsyslog](https://www.rsyslog.com/) 8.2502**：此维护版本改进了稳定性、更好的错误处理和对更新平台的支持。此次更新修复了转发模块 (`omfwd`) 中的多线程问题，通过更优雅地处理 [OpenSSL](https://www.openssl.org/) 和 [gnutls](https://www.gnutls.org/) 握手改进了 TLS 支持，并添加了 `socketBacklog` 设置以调整 TCP 监听器行为。还包括对 Kafka 日志记录和 SNMP 支持的改进。该软件包现在还支持在最新的 C23 标准下构建，这使得该项目与现代编译器工具链保持同步。

**[tigervnc](https://tigervnc.org/) 1.15.0**：此软件包为查看器和服务器添加了多项可用性改进。您现在可以在原生查看器中使用鼠标后退和前进按钮，并使远程桌面导航更流畅。剪贴板重定向已添加到 `x0vncserver` 中， allowing您可以在本地系统和远程桌面之间复制和粘贴。原生查看器现在会在重新连接时记住您的用户名和密码，从而节省了重复会话的时间。当服务器光标隐藏时，原生和 Java 查看器都可以显示标准箭头光标，从而更容易看到指针的位置。最后，`vncpasswd` 现在可以使用 `pwquality` 检查密码强度，从而增强安全性。

**[ffmpeg](https://www.ffmpeg.org/) 7.1.1**：音频解码现在更加健壮，提供了针对 WAV 文件解析中溢出的保护以及对无效 DVD 视频包的更好处理。时间码计算已得到改进，以避免与 FPS 相关的溢出。MJPEG 解码器现在禁止不支持的渐进式 Bayer 图像，并且分段 MP4 (mov) 文件中的音频包不再被错误地标记为关键帧。[OpenVINO](https://github.com/openvinotoolkit/openvino) 支持已禁用，以简化 openSUSE Factory 的依赖关系。

**[harfbuzz](https://github.com/harfbuzz/harfbuzz) 11.0.1 和 11.1.0**：版本 11 的第一个次要版本通过恢复最近对 `trak` 跟踪行为的更改来恢复兼容性，现在在整形期间而不是直接应用。它提高了整形性能，改进了字形渲染（例如在字体层进行四舍五入扩展和加粗），并增加了对原始 CFF/CFF2 CharStrings 的实验性访问。此 [CLI](https://en.wikipedia.org/wiki/Command-line_interface) 工具现在返回有意义的错误代码，并附带可选的 [manpages](https://manpages.opensuse.org/)。11.1.0 版本通过默认包含双向 (bidi) 镜像变体来改进字体子集化，这有助于确保更好地渲染从右到左的脚本。如果需要，新标志允许禁用此功能。该版本还包括常规错误修复、构建改进和测试套件增强功能。

**[cups](https://www.cups.org/) 2.4.12**：此版本现在使用 [GnuTLS](https://www.gnutls.org/) 遵守系统范围的加密策略，并添加了一个选项 (`NoSystem`) 以选择退出。用户在安全 IPP 打印 (IPPS) 遇到证书问题时会看到更清晰的警报，并且调度程序现在会在后端失败时记录详细的调试历史记录。错误修复解决了安装失败期间潜在的作业丢失、改进的 PPD 选项解析以及更好的 IPP 关键字验证。

### 关键软件包更新

**[kernel-source](https://www.kernel.org/) 6.14.4 和 6.14.3**：6.14.4 版本是 [Linux Kernel](https://www.kernel.org/) 的一个小型维护更新，修复了几个内存泄漏，提高了 Wi-Fi 和蓝牙稳定性，并解决了 SCSI、RAID 和声卡驱动程序的问题。网络可靠性得到了增强，特别是对于 [IPv6](https://en.wikipedia.org/wiki/IPv6) 和 [Open vSwitch](https://www.openvswitch.org/) 用户。此版本还为英特尔 IGC 网络、块设备处理以及诸如 Rockchip CAN 和 [AMD](https://www.amd.com/en) 图形等设备的硬件特定改进带来了一些有针对性的修复。6.14.3 更新为某些 Qualcomm 设备提供了蓝牙可靠性改进，而英特尔和 VirtIO 等图形驱动程序中的修复解决了闪烁和内存泄漏问题。网络在 ethtool 和 TLS 等驱动程序中得到了更强大的处理，这有利于依赖低延迟连接的服务器管理员和游戏设置。开发者和高级用户受益于更好的跟踪工具和内存管理修复，从而减少了调试过程中出现细微错误的几率。

**[systemd](https://freedesktop.org/wiki/Software/systemd/) 257.5**：此维护更新改进了文档和测试行为。它修复了 `pstore.conf` 和 `coredump.conf` 模板的位置引用，这对于管理系统崩溃或转储的管理员非常重要。它还通过使用副本而不是符号链接来调整默认网络配置的网络测试。

**libxmlb 0.3.22**：此版本改进了文件完整性检查和 XML 导出可靠性。此版本添加了保护措施来检测文件截断和格式错误的字符串表，从而防止在使用 `.xmlb` 二进制 XML 文件时潜在的崩溃或数据损坏。对于开发者，现在支持使用 `COLLAPSE_EMPTY` 功能导出 XML，并且更加健壮，尤其是在处理空元素或筒仓时。这些改进有助于确保使用 libxmlb 的工具（如 GNOME Software）更可靠地处理 XML 元数据。

**[GTK4](https://www.gtk.org/) 4.18.3**：此更新通过修复边距、双击选择和死键处理来改进文本编辑。此次更新解决了启用行号时输入法显示不正确位置的回归问题。它还通过防止文本溢出来改进移动设备上的菜单行为，并确保窗口大小调整始终有效。通过修复与可访问性关系相关的错误，可访问性稳定性得到了改进。列视图和列表框小部件现在可以更可靠地处理测量和选择。GTK Inspector 现在会记住会话之间的一些用户界面状态。在 [Wayland](https://wayland.freedesktop.org/) 上运行时，一些内部修复减少了警告并改进了内存管理。该版本还包括文档更新和刷新后的翻译。

**[Mesa](https://www.mesa3d.org/) [25.0.4](https://docs.mesa3d.org/relnotes/25.0.4)**：此错误修复更新改进了多个 GPU 和游戏的性能和稳定性。[AMD](https://www.amd.com) 用户使用 GFX8/Polaris 显卡将在 Elden Ring 等游戏中看到更好的性能，并且已解决了 RDNA3 (gfx1201) 上 [The Last of Us Part I](https://en.wikipedia.org/wiki/The_Last_of_Us_Part_I) 中的 GPU 挂起问题。继续支持 Vulkan 1.4，为现代游戏带来更流畅的渲染和兼容性改进。修复还解决了 Satisfactory 中的视觉故障、Intel Battlemage (BMG) 上的渲染错误以及 Vulkan swapchain 处理中的内存泄漏。

**[KDE Gear 25.04.0](https://kde.org/announcements/gear/25.04.0/)**：此版本带来了改进的可访问性、从右到左的语言支持、更安全的文件操作、使用 [Okular](https://okular.kde.org/) 进行数字签名，以及 KWave 和 [Kdenlive](https://kdenlive.org/en/) 等创意工具中更好的性能。它还包括对 Mastodon 客户端 [Tokodon](https://apps.kde.org/tokodon/) 等社交媒体应用程序的增强功能，支持预定帖子和内容过滤器，并引入了旅行、生产力和系统工具中的有用新功能。

**[curl](https://curl.se/) 8.13.0**：此版本现在支持使用 OpenSSL/quictls 的 TLS 1.3 早期数据，在 rustls 中添加了带有 DoH 的 ECH 支持，并引入了用于 IMAP 上传的 `--upload-flags`。您还可以从文件中加载 URL，并访问新的写入变量，例如 `tls_earlydata`。众多错误修复改进了 HTTP/2 处理、OpenSSL 兼容性和 SSH 文件传输。

**[fwupd](https://fwupd.org/) 2.0.8**：此 DBus 接口上的超薄层库通过两个新插件添加了对更新 UEFI 签名数据库和 KEK 的支持，并且现在将更新后的 UEFI db 作为设备 HSI 属性的一部分进行报告。此次更新提高了与 UEFI 系统的兼容性，并修复了与 EFI 路径、非 Supermicro 系统上的 Redfish 检测以及 JSON 模式行为相关的错误。它还确保在支持 UEFI 的架构上更安全的固件更新，并增强对某些设备协议的支持。

**[iproute2](https://git.kernel.org/pub/scm/network/iproute2/iproute2.git) 6.14**：此版本添加了用于高级网络设置的新功能，包括在 `ip route` 和 `ip rule` 中支持 IPv6 流标签，通过 `ip monitor maddress` 监控多播地址，以及通过以十进制格式显示 [Multipath Transmission Control Protocol](https://www.mptcp.dev/) 子流序列计数器来提高 `ss` 的可读性。

**[selinux-policy](https://github.com/SELinuxProject) 20250410**：此更新提供了一个修复，允许从终端 (TTY) 登录 Podman 容器，解决了某些用户在使用交互式会话时遇到的问题。它还引入了 CI 流水线中 RPM 构建的测试。已包含一个解决方法来解决 `semodule` 删除的持续问题，等待更永久的修复 (PED-12491)。

**[python313](https://www.python.org/) 3.13.3**：此更新捆绑了 libexpat 等库以提高安全性，修复了影响子进程处理、套接字和 gzip 文件的多个错误，并在极少数情况下纠正了崩溃和资源泄漏。重要的安全改进包括更安全的电子邮件头处理和更好的临时文件行为。

### 错误修复和安全更新

本月修复了几个关键安全漏洞。本月的 [常见漏洞和暴露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures) 包括：

#### 安全更新

**[Mozilla Firefox](https://www.mozilla.org) 137.0**：

- **[CVE-2025-3028](https://www.suse.com/security/cve/CVE-2025-3028.html)**：由 XSLTProcessor 触发的 use-after-free。
- **[CVE-2025-3029](https://www.suse.com/security/cve/CVE-2025-3029.html)**：通过非 BMP Unicode 字符进行 URL 栏欺骗。
- **[CVE-2025-3030](https://www.suse.com/security/cve/CVE-2025-3030.html)**：内存安全错误（各种组件）。
- **[CVE-2025-3031](https://www.suse.com/security/cve/CVE-2025-3031.html)**：具有不同堆栈槽大小的 JIT 优化错误。
- **[CVE-2025-3032](https://www.suse.com/security/cve/CVE-2025-3032.html)**：从 fork 服务器泄漏文件描述符。
- **[CVE-2025-3033](https://www.suse.com/security/cve/CVE-2025-3033.html)**：打开本地 `.url` 文件可能导致打开另一个文件。
- **[CVE-2025-3034](https://www.suse.com/security/cve/CVE-2025-3034.html)**：更多内存安全错误。
- **[CVE-2025-3035](https://www.suse.com/security/cve/CVE-2025-3035.html)**：通过 AI 聊天机器人泄露 Tab 标题。

**[php](https://www.php.net/) 8.4.5**：

- **[CVE-2024-11235](https://www.suse.com/security/cve/CVE-2024-11235.html)**：`php_request_shutdown` 中的 use-after-free。
- **[CVE-2025-1217](https://www.suse.com/security/cve/CVE-2025-1217.html)**：流包装器未能正确处理折叠的头。
- **[CVE-2025-1219](https://www.suse.com/security/cve/CVE-2025-1219.html)**：重定向期间 `libxml2` content-type 行为不当。
- **[CVE-2025-1734](https://www.suse.com/security/cve/CVE-2025-1734.html)**：HTTP 包装器允许没有冒号的头。
- **[CVE-2025-1736](https://www.suse.com/security/cve/CVE-2025-1736.html)**：HTTP 包装器可能省略基本身份验证头。
- **[CVE-2025-1861](https://www.suse.com/security/cve/CVE-2025-1861.html)**：重定向位置被截断为 1024 字节。

**[openvpn](https://openvpn.net/) 2.6.14**：

- **[CVE-2024-28882](https://www.suse.com/security/cve/CVE-2024-28882.html)**：经过身份验证的客户端可以强制服务器保持会话活动。
- **[CVE-2024-5594](https://www.suse.com/security/cve/CVE-2024-5594.html)**：通过带有格式错误数据的控制通道导致 DoS。
- **[CVE-2025-2704](https://www.suse.com/security/cve/CVE-2025-2704.html)**：`--tls-crypt-v2` 误用导致断言失败。

**[ffmpeg](https://www.ffmpeg.org/) 7.1.1**：

- **[CVE-2025-1816](https://www.suse.com/security/cve/CVE-2025-1816.html)**：音频元素参数计数缺少约束。
- **[CVE-2025-22919](https://www.suse.com/security/cve/CVE-2025-22919.html)**：修复了 FFmpeg 中可到达的断言，通过精心制作的 AAC 文件可能导致 DoS。
- **[CVE-2025-0518](https://www.suse.com/security/cve/CVE-2025-0518.html)**：修复了 FFmpeg 的 `af_pan.c` 中未检查的返回值和越界读取，从而防止数据泄露。

**[poppler](https://poppler.freedesktop.org/) 25.04.0**：

- **[CVE-2025-32364](https://www.suse.com/security/cve/CVE-2025-32364.html)**：修复了 Poppler 的 `PSStack::roll` 函数中由格式错误输入触发的浮点异常。
- **[CVE-2025-32365](https://www.suse.com/security/cve/CVE-2025-32365.html)**：由于 `isOk` 检查位置不当，修复了 Poppler 的 `JBIG2Bitmap::combine` 函数中的越界读取。

**[c-ares](https://c-ares.org/) 1.34.5**：

- **[CVE-2025-31498](https://www.suse.com/security/cve/CVE-2025-31498.html)**：修复了 c-ares `read_answers()` 中由过早连接关闭处理引起的 use-after-free。

**[giflib](https://github.com/mirrorer/giflib)**：

- **[CVE-2025-2173](https://www.suse.com/security/cve/CVE-2025-2173.html)**：`DumpScreen2RGB` 函数中的缓冲区溢出。

**[mozjs128](https://spidermonkey.dev/) 128.8.1**：

- **[CVE-2025-2857](https://www.suse.com/security/cve/CVE-2025-2857.html)**：通过 Windows 上的 IPC 句柄管理不当导致的沙箱逃逸。
- **[CVE-2024-43097](https://www.suse.com/security/cve/CVE-2024-43097.html)**：由于整数溢出导致 SkRegion 中的越界写入。
- **[CVE-2025-1930](https://www.suse.com/security/cve/CVE-2025-1930.html)**：AudioIPC 中的 use-after-free 允许在 Windows 上进行沙箱逃逸。
- **[CVE-2025-1931](https://www.suse.com/security/cve/CVE-2025-1931.html)**：WebTransport 连接处理中的 use-after-free。
- **[CVE-2025-1932](https://www.suse.com/security/cve/CVE-2025-1932.html)**：由于比较器不一致导致 xslt/txNodeSorter 中的越界访问。
- **[CVE-2025-1934](https://www.suse.com/security/cve/CVE-2025-1934.html)**：修复了 Firefox 中的 RegExp bailout 缺陷，允许意外的 JavaScript 执行和 GC 触发。
- **[CVE-2025-1935](https://www.suse.com/security/cve/CVE-2025-1935.html)**：修复了网站可以欺骗用户将它们设置为默认 URL 协议处理程序的问题。
- **[CVE-2025-1936](https://www.suse.com/security/cve/CVE-2025-1936.html)**：jar: URL 处理缺陷可能允许代码隐藏在 Web 扩展中。

**[xz](https://tukaani.org/xz/) 5.8.1**：

- **[CVE-2025-31115](https://www.suse.com/security/cve/CVE-2025-31115.html)**：多线程 .xz 解码器中的堆 use-after-free 和空指针解引用。

**[python-h11](https://pypi.org/project/h11/) 0.16.0**：

- **[CVE-2025-43859](https://www.suse.com/security/cve/CVE-2025-43859.html)**：修复了 `h11` 中宽松的行终止符解析，防止潜在的 HTTP 请求走私。

**[augeas](https://augeas.net)**：
- **[CVE-2025-2588](https://www.suse.com/security/cve/CVE-2025-2588.html)**：Augeas `re_case_expand` 中的空指针解引用，可能导致崩溃。

**[java-21-openjdk](https://openjdk.org/projects/jdk/21/) 21.0.7.0**

- **[CVE-2025-21587](https://www.suse.com/security/cve/CVE-2025-21587.html)**：修复了 Java SE 中的 JSSE 缺陷，允许通过精心制作的协议输入进行远程数据访问/修改。
- **[CVE-2025-30691](https://www.suse.com/security/cve/CVE-2025-30691.html)**：修复了 Java SE 编译器缺陷，允许有限的远程访问应用程序数据。
- **[CVE-2025-30698](https://www.suse.com/security/cve/CVE-2025-30698.html)**：修复了 Java SE 2D 中的缺陷，允许远程攻击者访问或修改有限数据或导致部分 DoS。

**[libraw](https://www.libraw.org/) 0.21.4**：
- **[CVE-2025-43964](https://www.suse.com/security/cve/CVE-2025-43964.html)**：修复了 LibRaw 的标记 0x412 处理中对 `w0` 和 `w1` 缺失的最小检查。

- **[CVE-2025-43962](https://www.suse.com/security/cve/CVE-2025-43962.html)**：由于标记 0x412 值处理不当，修复了 LibRaw 的 `phase_one_correct` 中的越界读取。

- **[CVE-2025-43961](https://www.suse.com/security/cve/CVE-2025-43961.html)**：修复了 LibRaw 的 Fujifilm 标记解析器在 `metadata/tiff.cpp` 中的越界读取。

- **[CVE-2025-43963](https://www.suse.com/security/cve/CVE-2025-43963.html)**：由于未经检查的图像分割值，修复了 LibRaw 的 `phase_one_correct` 中的越界访问。

**[python311](https://www.python.org/)**：

- **[CVE-2025-0938](https://www.suse.com/security/cve/CVE-2025-0938.html)**：修复了 Python 的 `urllib.parse` 中接受无效方括号域名的解析不当问题。

**[libsoup2](https://gitlab.gnome.org/GNOME/libsoup.git)**：

- **[CVE-2025-2784](https://www.suse.com/security/cve/CVE-2025-2784.html)**：修复了潜在的 HTTP/2 请求队列问题，可能导致意外行为或资源耗尽。
- **[CVE-2025-32050](https://www.suse.com/security/cve/CVE-2025-32050.html)**：解决了 HTTP/2 流重置处理不正确可能导致崩溃的缺陷。
- **[CVE-2025-32052](https://www.suse.com/security/cve/CVE-2025-32052.html)**：修复了不当的 HTTP trailer 处理，可能导致请求处理错误。
- **[CVE-2025-32053](https://www.suse.com/security/cve/CVE-2025-32053.html)**：解决了 trailer 字段名错误接受无效字符的问题。

**[libxml2](https://gitlab.gnome.org/GNOME/libxml2)**：

- **[CVE-2025-32415](https://www.suse.com/security/cve/CVE-2025-32415.html)**：修复了 XML Schema 验证期间 `xmlSchemaIDCFillNodeTables` 中的堆缓冲区溢出。
- **[CVE-2025-32414](https://www.suse.com/security/cve/CVE-2025-32414.html)**：限制了 Python 绑定的 XML 读取，以防止解析数据时缓冲区过度读取。

建议用户更新到最新版本以减轻这些漏洞。

### 结论
2025 年 4 月继续表明 Tumbleweed 为现代 Linux 发行版树立了标杆。本月，OpenSSH 10 带来了重大的安全进步，通过新的内核固件和 Mesa 更新深化了硬件兼容性。它还带来了更智能的开发者工具，如 GDB 16.3 和 KDE Gear 25.04。四月的快照提供了更快、抗量子攻击的 SSH 会话，提高了蓝牙音频可靠性，并提升了游戏性能，使 Tumbleweed 在桌面、服务器和基于 ARM 的系统上更加强大。
### Slowroll 更新抵达

请注意，这些更新也适用于 [Slowroll](https://en.opensuse.org/openSUSE:Slowroll)，并在 Tumbleweed 快照发布后平均 5 到 10 天抵达。这种每月更新的方法已经持续了许多个月，确保了用户的稳定性和及时的增强功能。Slowroll 的更新软件包定期在 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 的电子邮件中发布。

### 贡献 openSUSE Tumbleweed

订阅 openSUSE Factory 邮件列表以获取最新的快照更新。
对于那些想要贡献或参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表 ](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)。openSUSE 团队鼓励用户继续通过错误报告、功能建议和讨论来参与。

您的贡献和反馈使 openSUSE Tumbleweed 的每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都受到高度重视。

----

原文：[Tumbleweed Monthly Update - April 2025](https://news.opensuse.org/2025/05/02/tw-monthly-update-april/)，作者：Douglas DeMaio