---
author: Poplar at twilight
date: 2025-04-08 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 3 月
image: /assets/posts/2025-04/gnome.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

随着 2025 年的到来，[Tumbleweed] 将继续展示维护良好的滚动发布版本的优势。三月份在整个软件栈中发布了几个快照和几个有影响的变更。

[GNOME] 48 在本月首次亮相，提供了现代化的用户界面、性能改进以及数字健康工具和 HDR 支持等新功能。在 [KDE] 方面，Plasma 6.3.3 完善了分数缩放、显示处理和可用性。[Mesa] 25.0.1 **为英特尔 Arc GPU 引入了光线跟踪支持**。[Emacs] 30.1 增强了 org 协议处理、安全性和自动补全功能。其他更新的软件包包括 [PipeWire] 1.4.1、[libvirt] 11.1.0、[GStreamer] 1.26.0、[PHP][php8] 8.3.19 等。Tumbleweed 现在已经[添加了对并行下载软件包的实验性支持]，以及在 [zypper] 1.14.87 和 [libzypp] 17.36.4 中引入的新媒体后端；这为软件包管理提供了重大的速度提升，因为它将软件包获取时间缩短了一半以上。

[添加了对并行下载软件包的实验性支持]: https://news.opensuse.org/2025/03/27/zypper-adds-experimental-parallel-downloads/

通过这些更新，滚动发行版用户可以享受到经过严格测试并不断集成上游创新技术的最新 Linux 体验。

与往常一样，如果出现任何问题，请记住使用 [snapper] 进行回滚。

祝您在风滚草上玩得愉快！🦎

有关当月更改日志的更多详细信息，请访问 [openSUSE Factory 邮件列表]。

## 新功能和增强功能

- [GNOME] 48：
    - 该版本带来了通知堆叠功能以减少杂乱，并带来了重大的性能提升，包括动态三重缓冲和更快的文件浏览速度。
    - 新的图像查看器增加了裁剪和旋转等编辑工具，同时对 RAW 格式的支持扩展了功能。
    - 该版本首次推出了新字体——Adwaita Sans 和 Mono，增强了可读性和语言支持。
    - 数字健康工具现在可以跟踪屏幕时间、执行使用限制并提供休息提醒。对于支持的硬件，新的 80% 充电上限选项可保护电池寿命。
    - 简约的音频播放器 app 加入了核心 app，专注于波形视图的简单播放。
    - HDR 支持在系统级首次亮相，文本编辑器界面更简洁，格式控制更完善。
    - 其他功能包括应用程序的全局快捷方式、改进的窗口位置和扩展的键盘快捷键支持。通讯录、设置、日历、地图、Web 和 Orca 的更新改善了整个桌面的可访问性、用户体验和性能。
- [harfbuzz] 11：
    - 这个新的主要版本为 CoreText、DirectWrite 和基于 Rust 的 Skrifa 库引入了新的字体功能集成，可通过新的 `hb_font_set_funcs_using()` API 接口访问。
    - 其他 API 接口允许直接从 FreeType、CoreText 和 DirectWrite 后端文件或 blob 中加载字体。
    - DirectWrite 整形器现在完全支持字体变化和用户功能，其 API 也不再标记为实验性。
- [emacs] 30.1：
    - 这一重要版本引入了多项增强功能，包括改进了 GNU/Linux 上的 org 协议处理、默认进程过滤器的本地代码执行，以及通过一致的鼠标滚轮事件改进了输入处理。
    - emacs 还通过警告弱加密标准来加强网络安全，并确保 HTTP 请求不会暴露用户电子邮件。
    - emacs 新增了对 Tree-Sitter 子模式的支持，并改进了`icomplete-in-buffer`，增强了完成行为。
    - 由于 [webkit2gtk] 的回退问题，emacs 禁用了 GTK xwidgets 构建。
- [Mesa] 25.0.1 和 25.0.2：
    - 25.0.1 版本启用了对英特尔 Arc GPU 的光线追踪支持（[boo#1238732]），并改进了联编配置，改用 `%gcc_version` 代替硬编码 `CXX`。
    - 添加了一个解决方案，明确设置 `CXX=g++-14`，以解决编译器在构建过程中检测错误的问题。
    - 还修正了在 Tumbleweed 上的编译问题，并确保在 Leap/SLES 15 的编译中使用 GCC 13 ([bsc#1238713])。
    - 25.0.2 版本保持对 OpenGL 4.6 和 Vulkan 1.4 API 的支持，但实际报告的版本因驱动程序而异。
    - 该更新修复了 VRAM 检测问题、《[生化危机 2]》中的闪烁问题、[AMD] 780M 上 [DOOM 2016] 的 Vulkan 问题、AMD VDPAU 去隔行扫描中的分段故障以及使用 v3dv 的 Raspberry Pi 5 上的崩溃问题。
- [KDE Plasma] 6.3.3：
    - KWin 解决了多个问题，包括平铺、堆叠和修改器状态错误，并为具有复杂显示设置的硬件添加了更好的支持。
    - Discover 提高了更新日志的可视性，并为离线更新简化了大小写排序。
    - Breeze 调整了菜单栏样式，并解决了 Qt6 MinGW 编译回归问题。
    - Plasma Desktop 修补了任务管理器工具提示并改进了键盘布局处理，而 Plasma Workspace 则改进了系统托盘标签焦点并解决了日历导航错误。
    - Powerdevil 增强了对戴尔笔记本电脑的充电支持，并就增加能耗的电源设置向用户发出警告。
    - KPipewire、KScreenLocker 和 Spectacle 都得到了有针对性的修复，QQC2 Breeze Style 将其视觉元素与桌面风格同步，以保持一致性。
- [KDE Gear] 24.12.3：
    - Dolphin 解决了使用搜索打开新标签时的崩溃问题，并防止了视图设置丢失。
    - 播客应用程序 Kasts 解决了播放和排序问题。
    - Kate 改进了 HUD 行为、会话处理和编辑器字体一致性。
    - Kdenlive 消除了与音频播放和片段转换有关的多种崩溃情况。
    - Okular 改进了数字签名处理并修复了显示错误。
    - Konsole 修补了转义序列行为，避免了无限循环，并改进了会话设置。
    - Konqueror 恢复了用户界面元素的正确翻译提取。
    - Kitinerary 扩展了提取器支持，为 Eventyay、SBB 和 Ghotel 预订提供了新脚本。
    - Tokodon 和 PlasmaTube 改进了用户界面的一致性和媒体播放，尤其是 PeerTube 和 Akkoma。
    - 包括 Umbrello、Cantor 和 Calligra 在内的多个应用程序获得了与 CMake 4 的兼容性，确保了更顺畅的构建。
- [selinux-policy 20250305]：
    - 此更新带来了一些修复，如将 `/var/log/php-fpm.log` 标为 `httpd_log_t`，以及允许 `systemd-networkd` 读写 tmpfs 中的 memfd 对象。新增了对 SSH keygen 的支持，以便通过 vsockets 和 Plymouth 调试日志进行连接。
    - Apache2 二进制文件现在已正确标注，`kmscon` 模块也已启用。
    - 打包方面的改进包括删除脚本中的 bashisms、修复一个损坏的变量引用、改进 rpmlintrc 以及使用 fdupes 减少重复。
- [systemd] 257.4：
    - 显著的变更包括更好地处理触发器中的 `posix.fork()`（bsc#1238566）。
    - 更新 `systemctl edit` 以更优雅地处理丢失的单元屏蔽错误，以及改进 MountImages 的真实性设置。
    - Shell 自动补全现在包括 `systemd-creds`，并为 verity 和扩展功能添加了额外的测试覆盖范围。
    - Journalctl 现在会识别 `--quiet` 与 `--setup-keys`，而 `logind` 现在会在初始化时启动全系统范围的空闲跟踪。
    - 更新还修正了一些手册页面的错别字，并提高了 mkosi 版本与 openSUSE 的兼容性。
- [php8] 8.3.19：
    - 本次更新修复了 BCMath、GD、Phar 和 zlib 中的内存泄漏问题，以及核心引擎、FFI 和 Opcache JIT 编译中的崩溃和意外行为。还解决了关闭序列中的几个 CVE 问题，并增强了 FPM 路径处理功能。
- [gimp] 3.0.2：
    - 这是 3.0 版本的首批次要更新之一，解决了与文字工具中的笔刷选择和字体处理有关的崩溃问题，并通过调整标题栏颜色、间距和暗色主题面板分隔提高了用户界面的一致性。
    - 对工具和插件的可用性进行了改进，包括重新排序的线条艺术检测选项、新的切换图标，以及元数据编辑器和渐变炫光崩溃的修复。
    - 构建系统包括打包清理，现在依赖 GEGL 0.4.58。
- [ovmf] 202502：
    - 本季度的更新为 SRAT 和 MADT 表生成添加了 X64 支持，引入了跨多种架构的动态堆栈 cookie 支持，并集成了 RNG PPI 和 PEI 库。
    - 该版本还更新至 [OpenSSL] 3.4.x，并增强了 CI 工具。
    - 该版本还解决了图像重定位溢出、QEMU 随机数生成支持和各种组件中的未初始化变量警告等错误。

[selinux-policy 20250305]: https://github.com/SELinuxProject
[boo#1238732]: https://bugzilla.opensuse.org/show_bug.cgi?id=1238732
[bsc#1238713]: https://bugzilla.opensuse.org/show_bug.cgi?id=1238713
[DOOM 2016]: https://en.wikipedia.org/wiki/Doom_(2016_video_game)
[生化危机 2]: https://en.wikipedia.org/wiki/Resident_Evil_2_(2019_video_game)
[KDE Gear]: https://kde.org/announcements/changelogs/gear/24.12.2/
[webkit2gtk]: https://webkitgtk.org/

## 关键软件包更新

- [Kernel] 6.13.6 至 6.13.8：
    - 6.13.8 版在修复相关问题后重新启用了 [OpenVPN] 支持。值得注意的更新涉及内存管理、网络、RDMA、蓝牙、Wi-Fi、DRM 等子系统以及各种特定架构组件的改进和错误修复。
    - 6.13.7 内核引入了 [OVPN][OpenVPN] 数据通道卸载，包括多用户支持、TCP 传输、通过 netlink 进行密钥和对等管理以及与 ethtool 集成。其他更新涉及内存泄露、ksmbd 中的使用后释放（use-after-free）漏洞、[ALSA] 中戴尔和联想系统的硬件兼容性，以及 RDMA、KVM for LoongArch、Btrfs 和 DRM 子系统的多项改进。
    - 6.13.6 版本包括对 RDMA、网络、SCSI、NFS 和蓝牙等子系统的大量修复和增强。主要更新解决了 RDMA/mlx5 中的内存和竞赛条件错误，纠正了 NFS O_DIRECT 写入中的行为，并改进了各种驱动程序的错误处理。它还包括针对 x86 和 arm 的特定架构改进，并在微码 SHA 检查中增加了被遗忘的 AMD 型号。该更新还解决了 [bsc#1012628] 中指出的几个错误。
- [sdbootutil]：
    - 此更新包含多项修复和增强功能。
    - 现在支持 grub2-bls 的启动条目测量，并使 set-default-snapshot 保持一致。
    - 它现在能验证 ESP 挂载点，并确保从 snapper 调用时行为正确。
    - 其他改进还包括：OpenSSL 输出静音、在 cryptenroll 密钥环中存储密码、更新帮助条目、错字修复和更严格的输入验证。
- [git] 2.49.0：
    - 该版本引入了对任意提交的 shallow clones 的支持，并增加了 `git backfill` 来批量获取无 blob 克隆中丢失的 blob。
    - `git gc` 增加了 `--expire-to` 选项，`git repack` 现在可以使用替代路径哈希来更好地选择 delta。
    - `[help] autocorrect = 1` 设置现在能立即运行错字更正。
    - `git rev-list --missing=print-info` 则能提供更多丢失对象的细节。
- [PipeWire] 1.4.1： 
    - 修复了因 SplitPCM 通道规格不正确而导致的设备消失问题，并在不支持 UMP 的旧内核上恢复了 MIDI 功能。
    - 解决了由于重采样器配置错误导致的 `audioconvert` 崩溃问题。
    - 改进了 UCM 配置问题的错误报告。
    - 通过修复来电时崩溃的问题，提高了蓝牙的稳定性。
- [nvme-cli] 2.12：
    - 此用户空间工具引入了新命令，如 `reachability-associations-log`、`host-discovery-log` 和 `rotational-media-info-log` 等，增强了 NVMe 2.1 日志支持和诊断功能。
    - 该版本改进了错误处理、完成脚本和 JSON 输出，同时还更新了文档和插件，包括 OCP 2.6 遥测。修复了多个错误和构建问题，并更新了 [libnvme] 依赖关系。
- [Evolution] 3.56.0： 
    - 这款个人信息管理应用程序对邮件、日历、任务和通讯录进行了大量错误修复和用户界面改进。亮点包括修正了任务中的时区比较、改进了内存处理、改善了图标处理、修复了退出时崩溃的问题，并增强了统一收件箱行为。
    - 更新用 `GtkGrid` 等现代等效组件替换了传统 GTK 部件，删除了过时的 API（如 `GTimeVal`、`GtkAlignment`、`GtkArrow`），现在需要 [glib] 2.70。
    - 此外，该版本还进行了多项翻译更新和界面改进。
- [GTK3] 3.24.49 和 [GTK4] 4.18.2：
    - 3.24.49 版本修复了与 IM 上下文和使用 GtkPlug/GtkSocket 拖放有关的崩溃问题。在 [Wayland] 上，它改进了光标处理，并解决了由不良交叉事件引起的菜单故障。
    - 4.18.2 对弹出窗口、剪贴板泄漏、Wayland 拖动表面和 X11 缩放行为进行了增强和修复。新功能包括 Wayland 光标形状协议支持、Android OpenGL 后端，以及字体渲染、可访问性和检查工具的改进。
- [GStreamer] 1.26.0：
    - 主要功能包括支持 H.266/VVC 和 LCEVC 视频编解码器、闭合字幕增强功能和新的 HLS/DASH 汇。
    - 它引入了 [AWS] 和 Speechmatics 转录元素、新的 Vulkan 和 CUDA 改进以及更丰富的 RTSP、RTP 和 WebRTC 功能。
    - 扩大了对 Matroska、MPEG-TS 和 ISO MP4 格式的支持，以及用于实时分析和可视化的工具。
    - 值得注意的变化包括基于 QUIC 的新元素、高级 A/V 编码器/解码器支持以及 GTK、Qt 和 Direct3D12 后端升级。
- [libvirt] 11.1.0：
    - `fs` 存储后端已去模块化，现已内置。
    - 由于上游 API 的生命周期已结束，因此不再支持 [VirtualBox] 6.1 API。
    - 新功能包括支持大型机上基于 ccwgroup 的 qeth 设备、云管理程序虚拟机的事件处理、用于 s390 guest 的 virtio-mem 内存设备，以及作为 vhostuser 接口后端的 passt。
    - [QEMU] 驱动程序现在可以保留 I/O 错误信息，以便以后通过 `virDomainGetMessages()` 进行检索。
    - 错误修复包括改进 ssh-proxy 中的域状态检查、针对 SGX 内存的 AppArmor 配置文件更新，以及在 CPU 型号未知的主机上启动域时的崩溃修复。

[AWS]: https://aws.amazon.com/
[bsc#1012628]: https://bugzilla.opensuse.org/show_bug.cgi?id=1012628
[sdbootutil]: https://github.com/openSUSE/sdbootutil

## 错误修复和安全更新

本月解决了几个关键的安全漏洞。本月的 CVE 包括：

### 安全更新

- [apache2-mod_php8] 8.3.19:
    - [CVE-2024-11235]： 此漏洞标识符已保留以备将来披露。
    - [CVE-2025-1219]： 此漏洞标识符已被保留，以备将来披露。
    - [CVE-2025-1736]： 此漏洞标识符已被保留，以备将来披露。
    - [CVE-2025-1861]： 此漏洞标识符已被保留，以备将来披露。
    - [CVE-2025-1734]：保留此漏洞标识符以备将来披露。
    - [CVE-2025-1217]： 此漏洞标识符已被保留，以备将来披露。
- [libxslt]：
    - [CVE-2025-24855]： 修正了 libxslt 在嵌套 XPath 評估時的使用已釋放，可能導致當機。
    - [CVE-2024-55549]：修正了 libxslt 命名空间处理中与结果前缀排除相关的使用后释放问题。
- [php8] 8.3.19:
    - [CVE-2024-11235]： 此漏洞标识符已被保留，以备将来披露。
    - [CVE-2025-1219]： 此漏洞标识符已被保留，以备将来披露。
    - [CVE-2025-1736]: 此漏洞标识符已被保留，以备将来披露。
    - [CVE-2025-1861]： 此漏洞标识符已被保留，以备将来披露。
    - [CVE-2025-1734]：此漏洞标识符已被保留，以备将来披露。
    - [CVE-2025-1217]： 
- [webkit2gtk3]:
    - [CVE-2025-24201]： 通过改进检查以防止未经授权的操作，解决了越界写入问题。恶意制作的网页内容可能会突破网页内容沙盒。
- [libarchive]：
    - [CVE-2025-1632]：修正 libarchive 的 `bsdunzip.c` 中的取消引用空指针，这可能导致本地崩溃。
    - [CVE-2025-25724]：修正了 `list_item_verbose` 中未选中的 `strftime` 返回值，该返回值可通过伪造的 TAR 文件导致拒绝服务。
- [389-ds] 3.1.2~git+：
    - [CVE-2025-2487]： 修正了 389 目錄伺服器在 MODDN 作業時取消引用 NULL 指針，可能導致阻斷服務。
- [zvbi] 0.2.44:
    - [CVE-2025-2173]：修正了 `vbi_strndup_iconv_ucs2` 中一个未初始化指针，该指针可导致远程崩溃。
    - [CVE-2025-2174]： 修正了 `vbi_strndup_iconv_ucs2` 中的整数溢出，该溢出可能导致远程利用。
    - [CVE-2025-2175]： 在 `_vbi_strndup_iconv` 修正了一個整數滿溢，惡意程式可被遠端利用。
    - [CVE-2025-2176]： 在 `vbi_capture_sim_load_caption` 修正了一個整數滿溢，這可能導致遠端利用。
    - [CVE-2025-2177]：修复了 `vbi_search_new` 中的整数溢出问题，该问题可能被远程利用。
- [wpa_supplicant]：  
    - [CVE-2025-24912] ：修复 hostapd 中对精心设计的 RADIUS 数据包的不当处理，这可能会导致身份验证失败。

建议用户更新到最新版本以减轻这些漏洞的影响。

[libarchive]: https://www.libarchive.org/
[CVE-2025-1632]: https://www.suse.com/security/cve/CVE-2025-1632.html
[CVE-2025-25724]: https://www.suse.com/security/cve/CVE-2025-25724.html
[389-ds]: https://www.port389.org/
[CVE-2025-2487]: https://www.suse.com/security/cve/CVE-2025-2487.html
[zvbi]: https://zapping.sourceforge.net/ZVBI/index.html
[CVE-2025-2173]: https://www.suse.com/security/cve/CVE-2025-2173.html
[CVE-2025-2174]: https://www.suse.com/security/cve/CVE-2025-2174.html
[CVE-2025-2175]: https://www.suse.com/security/cve/CVE-2025-2175.html
[CVE-2025-2176]: https://www.suse.com/security/cve/CVE-2025-2176.html
[CVE-2025-2177]: https://www.suse.com/security/cve/CVE-2025-2177.html
[wpa_supplicant]: https://w1.fi/wpa_supplicant/
[CVE-2025-24912]: https://www.suse.com/security/cve/CVE-2025-24912.html
[CVE-2024-11235]: https://www.suse.com/security/cve/CVE-2024-11235.html
[CVE-2025-1219]: https://www.suse.com/security/cve/CVE-2025-1219.html
[CVE-2025-1736]: https://www.suse.com/security/cve/CVE-2025-1736.html
[CVE-2025-1861]: https://www.suse.com/security/cve/CVE-2025-1861.html
[CVE-2025-1734]: https://www.suse.com/security/cve/CVE-2025-1734.html
[CVE-2025-1217]: https://www.suse.com/security/cve/CVE-2025-1217.html
[CVE-2025-24201]: https://www.suse.com/security/cve/CVE-2025-24201.html
[libxslt]: https://gitlab.gnome.org/GNOME/libxslt
[CVE-2025-24855]: https://www.suse.com/security/cve/CVE-2025-24855.html
[CVE-2024-55549]: https://www.suse.com/security/cve/CVE-2024-55549.html
[apache2-mod_php8]: https://software.opensuse.org/package/apache2-mod_php8
[CVE-2024-11235]: https://www.suse.com/security/cve/CVE-2024-11235.html
[CVE-2025-1219]: https://www.suse.com/security/cve/CVE-2025-1219.html
[CVE-2025-1736]: https://www.suse.com/security/cve/CVE-2025-1736.html
[CVE-2025-1861]: https://www.suse.com/security/cve/CVE-2025-1861.html
[CVE-2025-1734]: https://www.suse.com/security/cve/CVE-2025-1734.html
[CVE-2025-1217]: https://www.suse.com/security/cve/CVE-2025-1217.html

## 结论

Tumbleweed 2025 年 3 月发布的快照突出了滚动发布的特点：快速获得最新技术，并通过严格的自动测试保持稳定。从引入 GNOME 48 的数字福祉工具和 HDR 支持、KDE Plasma 6.3.3 的可用性改进，到通过 Mesa 25 为英特尔 Arc GPU 提供光线追踪支持，本月为用户带来了跨桌面和硬件堆栈的实质性升级。

在 zypper 中增加并行软件包下载和媒体后台增强功能，标志着在性能和用户体验方面向前迈进了一大步。

## Slowroll 更新

请注意，这些更新也适用于 [Slowroll]，并且通常会在 Tumbleweed 快照发布后平均 5 到 10 天内到达。这种按月发布的方式已经持续多个月，确保了用户的稳定性和及时的增强功能。

## 为 openSUSE Tumbleweed 做出贡献

订阅 openSUSE Factory 邮件列表，随时了解最新快照。对于那些想要贡献或想要参与详细技术讨论的 Tumbleweed 用户，请订阅 [openSUSE Factory 邮件列表]。openSUSE 团队鼓励用户通过错误报告、功能建议和讨论继续参与。

您的贡献和反馈使 openSUSE Tumbleweed 每次更新都变得更好。无论是报告错误、建议功能还是参与社区讨论，您的参与都非常有价值。

----

原文：[Tumbleweed Monthly Update - March 2025](https://news.opensuse.org/2025/04/01/tw-monthly-update-march/)，作者：Douglas DeMaio

[glib]: https://gitlab.gnome.org/GNOME/glib
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