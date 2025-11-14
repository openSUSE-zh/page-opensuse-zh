---
author: Fangzhou Liu
date: 2025-11-14 09:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 10 月
image: /assets/posts/2025-09/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---
10月，[openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) 的软件包更新持续保持快速节奏，几乎每天都有快照发布，带来桌面环境、开发工具和核心系统组件的关键软件升级。

KDE Gear 25.08.2 和 Plasma 6.5 对 KDE 桌面进行了优化，提升了性能、可访问性和稳定性；而 GNOME 49.1 则通过改进会话处理和输入可靠性优化了用户体验。此外，还推出了 Kernel Source 6.17.5、Mesa 25.2.5 和 PipeWire 1.5.81 等主要更新。其他值得关注的软件包更新包括 PHP 8.4.14、curl 8.16.0、ClamAV 1.5.1 和 GStreamer 1.26.7。

与往常一样，若出现任何问题，请务必使用 [snapper](https://github.com/openSUSE/snapper) 进行回滚操作。

如需了解本月更新日志的更多详情，请访问 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)。

## 新功能和增强功能
**[KDE Gear 25.08.2](https://kde.org/announcements/gear/25.08.2/)**：
此版本修复了 [Dolphin](https://apps.kde.org/dolphin) 的视频预览崩溃问题，以及 [Kdenlive](https://apps.kde.org/kdenlive) 在特效、滤镜任务和序列片段方面的崩溃问题。[Itinerary](https://apps.kde.org/itinerary) 和 [Kitinerary](https://api.kde.org/kdepim/kitinerary/html/) 通过新增脚本和更稳定的解析功能，扩展了对交通和预订服务的支持。其他亮点包括：修复了 [Okular](https://apps.kde.org/okular) 保存带密码保护文件时的崩溃问题；优化了 [KClock](https://apps.kde.org/kclock) 和 [KWeather](https://apps.kde.org/kweather) 的运行行为；解决了 [Keysmith](https://apps.kde.org/keysmith) 中的二维码权限问题。[NeoChat](https://apps.kde.org/neochat) 改进了推送通知功能，[Tokodon](https://apps.kde.org/tokodon) 优化了交互布局，而 K3b、Akonadi 和 KMime 等后端库则进行了兼容性和性能更新。


**[GNOME](https://apps.gnome.org/Software/) 49.1**：
此版本对多款 [GNOME](https://www.gnome.org/) 应用进行了更新，包括错误修复、无障碍性改进和翻译更新。亮点包括：计算器中的汇率显示修正；控制中心的界面和输入处理优化；GNOME 软件的更新通知增强。数独游戏解决了 RTL 输入漏洞，系统监视器修复了内存泄漏和元数据问题。原名为 gnome-tour-minimal 的软件包已重命名为 opensuse-welcome，并新增了捐赠页面，包含指向 GNOME 基金会和 Geeko 基金会的链接。[GDM](https://gitlab.gnome.org/GNOME/gdm) 修复了外壳锁定漏洞，并为删除 `/` 和 `/home` 增加了安全检查（现已在生产版本中运行），同时纠正了 Wayland 可用性检测问题。[GNOME Characters](https://apps.gnome.org/Characters/) 通过别名支持改进了语言处理，并修复了 IBus 检查、Flatpak 语言列表和活动窗口跟踪方面的问题。[GNOME Session](https://gitlab.gnome.org/GNOME/gnome-session) 通过修复僵尸进程泄漏、解决 `gnome-session-inhibit` 中的选项解析回归问题，以及优化 `DBUS_SESSION_BUS_ADDRESS` 的检测方式以提升在 systemd 外的运行效果，提高了会话可靠性。


**[File Roller](https://apps.gnome.org/FileRoller/) 44.6**：
此次更新改进了归档文件处理，并修复了多个格式特定问题。它能正确解析 LHA 列表，解决大型 RAR 文件的错误，恢复 7zip 归档文件的正确跟随链接行为。更新还允许通过 Unarchiver 打开 StuffIt 文件，修复“新建归档”和“提取”对话框中的灵敏度问题，并纠正压缩过程中的目录检测。同时也更新了翻译内容。

**[Plasma 6.5](https://kde.org/announcements/plasma/6/6.5.0/)**：
此版本带来了更流畅、更直观的使用体验。亮点包括自动明暗主题切换并搭配匹配的壁纸、固定剪贴板项目以及圆角窗口。可用性方面有所提升，如改进的 Wi-Fi 共享（包括密码共享）、更智能的音频静音功能，以及从登录界面直接进入休眠状态。无障碍功能新增了灰度滤镜、屏幕阅读器的 Caps Lock 提示，并修复了光敏闪烁问题。[KRunner](https://kde.org/plasma/krunner/) 引入了模糊搜索，便签功能更加灵活，Wayland 桌面可重新排序。[Discover](https://apps.kde.org/discover/) 速度更快，支持 Flathub 一键安装；[Spectacle](https://apps.kde.org/spectacle/) 可录制弹窗，表情符号选择器的可用性也得到优化。性能方面，启动速度更快、HDR 调校更佳，并支持叠加平面以实现高效的全屏播放。Plasma 6.5 仿佛是 KDE 历经 29 年不断完善而成的桌面体验。本月还发布了 [Plasma 6.5.1](https://kde.org/announcements/changelogs/plasma/6/6.5.0-6.5.1/)  bug 修复更新。此次更新修复了 [Discover](https://invent.kde.org/plasma/discover) 的崩溃问题，纠正了 [Breeze-GTK](https://github.com/KDE/breeze-gtk) 中的窗口角落渲染问题，并对 [KWin](https://invent.kde.org/plasma/kwin) 进行了多项稳定性改进。该 bug 修复更新还解决了 [KRDp](https://github.com/KDE/krdp) 用户管理、Spectacle 截图时间戳方面的问题，并确保 [Plasma Firewall](https://github.com/KDE/plasma-firewall) 中防火墙界面的正常运行。

**[Mesa](https://www.mesa3d.org/) 25.2.4**：
3D 图形包修复了 [AMD](https://www.amd.com/en) 和 [Intel](https://www.intel.com/) 显卡的问题，解决了《[最终幻想 XVI](https://store.steampowered.com/app/2515020/FINAL_FANTASY_XVI/)》《[精英危险](https://store.steampowered.com/app/359320/Elite_Dangerous/)》和《[荒野召唤：垂钓者](https://store.steampowered.com/app/1408610/Call_of_the_Wild_The_Angler/)》等游戏中的崩溃问题。Intel Xe2 硬件受益于修正后的显示缓冲区处理，AMD 用户则在跨统一块的着色器编译方面获得了更高的可靠性。Vulkan 视频解码和 SPIR-V 着色器处理得到改进，屏幕关闭期间的内存管理也更为完善。


**[curl](https://curl.se/) 8.16.0**：
此版本修复了两个安全问题，即 CVE-2025-9086 和 CVE-2025-10148。新功能包括 `--follow`、`--out-null` 和 `--parallel-max-host` 选项，重试选项的十进制值，以及 DNS 解析的负缓存功能。TLS 1.2 现已成为默认最低版本，WebSocket 支持 `CURLOPT_READFUNCTION`。众多修复改进了 cookie 处理、OpenSSL 集成、QUIC/HTTP3 支持以及 WebSocket 稳定性。这些变化共同增强了 HTTP、SMTP 和 TLS 用例中的安全性、性能和开发者灵活性。

**[QEMU](https://www.qemu.org/) 10.1.1**：
该模拟器修复了 [RISC-V](https://riscv.org/) 的向量扩展处理以及压缩指令的 [IOMMU](https://en.wikipedia.org/wiki/Input%E2%80%93output_memory_management_unit) 表限制问题，同时 [SPARC](https://en.wikipedia.org/wiki/SPARC) 获得了更灵活的指令解码能力。通过改进后复制过程中的错误处理，迁移稳定性得到提升。内存管理经过强化，地址空间销毁更清晰。构建和测试基础设施也得到优化，以确保编译和 CI 运行更顺畅。


**[ClamAV](https://www.clamav.net/) 1.5.1**：
这个恶意软件检测包修复了 PE 和 TNEF 文件的处理问题，提高了 ZIP、RAR、OOXML 和 OLE2 文档处理的准确性，并改进了图像的模糊哈希处理。此次更新还提高了嵌入式文件检测的限制，优化了 VBA 签名匹配。该软件包新增了 HTML/PDF 的 URI 元数据提取、访问时排除的正则表达式支持、使用 `.sign` 文件进行 CVD 签名、对弱哈希的类 FIPS 限制，以及 ClamD 中的新管理控制功能。


**[PHP 8.4.14](https://www.php.net/ChangeLog-8.php#8.4.14)**：
此次更新修复了属性处理绕过问题、闭包中的崩溃问题以及数组标志不一致问题。[curl](https://curl.se/)、GD、MySQLnd、Soap、SimpleXML 和 Zip 等关键模块的稳定性得到提升，同时解决了 Opcache 和 JIT 相关的竞争条件问题。


## 关键软件包更新

**[Kernel Source](https://www.kernel.org/) 6.17.0 至 6.17.5**：
Linux 内核 6.17.5 对 Btrfs、Ext4 和 F2FS 文件系统进行了稳定性改进，修复了 CIFS/SMB 和 NFS 协议处理问题，并为 Realtek 和 Intel 硬件提供了多项声卡驱动兼容性调整。图形相关更新解决了 AMDGPU 和 Xe 显卡驱动的问题。6.17.3 版本的更新包含网络功能优化，涉及广播模式下的绑定配置、USB 传输溢出问题，以及多个 Wi-Fi 驱动相关漏洞。该版本还修复了 AMDGPU、ext4、KVM、ksmbd 和龙芯架构 BPF 中的崩溃与内存处理问题，同时修补了多个驱动（USB、PCI、RPC 和输入设备）中的空指针解引用漏洞。6.17.2 版本新增了对新型 USB 串口设备（SIMCom 8230C）和蓝牙设备（D-Link AX9U）的支持，同时调整了 Wi-Fi 驱动以避免 RTL8192/8188 适配器出现冲突。Rust 子系统的文档和驱动引用得到修正，配置更新优化了控制台默认设置和 FIPS 处理逻辑，最终提升了系统可靠性、硬件兼容性和安全性。6.17.0 版本更新了配置项，包括启用 `DEBUG_WX` 以加强内存保护，以及优化特定平台的 HID 设备支持和调试选项。文档工具已调整以适配废弃的 Python 接口，`hvc_console` 中的串口控制台处理通过更可靠的写入行为得到改进。

**[iproute2](https://wiki.linuxfoundation.org/networking/iproute2) 6.17**：
这款高级网络工具包的更新引入了对新网络属性的支持，包括 `netns-immutable`、`mcast_reprobes` 以及邻居设备的 `extern_valid` 标志。它在网桥工具中新增了 `mdb_offload_fail_notification` 功能，在 devlink-rate 中添加了 `tc-bw` 选项。颜色显示处理经过优化，能更好地适配深色背景。

**[python311](https://www.python.org/) 3.11.14**：
此次安全更新强化了解析功能和归档文件处理能力。`html.parser.HTMLParser` 已对齐 HTML5 标准，修复了多个标签、属性和注释的解析问题，并关闭了与复杂度相关的漏洞。捆绑的 Expat 库解决了内存安全隐患，`tarfile` 模块现在会验证非负偏移量，以防止恶意构造的归档文件攻击。

**[gpg2](https://www.gnupg.org/) 2.5.13**：
此版本修复了合规性和安全性问题，包括带密码的 OCB 模式处理、重复密钥检测、cv25519 加密前缀，以及第三方签名中潜在的 SHA1 降级风险。它通过对未验证输出报错来改进签名验证，将 gpgsm 加密/解密切换至 KEM 接口，并修复了证书锁定故障。密钥箱处理经过优化，提升了锁定安全性和压缩安全性。其他更新包括支持 LDAP 密钥服务器上传、修复 PIN 码更改问题，以及为处理共享冲突增加私钥删除重试机制。

**[Mesa](https://www.mesa3d.org/) 25.2.5**：
此次更新解决了 Intel Arc 显卡在《[奇迹时代 4](https://store.steampowered.com/app/1669000/Age_of_Wonders_4/)》中的渲染错乱问题，修复了 [AMD](https://www.amd.com/en) RADV Vulkan 驱动中损坏的管线缓存，并解决了旧款 [Intel](https://www.intel.com/) 硬件上的测试失败问题。该版本还纠正了高通 Adreno 显卡上的遮挡查询问题，改进了 Vulkan 渲染通道中 3D 图像视图的处理，并修复了内存泄漏。

**[Mutter](https://mutter.gnome.org/) 49.1 及 49.1.1**：
此次更新提升了 Wayland 的稳定性、输入处理和窗口管理能力。Wayland 相关修复包括更好地处理无效或空几何形状、弹出窗口重新定位后始终发送配置事件，以及允许指针跳转前要求先进行指针交互。49.1.1 版本修复了部分 Xwayland 客户端中菜单失效的问题。输入可靠性通过正确的修饰键状态检查得到增强，同时还优化了渲染效果、性能表现和帧时钟调度。其他修复涵盖 [udev](https://en.wikipedia.org/wiki/Udev) 内存泄漏、备用光标大小调整以及手势处理崩溃问题。

**[AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/) 1.1.1**：
该软件包新增了禁用手册页创建的选项，通过显式字符串引用和 UTF-8 测试覆盖优化了 YAML 处理。已完全移除对 [Qt5](https://www.qt.io/) 的支持，相应清理了构建系统和规格文件。

**[SDL3](https://github.com/libsdl-org/SDL) 3.2.24**：
此版本修复了多个输入和渲染问题，包括 Steam 手柄相关崩溃以及摄像头被误检测为操纵杆的问题。修正了 [VMware](https://www.vmware.com/) 中的鼠标捕获功能和分离线程内存处理逻辑。渲染功能新增支持最多 8 色目标绑定，信框模式（Letterboxing）现已采用纯色填充，提升了一致性。

**[SELinux Policy](https://github.com/SELinuxProject/selinux) 20251006**：
此次更新增强了 SSH 策略，支持 `/usr/libexec/ssh` 路径、wtmpdb 日志记录和新的默认上下文，同时优化了 guest 和 xguest 域的会话处理。策略现在允许 valkey-server、blueman、geoclue、apcupsd 和 nfs-generator 等服务使用额外的套接字或文件系统属性。改进了 Kdump 和 EFI 访问权限，虚拟客户机（virt guests）可根据条件读取主目录中的证书。

**[webkit2gtk3](https://webkitgtk.org/) 2.50.1**：
该更新优化了 webkit2gtk3 和 webkit2gtk4 两个版本。修复了 Instagram 上音频播放失效的问题，纠正了分数变换（fractional transforms）相关的渲染异常。解决了 `s390x` 架构下的构建问题以及禁用视频功能时的编译错误，同时修复了多个崩溃和渲染问题。包含针对 **CVE-2025-43343** 的关键安全补丁，是 GTK 4.1 和 6.0 后端推荐的稳定性与安全性升级版本。

**[WirePlumber](https://pipewire.pages.freedesktop.org/wireplumber/) 0.5.12**：
此版本新增单声道音频配置支持、节点移除时自动静音 ALSA 设备的功能、全新通知 API 模块，以及扩充后的 `wpctl` 手册页（man page）。修复了权限门户（permissions portal）中的关闭竞争条件，避免异步操作期间无效设备导致崩溃，同时解决了 `device-info-cache` 中的日志错误，优化了设备钩子处理逻辑。添加补丁以抑制重新注册或移除钩子时的调度器错误。

**[GStreamer 1.26.7](https://gstreamer.freedesktop.org/releases/1.26/)**：
该更新优化了 `cea608overlay` 的处理逻辑。扩展了 RTP 处理能力，新增线性音频负载器/解负载器，并修复了 RTSP 交错模式下的保活问题。其他修复包括 MPEG-TS 中的 Opus 相关问题、编辑服务中的内存泄漏、优化 `threadshare` 延迟、改进复用器的 EOS 处理，以及完善内省注解。

**[PipeWire](https://gitlab.freedesktop.org/pipewire/pipewire/-/releases/1.5.81) 1.5.81**：
这是即将发布的 1.6 分支的首个候选版本，仍与早期 1.0.x 至 1.4.x 版本保持 API 和 ABI 兼容性。该版本重构了链路协商系统，以实现更优的默认匹配；改进了循环锁定机制，增加优先级反转处理，提升实时性能并让控制流解析更安全。新增功能包括 MIDI 2.0 片段支持、针对助听器的蓝牙 ASHA 支持，以及降低延迟的 ALSA 优化。

**[Binutils](https://www.gnu.org/software/binutils/) 2.45**：
此更新推出了版本化的 `libsframe.so.2`，扩展了 RISC-V 和 ARM 架构支持，新增了全新指令和预定义汇编器符号。x86 架构方面，新增对英特尔 Diamond Rapids AMX、AVX10.2 以及兆芯（Zhaoxin）新指令的支持；s390 工具现已支持 SFrame v2 和 “z17” 处理器。该版本修复了多个安全问题。

## 安全更新

**[Binutils](https://www.gnu.org/software/binutils/) 2.45**：
- **[CVE-2025-1149](https://www.suse.com/security/cve/CVE-2025-1149.html)**：修复了处理特定输入时的内存泄漏问题。
- **[CVE-2025-1150](https://www.suse.com/security/cve/CVE-2025-1150.html)**：修复了特定条件下可能导致资源耗尽的内存泄漏问题。
- **[CVE-2025-1151](https://www.suse.com/security/cve/CVE-2025-1151.html)**：一处内存处理问题可能导致泄漏或系统不稳定。
- **[CVE-2025-1152](https://www.suse.com/security/cve/CVE-2025-1152.html)**：另一处泄漏类问题会影响链接行为，可能削弱系统稳健性。
- **[CVE-2025-1153](https://www.suse.com/security/cve/CVE-2025-1153.html)**：恶意构造的输入可能导致内存损坏。
- **[CVE-2025-1176](https://www.suse.com/security/cve/CVE-2025-1176.html)**：严重漏洞，在特定构造条件下可能导致内存损坏或程序崩溃。
- **[CVE-2025-1178](https://www.suse.com/security/cve/CVE-2025-1178.html)**：恶意链接操作可能触发内存安全问题。
- **[CVE-2025-1179](https://www.suse.com/security/cve/CVE-2025-1179.html)**：另一处内存安全漏洞，在特定构建/链接流程中可能被利用。
- **[CVE-2025-1180](https://www.suse.com/security/cve/CVE-2025-1180.html)**：修复了一处被归类为“有问题”的缺陷，该缺陷可能影响链接行为和系统稳定性。
- **[CVE-2025-1181](https://www.suse.com/security/cve/CVE-2025-1181.html)**：一处漏洞可能导致错误链接或工具崩溃。
- **[CVE-2025-1182](https://www.suse.com/security/cve/CVE-2025-1182.html)**：修复了可能影响工具链的问题，若被利用可能产生广泛影响。
- **[CVE-2025-3198](https://www.suse.com/security/cve/CVE-2025-3198.html)**：一处被归类为有问题的漏洞，可能导致链接错误或工具失效。
- **[CVE-2025-5244](https://www.suse.com/security/cve/CVE-2025-5244.html)**：修复了可能影响链接和构建完整性的安全缺陷，建议进行更新。
- **[CVE-2025-5245](https://www.suse.com/security/cve/CVE-2025-5245.html)**：修复了影响核心链接功能的漏洞，该漏洞可能导致崩溃或意外行为。
- **[CVE-2025-7545](https://www.suse.com/security/cve/CVE-2025-7545.html)**：修复了导致链接失败的内存安全问题。
- **[CVE-2025-7546](https://www.suse.com/security/cve/CVE-2025-7546.html)**：修复了另一处内存安全/泄漏漏洞，该漏洞可能损害构建可靠性和系统完整性。
- **[CVE-2025-8224](https://www.suse.com/security/cve/CVE-2025-8224.html)**：修复了可能在构建/链接过程中被利用的漏洞。
- **[CVE-2025-8225](https://www.suse.com/security/cve/CVE-2025-8225.html)**：修复了另一处可能导致链接不稳定或工具链失效的缺陷。
- **[CVE-2025-11083](https://www.suse.com/security/cve/CVE-2025-11083.html)**：修复了影响链接组件的漏洞，该漏洞可能影响系统构建和完整性。
- **[CVE-2025-11495](https://www.suse.com/security/cve/CVE-2025-11495.html)**：一处与链接逻辑相关的缺陷，可能导致崩溃或意外行为。

**[Unbound](https://nlnetlabs.nl/projects/unbound/about/) 1.24.0**：
- **[CVE-2025-11411](https://www.suse.com/security/cve/CVE-2025-11411.html)**：一处漏洞可能允许攻击者注入伪造的 DNS 名称服务器记录，诱使 DNS 解析器更新委派信息，进而导致域名劫持。

**[java-21-openjdk 21.0.9.0](https://openjdk.org/projects/jdk/21/)**：
- **[CVE-2025-53066](https://www.suse.com/security/cve/CVE-2025-53066.html)**：修复了一处漏洞，该漏洞可能允许未授权攻击者通过网络获取关键数据的未授权访问权限。
- **[CVE-2025-61748](https://www.suse.com/security/cve/CVE-2025-61748.html)**：修复了一处缺陷，该缺陷可能允许未授权攻击者通过网络 API 访问，对可访问数据执行未授权的更新、插入或删除操作。
- **[CVE-2025-53057](https://www.suse.com/security/cve/CVE-2025-53057.html)**：修复了一处弱点，该弱点可能允许未授权攻击者远程创建、删除或修改关键数据。

**[gimp](https://www.gimp.org/)**：
- **[CVE-2025-10925](https://www.suse.com/security/cve/CVE-2025-10925.html)**：修复了栈溢出漏洞，攻击者可构造恶意图像，文件被打开时执行代码。
- **[CVE-2025-10922](https://www.suse.com/security/cve/CVE-2025-10922.html)**：修复了堆溢出漏洞，该漏洞可能允许通过恶意文件实现远程代码执行。
- **[CVE-2025-10920](https://www.suse.com/security/cve/CVE-2025-10920.html)**：修复了越界写入漏洞，特制图像可能导致程序崩溃或允许攻击者运行任意代码。

**[curl](https://curl.se/) 8.16.0**：
- **[CVE-2025-9086](https://www.suse.com/security/cve/CVE-2025-9086.html)**：修复了一处缺陷，该缺陷可能导致 curl 崩溃，或允许恶意网站意外覆盖“安全”Cookie。
- **[CVE-2025-10148](https://www.suse.com/security/cve/CVE-2025-10148.html)**：修复了一处可预测模式漏洞，该漏洞可能允许恶意服务器诱骗代理将恶意内容视为合法内容，并污染其缓存。

**[Bind](https://www.isc.org/bind/) 9.20.15**：
- **[CVE-2025-8677](https://www.suse.com/security/cve/CVE-2025-8677.html)**：修复了一处缺陷，该缺陷可能导致 DNS 解析器遭遇拒绝服务攻击。
- **[CVE-2025-40778](https://www.suse.com/security/cve/CVE-2025-40778.html)**：攻击者可向解析器缓存注入伪造 DNS 记录，将后续查询重定向至恶意目标。
- **[CVE-2025-40780](https://www.suse.com/security/cve/CVE-2025-40780.html)**：伪随机数生成器存在弱点，攻击者可预测 DNS 请求的源端口和查询 ID，从而更容易实施缓存投毒攻击。

**[qt6-svg](https://www.qt.io) 6.10.0**：
- **[CVE-2025-10728](https://www.suse.com/security/cve/CVE-2025-10728.html)**：SVG 文件渲染图形模块存在缺陷，会导致递归渲染，进而引发栈溢出和程序崩溃。
- **[CVE-2025-10729](https://www.suse.com/security/cve/CVE-2025-10729.html)**：图形模块中存在释放后使用漏洞，可能导致程序崩溃或其他内存损坏问题。

**[python-ldap](https://pypi.org/project/python-ldap/) 3.4.5**：
- **[CVE-2025-61911](https://www.suse.com/security/cve/CVE-2025-61911.html)**：当 `escape_mode=1` 时，向 `assertion_value` 参数传入恶意构造的 `list` 或 `dict`，会跳过特殊字符转义，攻击者可能借此操纵 LDAP 过滤器。
- **[CVE-2025-61912](https://www.suse.com/security/cve/CVE-2025-61912.html)**：客户端可能在向 LDAP 服务器发送请求前发生故障，导致客户端拒绝服务。

**[webkit2gtk3/4](https://webkitgtk.org/) 2.50.1**：
- **[CVE-2025-43343](https://www.suse.com/security/cve/CVE-2025-43343.html)**：存在内存处理缺陷，恶意构造的网页可能导致进程意外崩溃，攻击者或可借此破坏软件运行或获取更深层次访问权限。

**[libsoup](https://gitlab.gnome.org/GNOME/libsoup.git)**：
- **[CVE-2025-11021](https://www.suse.com/security/cve/CVE-2025-11021.html)**：存在一处缺陷，攻击者可构造带有特殊格式过期日期的 Cookie，触发超出预期范围的内存读取，可能泄露敏感信息。

**[libxslt](https://gitlab.gnome.org/GNOME/libxslt)**：
- **[CVE-2025-11731](https://www.suse.com/security/cve/CVE-2025-11731.html)**：存在一处缺陷，可能将文档节点错误视为元素节点，导致类型混淆、意外内存读取，甚至引发程序崩溃（拒绝服务）。

**[python311](https://www.python.org/) 3.11.14**：
- **[CVE-2025-8194](https://www.suse.com/security/cve/CVE-2025-8194.html)**：CPython 的 `tarfile` 模块存在缺陷，处理带有负偏移量的恶意构造 tar 归档文件时，可能导致无限循环或死锁，进而引发拒绝服务。
- **[CVE-2025-6069](https://www.suse.com/security/cve/CVE-2025-6069.html)**：存在一处漏洞，可能触发二次复杂度问题，通过消耗过量 CPU/时间放大拒绝服务攻击效果。

**[open-vm-tools](https://github.com/vmware/open-vm-tools) 13.0.5**：
- **[CVE-2025-41244](https://www.suse.com/security/cve/CVE-2025-41244.html)**：修复了虚拟机内的一处漏洞，攻击者可利用该缺陷获取同一虚拟机的 root（管理员）权限。

**[Ruby](https://www.ruby-lang.org/) 3.4.7**：
- **[CVE-2025-61594](https://www.suse.com/security/cve/CVE-2025-61594.html)**：修复了一处漏洞，该漏洞曾可能允许通过恶意构造的 URI 泄露认证信息。

**[poppler](https://poppler.freedesktop.org/)**：
- **[CVE-2025-52885](https://www.suse.com/security/cve/CVE-2025-52885.html)**：修复了一处漏洞，向量调整大小时可能产生悬空指针，进而导致内存损坏或程序崩溃。

**[ImageMagick](https://imagemagick.org/index.php) 7.1.2.7**：
- **[CVE-2025-62171](https://www.suse.com/security/cve/CVE-2025-62171.html)**：32 位系统上的 BMP 图像解码器存在缺陷，可能触发整数溢出，导致潜在的程序崩溃或拒绝服务。

**[samba](https://www.samba.org/)**：
- **[CVE-2025-10230](https://www.suse.com/security/cve/CVE-2025-10230.html)**：存在命令注入缺陷，未授权远程攻击者可借此执行任意命令。
- **[CVE-2025-9640](https://www.suse.com/security/cve/CVE-2025-9640.html)**：存在一处漏洞，用户可能读取残留内存内容，进而导致敏感数据泄露。

**[Mozilla Firefox](https://www.mozilla.org) 143.0.3、144.0**：
- **[CVE-2025-11152](https://www.suse.com/security/cve/CVE-2025-11152.html)**：存在一处漏洞，可通过内存损坏实现远程代码执行。
- **[CVE-2025-11153](https://www.suse.com/security/cve/CVE-2025-11153.html)**：编译错误可能允许攻击者执行任意代码。
- **[CVE-2025-11708](https://www.suse.com/security/cve/CVE-2025-11708.html)**：浏览器媒体子系统存在释放后使用漏洞，攻击者可借此导致应用崩溃或执行代码。
- **[CVE-2025-11709](https://www.suse.com/security/cve/CVE-2025-11709.html)**：存在一处缺陷，网页可能在特权进程中触发越界读写，存在数据泄露或代码执行风险。
- **[CVE-2025-11710](https://www.suse.com/security/cve/CVE-2025-11710.html)**：被攻陷的 Web 进程可通过恶意进程间消息，导致特权浏览器进程泄露部分内存。
- **[CVE-2025-11711](https://www.suse.com/security/cve/CVE-2025-11711.html)**：存在一处浏览器漏洞，允许修改本应不可写的 JavaScript 对象属性。
- **[CVE-2025-11712](https://www.suse.com/security/cve/CVE-2025-11712.html)**：网页可利用 OBJECT 标签的 type 属性（无内容类型标头时）覆盖浏览器行为，可能引发跨站脚本攻击（XSS）。
- **[CVE-2025-11714](https://www.suse.com/security/cve/CVE-2025-11714.html)**：修复了近期浏览器版本中的一系列内存安全漏洞，这些漏洞可能导致崩溃或代码执行。
- **[CVE-2025-11715](https://www.suse.com/security/cve/CVE-2025-11715.html)**：新增多项内存安全修复，覆盖浏览器/Thunderbird 栈中的多个组件，降低被利用风险。

建议用户更新到最新版本以缓解这些漏洞带来的影响。

## 总结

[Tumbleweed](https://get.opensuse.org/tumbleweed/) 以近乎每日发布快照的节奏迎来了 10 月的结束，此次更新既优化了桌面体验，又强化了底层系统安全。Plasma 6.5、KDE Gear 25.08.2 和 GNOME 49.1 与内核 6.17、Mesa 25.2.x 及 PipeWire 1.5.81 同步推送，同时 PHP、curl、QEMU、GStreamer 和 Binutils 等开发工具与平台工具也带来了经过验证的安全修复。

## Slowroll 的更新

请注意，上述更新同样适用于 [Slowroll](https://en.opensuse.org/Archive:Old_Slowroll_Page) 发行版，通常会在 Tumbleweed 快照发布后的 5 至 10 天 内推送。这一月度同步机制已稳定运行数月，能确保用户在获得可靠性的同时，也能及时接收功能与安全增强。Slowroll 的更新包会定期通过 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 发布公告。

## 为 openSUSE Tumbleweed 做贡献

您可以通过订阅 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 获取最新的快照更新信息。如果您希望参与贡献或深入技术讨论，该邮件列表是交流的核心平台。openSUSE 团队欢迎用户通过以下方式参与，包括提交错误报告、提出功能建议、参与社区讨论。

您的每一次反馈和贡献，都在帮助 Tumbleweed 变得更好。无论是报告错误、提出功能建议，还是参与社区讨论，您的参与都极具价值。

---
原文：[Tumbleweed Monthly Update - October 2025](https://news.opensuse.org/2025/10/31/tw-monthly-update-oct/)，作者：Douglas DeMaio
