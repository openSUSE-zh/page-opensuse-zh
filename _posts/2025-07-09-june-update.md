---
author: Fangzhou Liu
date: 2025-07-09 09:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 6 月
image: /assets/posts/2025-07/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---
六月，[openSUSE 滚动发行版](https://get.opensuse.org/tumbleweed/) 迎来了一系列全新更新。此次更新包含重大功能增强、性能优化以及多项关键安全修复。

作为本次更新的核心亮点，[KDE Plasma 6.4](https://kde.org/announcements/plasma/6/6.4.0/) 与 [KDE Frameworks 6.15.0](https://kde.org/announcements/frameworks/6/6.15.0/) 及 [KDE Gear 25.04.2](https://kde.org/announcements/changelogs/gear/25.04.2/) 同步登场。Linux 内核迎来多轮升级，[GNU 编译器集合](https://gcc.gnu.org/) 15、[Mesa](https://www.mesa3d.org/) 25.1.3 和 [PipeWire](https://pipewire.org/) 1.4.6 等软件包则强化了对现代硬件的支持，提升了图形渲染能力并优化了音频处理性能。本月最关键的更新当属针对安全漏洞的修复措施。

大量软件包在本月更新了重要的安全补丁。从 [libsoup](https://gitlab.gnome.org/GNOME/libsoup.git)、[Mozilla Firefox](https://www.mozilla.org/)、[Python](https://www.python.org/)、[libssh](https://www.libssh.org/)、[Salt](https://saltproject.io/) 到 [ClamAV](https://www.clamav.net/) 和 [gdm](https://gitlab.gnome.org/GNOME/gdm) 等组件，多个通用漏洞披露（CVE）问题得到解决，确保用户和开发者能够安心使用。

同往常一样，如遇任何问题，请务必使用 [snapper](https://github.com/openSUSE/snapper) 工具进行系统回滚。

欲了解本月完整更新日志，请访问 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)。

## 新功能和增强功能

**[KDE Plasma 6.4](https://kde.org/announcements/plasma/6/6.4.0/)**：此版本带来了更流畅、可高度定制的桌面体验。核心升级包括：为每个虚拟桌面提供灵活的平铺布局方案，强化窗口管理功能，以及经过重新设计的 [Spectacle](https://github.com/KDE/spectacle) 截图工具，支持更便捷的屏幕截图与标注操作。无障碍功能优化了键盘导航，增强了对 [Wayland](https://wayland.freedesktop.org/) 协议的支持。界面调整显著提升了对比度与可读性，这一改动对黑暗模式下尤为明显。通知系统新增直接安装更新选项、全屏免打扰模式及麦克风静音提醒功能。小组件现可突出显示新安装应用、媒体播放控制及磁盘修复工具。数字艺术家将受益于改进的触控笔配置和相对模式支持，系统对现代硬件的屏幕色彩管理与性能调度也更为出色。[KRunner](https://userbase.kde.org/Plasma/Krunner/de) 新增色彩代码可视化功能，系统监视器加入了 GPU 状态追踪与传感器数据监测。其他优化还包括文件拖拽体验改进、浏览器深度集成，以及更完善的 Wayland 协议支持。

**[KDE Frameworks 6.15.0](https://kde.org/announcements/frameworks/6/6.15.0/)**：此版本的一大亮点是转向了 [QDoc](https://doc.qt.io/qt-6/01-qdoc-manual.html) ——这是一款更现代化、更清晰的文档工具，能够显著提升开发者在使用 [KArchive](https://api.kde.org/frameworks/karchive/html/)、[Baloo](https://api.kde.org/frameworks/baloo/html/) 和 [Bluez Qt](https://api.kde.org/frameworks/bluez-qt/html/) 等组件时的效率。此外，针对 [KArchive](https://api.kde.org/frameworks/karchive/html/) 和 [KTextEditor](https://api.kde.org/frameworks/ktexteditor/html/) 等模块的漏洞修复进一步增强了系统稳定性和性能。用户界面框架（如 [KWidgetsAddons](https://api.kde.org/frameworks/kwidgetsaddons/html/) 和 [Kirigami](https://api.kde.org/frameworks/kirigami/html/index.html)）在视觉效果和功能上均有优化，同时无障碍特性也得到加强。[Kate](https://kate-editor.org/) 和 [KWrite](https://apps.kde.org/kwrite/) 等 KDE 文本编辑器的用户会发现更新还加强了对 Cap’n Proto 和 FreeFem 等不同编程语言的语法支持，让代码编写更加流畅。

**[KDE Gear 25.04.2](https://kde.org/announcements/changelogs/gear/25.04.2/)**：此次更新为 [Kdenlive](https://kdenlive.org/en/) 带来了多项问题修复，包括渐变、直方图及渲染相关问题的解决，大幅提升了视频编辑的稳定性。[NeoChat](https://apps.kde.org/neochat/) 增强了移动端支持，优化了空间切换和聊天室管理体验。[Calligra](https://apps.kde.org/calligra/) 改进了公式处理机制，避免了程序崩溃问题，而 [Akonadi](https://userbase.kde.org/Akonadi) 现在能够正确执行标签编辑与删除操作。此外，[KDE Connect](https://kdeconnect.kde.org/) 提升了与 [Qt](https://www.qt.io/) 6.9 的兼容性，终端应用 [Konsole](https://konsole.kde.org/) 也获得了多项问题修复，整体运行更加可靠。

**[Ceph](https://ceph.io/) 18.2.7**：本次重大更新包含多项架构变更、性能优化与新功能。最显著的变化是正式弃用 FileStore，标志着所有新部署将全面转向 [BlueStore](https://docs.ceph.com/en/latest/rados/configuration/storage-devices/)。[RADOS](https://docs.ceph.com/en/reef/man/8/rados/) 模块获得多项增强，包括引入读取均衡器功能，并弃用缓存分层技术，转而采用更现代的存储策略。原性能统计命令 `perf dump` 和 `perf schema` 已被替换为 `counter dump` 和 `counter schema`，以提供更完善的计数器管理机制。其他更新包括 IPv6 s问题修复、编排器稳定性提升，以及针对 mgr 模块的 Python 绑定补丁更新。此版本还禁用了 `ceph-mgr-cephadm` 组件，并包含一系列构建与兼容性补丁，确保与现代工具链及 Python 版本的平滑集成。

**[python-psutil](https://apps.gnome.org/zh-CN/Music/) 7.0.0**：本次重大更新包含一些重要变更：已正式停止对 Python 2.7 的支持，这与更广泛的生态系统转变保持一致。修复了 `Process.memory_maps()` 在内存使用量极高时导致的崩溃问题，提高了处理数百 GB 内存进程的稳定性。

**[python-rich](https://pypi.org/project/rich/) 14.0.0**：本次重大版本更新引入了多项影响终端输出和错误处理的新功能与行为变更。最显著的改进是新增了 `TTY_COMPATIBLE` 环境变量，允许用户手动控制 TTY 支持检测功能，这在自动检测可能失败的无界面或特殊终端环境中尤为实用。重要变更包括 Rich 对颜色控制变量的解析方式调整，以及现在会显示通过 `Exception.add_note()` 添加的异常备注信息，从而提升调试时的信息清晰度。

## 关键软件包更新

**[webkit2gtk3](https://webkitgtk.org/) 2.48.3**：本次更新为基于 [GTK](https://www.gtk.org/) 的网页应用及浏览器（如 [Epiphany](https://apps.gnome.org/Epiphany/)）带来了稳定性和性能提升。主要修复了采用 Skia 图形 [API](https://en.wikipedia.org/wiki/API) 的新线程渲染系统引发的崩溃问题，近期遭遇渲染不稳定的用户将体验到明显改善。通过优化跨工作线程处理脏区的方式，渲染性能得到进一步调优，从而实现更流畅的视觉效果并降低 CPU 占用率脏区指屏幕或界面中发生变化需要重绘的区域。此次更新全面增强了 [GNOME](https://www.gnome.org/) 及其他 GTK 环境下 WebKit 应用程序的可用性与可靠性。

**[Python](https://www.python.org/) 3.13.5**：本次更新提供了安全修复和稳定性改进。重要变更包括修复了与 tar 文件解压漏洞相关的 CVE 漏洞，修正了 `unicode-escape` 解码器中的内存释放后继续使用的安全漏洞，并恢复了 `random.getrandbits()` 对类整数对象的正确处理行为。库更新改进了对 IPv6 地址、邮件解析和 zip 文件操作的处理。为确保向后兼容性，已回退 3.13.4 版本中的部分生成器相关改动。建议所有用户升级以确保安全性和稳定性。

**[iproute2](https://git.kernel.org/pub/scm/network/iproute2/iproute2.git) 6.15**：本次更新新增了对 `tc_util` 中 64 位硬件数据包计数器的支持，可更精准监控超过 32 位限制的高吞吐量接口。`iprule` 工具现在支持使用十六进制表示法指定端口号，提升了处理底层网络协议和掩码时的兼容性与可读性。所有从旧版本反向移植的补丁均已被移除，转而采用上游纯净代码。

**[kernel-source](https://www.kernel.org/) 6.15.0 和 6.15.3**：6.15.3修复了一个 PCIe 热插拔问题，其中延迟到达的设备检测信号（存在检测变更）导致不必要的错误。它还改进了 I/O 调度中后台任务的处理方式，并解决了 WiFi 驱动兼容性的回归问题。该更新修复了目标电源管理、加密操作和文件系统处理（包括 btrfs 和 gfs2），以提高数据完整性和性能。6.15.0 内核撤销了“x86/smp: Eliminate mwait_play_dead_cpuid_hint()”提交以解决稳定性问题，并增加了对 [HAOYU（昊昱）微电子](https://www.hotmcu.com/) HYM8563 RTC 模块的支持，该模块广泛用于Rockchip SoC 等 ARM64 平台。整合了多个补丁以改进 ACPI 构建处理，并从 6.14.8 更新中继承了许多关键错误修复，特别是在内存管理、DMA 引擎处理和 I/O 子系统方面，提高了复杂工作负载下的可靠性，并减少了错误路径中的内存泄漏。

**[gcc](https://gcc.gnu.org/) 15**：本次更新引入了新的语言支持，新增了 Modula-2 和 Cobol 软件包，进一步扩展了其本就广泛的编程语言支持范围。主工具链现已默认采用 GCC 15，而 `-build` 版本仍保留为 13 版，以确保需要稳定编译器后端的环境的兼容性和可靠性。该版本还包含性能提升、更完善的诊断功能以及增强的卸载支持，因此推荐开发者升级。

**[fwupd]() 2.0.12**：本次更新新增了对 [HP](https://www.hp.com/) 便携式 USB-C 集线器、更多 [Foxconn](https://www.honhai.com/) 5G 调制解调器以及 [Intel](https://www.intel.com/) Arc Battlemage 显卡的支持。新功能包括 Thunderbolt 主机控制器模拟、强制执行不可变设备枚举，并改进了 UEFI 安全启动变量的处理。

**[Mesa](https://www.mesa3d.org/) 25.1.3**：该版本的主要变更包括修复了[《DOOM：黑暗时代》](https://store.steampowered.com/app/3017860/DOOM_The_Dark_Ages/) 等游戏的渲染问题，并改进了 Vulkan 和 OpenGL 实现的驱动程序行为。由于 EGL 无表面上下文已能完全替代其功能，本次更新移除了对 `osmesa` 的支持。此外还更新或移除了多个补丁，包括构建修复、SPIR-V 转换以及 Clover OpenCL 处理等方面的调整。

**[gpg2](https://gnupg.org/) 2.5.8：本次版本的主要改进包括现在能直接在标准密钥列表（`-k`）中显示吊销原因，无需额外查询即可轻松追踪密钥被吊销的原因。更新还通过在“pub”记录中以注释形式输出吊销原因，提升了与外部工具的互操作性，并改进了对解析 GnuPG 密钥输出的系统的兼容性。修复了两个关键问题：一个影响解密功能，另一个影响从智能卡导出 SSH 密钥。此外，`gpg --fetch-key` 命令现在不再需要预先配置密钥服务器，允许直接从 URL 或本地文件获取密钥，从而简化了密钥管理的工作流程。

**[cryptsetup](https://gitlab.com/cryptsetup/cryptsetup) 2.8.0**：本次更新的核心改进是通过支持带有额外元数据空间的硬件扇区来提升性能。所有密钥槽类型现在都实现了自包含设计，并通过新增的 `--key-description`、`--new-key-description` 等选项优化了重加密流程，同时支持使用令牌或卷密钥恢复重加密操作。该版本还改进了 LUKS2 中Argon2 KDF（密钥派生函数）的内存处理机制，增强了低内存场景下的错误报告能力。此外优化了 LUKS2 的元数据写入性能，并通过新增 `--error-as-corruption` 等选项扩展了 veritysetup 的功能。

**[pipewire]() 1.4.6**：本次更新修复了 filter-chain（过滤器链）和 ALSA（高级Linux声音架构）插件中的崩溃问题。`module-combine-stream`（组合流模块）的延迟报告功能得到改进，`module-filter-chain`（过滤器链模块）现在能更好地处理激活和停用操作以避免崩溃。新增的选项允许用户通过上下文属性禁用 RAOP（远程音频输出协议），从而提供更灵活的音频路由控制。

## 错误修复和安全更新
本月修复了多个关键安全漏洞，涉及的 [通用漏洞披露问题](https://zh.wikipedia.org/wiki/公共漏洞和暴露) 包括：

### 安全更新
**[libsoup](https://gitlab.gnome.org/GNOME/libsoup)**
- **[CVE-2025-32911](https://www.suse.com/security/cve/CVE-2025-32911.html)**：修复了 libsoup 分块传输解析器中的缓冲区越界读取漏洞
- **[CVE-2025-32910](https://www.suse.com/security/cve/CVE-2025-32910.html)**：解决了 libsoup 头部解析时的越界访问问题
- **[CVE-2025-32906](https://www.suse.com/security/cve/CVE-2025-32906.html)**：修补了 libsoup cookie 处理中的验证不足缺陷
- **[CVE-2025-32912](https://www.suse.com/security/cve/CVE-2025-32912.html)**：修复了 libsoup 中 HTTP/2 会话劫持漏洞
- **[CVE-2025-32909](https://www.suse.com/security/cve/CVE-2025-32909.html)**：修复了 libsoup 多部分解析器的内存泄漏问题
- **[CVE-2025-4948](https://www.suse.com/security/cve/CVE-2025-4948.html)**：修复了 libcurl 中 wolfSSL QUIC SSL 对端验证绕过漏洞
- **[CVE-2025-4969](https://www.suse.com/security/cve/CVE-2025-4969.html)**：修补了 libcurl `dynbuf` API 的缓冲区溢出漏洞
- **[CVE-2025-4945](https://www.suse.com/security/cve/CVE-2025-4945.html)**：修复了 Linux 内核 USB 子系统的越界读取漏洞（可能导致信息泄露）

**[Mozilla Firefox](https://www.mozilla.org/zh-CN/) 139**
- **[CVE-2025-5263](https://www.suse.com/security/cve/CVE-2025-5263.html)**：修复了 Firefox 中跨源脚本执行泄露漏洞  
- **[CVE-2025-5264](https://www.suse.com/security/cve/CVE-2025-5264.html)**：修复了“复制为 cURL”功能中换行转义缺陷（可导致代码执行）  
- **[CVE-2025-5265](https://www.suse.com/security/cve/CVE-2025-5265.html)**：修补了 Firefox 中类似的“复制为 cURL”代码执行漏洞  
- **[CVE-2025-5266](https://www.suse.com/security/cve/CVE-2025-5266.html)**：修复了跨源脚本元素的事件泄露问题  
- **[CVE-2025-5267](https://www.suse.com/security/cve/CVE-2025-5267.html)**：修复了点击劫持漏洞（可能泄露已保存的支付卡信息）  
- **[CVE-2025-5268](https://www.suse.com/security/cve/CVE-2025-5268.html)**：解决了 Firefox/Thunderbird 中的多个内存安全问题  
- **[CVE-2025-5270](https://www.suse.com/security/cve/CVE-2025-5270.html)**：[预留编号：详情待公开披露]  
- **[CVE-2025-5271](https://www.suse.com/security/cve/CVE-2025-5271.html)**：[预留编号：详情待公开披露]  
- **[CVE-2025-5272](https://www.suse.com/security/cve/CVE-2025-5272.html)**：[预留编号：详情待公开披露]  
- **[CVE-2025-49709](https://www.suse.com/security/cve/CVE-2025-49709.html)**：修补了画布表面的内存损坏漏洞  
- **[CVE-2025-49710](https://www.suse.com/security/cve/CVE-2025-49710.html)**：修复了 Firefox 139.0.4 中未明确说明的内存安全问题  

**[python313](https://www.python.org/) 3.13.5**：
- **[CVE-2024-12718](https://www.suse.com/security/cve/CVE-2024-12718.html)**：修复了 Python 3.12+ 中 tarfile 过滤器的漏洞（允许在解压目录外更改元数据或权限）
- **[CVE-2025-4138](https://www.suse.com/security/cve/CVE-2025-4138.html)**：修复了 libarchive ZIP 过滤器处理中的缓冲区溢出问题（可能导致内存损坏）
- **[CVE-2025-4330](https://www.suse.com/security/cve/CVE-2025-4330.html)**：修补了 SQLite JSON 扩展在解析无效 JSON 输入时的越界读取漏洞
- **[CVE-2025-4517](https://www.suse.com/security/cve/CVE-2025-4517.html)**：解决了 OpenSSL 会话缓存中的竞态条件问题（可能导致释放后使用场景）
- **[CVE-2025-4516](https://www.suse.com/security/cve/CVE-2025-4516.html)**：修复了 CPython 的 `bytes.decode("unicode_escape", errors="ignore|replace")` 中的释放后使用问题（防止内存损坏）

**[python311](https://www.python.org/)**：
- **[CVE-2025-4516](https://www.suse.com/security/cve/CVE-2025-4516.html)**：修复了 CPython 中 `bytes.decode("unicode_escape", errors="ignore|replace")` 方法的释放后使用（use-after-free）漏洞（可能导致内存损坏）

**[libssh](https://www.libssh.org/)**：
- **[CVE-2025-4877](https://www.suse.com/security/cve/CVE-2025-4877.html)**：修复了二进制转 Base64 转换函数中的越界写入问题
- **[CVE-2025-4878](https://www.suse.com/security/cve/CVE-2025-4878.html)**：修复了 `privatekey_from_file()` 函数中使用未初始化变量的问题
- **[CVE-2025-5318](https://www.suse.com/security/cve/CVE-2025-5318.html)**：修复了 SFTP 服务器句柄管理中可能存在的越界读取漏洞
- **[CVE-2025-5351](https://www.suse.com/security/cve/CVE-2025-5351.html)**：修复了密钥导出函数中的双重释放漏洞
- **[CVE-2025-5372](https://www.suse.com/security/cve/CVE-2025-5372.html)**：修复了 ssh_kdf() 函数在某些失败情况下仍返回成功代码的问题
- **[CVE-2025-5449](https://www.suse.com/security/cve/CVE-2025-5449.html)**：修复了 SFTP 服务器消息解码中可能存在的越界读取漏洞
- **[CVE-2025-5987](https://www.suse.com/security/cve/CVE-2025-5987.html)**：修复了使用 OpenSSL 后端时 ChaCha20-Poly1305 算法返回无效返回码的问题

**[Salt](https://saltproject.io/)**：
- **[CVE-2024-38822](https://www.suse.com/security/cve/CVE-2024-38822.html)**：修复了 Salt 文件客户端功能中的不当访问控制问题
- **[CVE-2024-38823](https://www.suse.com/security/cve/CVE-2024-38823.html)**：解决了来自不可信 pillar 数据的命令注入风险
- **[CVE-2024-38824](https://www.suse.com/security/cve/CVE-2024-38824.html)**：修补了 Salt 事件系统中的不安全反序列化漏洞
- **[CVE-2024-38825](https://www.suse.com/security/cve/CVE-2024-38825.html)**：修复了因路径清理不当导致的目录遍历漏洞
- **[CVE-2025-22240](https://www.suse.com/security/cve/CVE-2025-22240.html)**：修复了通过特制 Salt minion 返回导致的远程命令执行漏洞
- **[CVE-2025-22236](https://www.suse.com/security/cve/CVE-2025-22236.html)**：修复了特定条件下 Salt minion 可能覆盖非预期文件的问题
- **[CVE-2025-22241](https://www.suse.com/security/cve/CVE-2025-22241.html)**：解决了畸形 Salt 返回负载导致的拒绝服务问题
- **[CVE-2025-22237](https://www.suse.com/security/cve/CVE-2025-22237.html)**：修复了 Salt master 日志记录敏感返回数据的问题
- **[CVE-2025-22238](https://www.suse.com/security/cve/CVE-2025-22238.html)**：修补了调试日志中 minion 密钥泄露的问题
- **[CVE-2025-22239](https://www.suse.com/security/cve/CVE-2025-22239.html)**：解决了 ACL 配置不当导致的权限提升问题
- **[CVE-2025-22242](https://www.suse.com/security/cve/CVE-2025-22242.html)**：修复了 Salt SSH 模块中的输入验证问题

**[xorg-x11-server](https://www.x.org/wiki/)**：
以下是按照要求的格式翻译和排版的漏洞公告：
- **[CVE-2025-49176](https://www.suse.com/security/cve/CVE-2025-49176.html)**：修复了 xorg-x11-server 中绕过大小检查的整数溢出漏洞

**[libtpms](https://github.com/stefanberger/libtpms) 0.10.1**：
- **[CVE-2025-49133](https://www.suse.com/security/cve/CVE-2025-49133.html)**：修复了 libtpms 0.10.1 中 `CryptHmacSign` 函数的越界读取漏洞（可能通过恶意 TPM 2.0/vTPM 命令触发，导致服务中断）

**[ClamAV](https://www.clamav.net/)**：
- **[CVE-2025-20260](https://www.suse.com/security/cve/CVE-2025-20260.html)**：修复了 ClamAV PDF 解析器缓冲区溢出漏洞（在扫描限制大的情况下可能导致拒绝服务或远程代码执行）
- **[CVE-2025-20234](https://www.suse.com/security/cve/CVE-2025-20234.html)**：修复了 ClamAV UDF 解析器缓冲区溢出漏洞（可能导致数据泄露或拒绝服务）

**[gdm](https://gitlab.gnome.org/GNOME/gdm)**：
- **[CVE-2025-6018](https://www.suse.com/security/cve/CVE-2025-6018.html)**：修复了身份认证栈中使用 pam_env 模块导致的安全风险

**[pam_pkcs11](https://github.com/OpenSC/pam_pkcs11)**：
- **[CVE-2025-6018](https://www.suse.com/security/cve/CVE-2025-6018.html)**：修复了与 gdm 相同的身份认证栈中 pam_env 模块使用问题

**[jq](https://jqlang.org/)** 1.8.0：
- **[CVE-2024-23337](https://www.suse.com/security/cve/CVE-2024-23337.html)**：修复了 jvp_array_write 和 jvp_object_rehash 函数中的有符号整数溢出漏洞
- **[CVE-2024-53427](https://www.suse.com/security/cve/CVE-2024-53427.html)**：修复了 JSON 解析时接受含有效载荷 NaN 值的问题
- **[CVE-2025-48060](https://www.suse.com/security/cve/CVE-2025-48060.html)**：修复了 jv_string_vfmt 函数中的堆缓冲区溢出漏洞

**[pam](https://github.com/linux-pam/linux-pam) 1.7.1**：
- **[CVE-2024-10963](https://www.suse.com/security/cve/CVE-2024-10963.html)**：修复了 pam_access 模块将显示令牌错误解析为主机名的问题
- **[CVE-2025-6020](https://www.suse.com/security/cve/CVE-2025-6020.html)**：修复了 pam_namespace 模块中的权限提升漏洞

**[xwayland]() 24.1.7**：
- **[CVE-2025-49175](https://www.suse.com/security/cve/CVE-2025-49175.html)**：修复了 X Rendering 扩展中与动画光标相关的越界访问问题
- **[CVE-2025-49176](https://www.suse.com/security/cve/CVE-2025-49176.html)**：修复了 Big Requests 扩展中的整数溢出漏洞
- **[CVE-2025-49177](https://www.suse.com/security/cve/CVE-2025-49177.html)**：修复了 XFIXES 扩展中可能导致数据泄露的问题
- **[CVE-2025-49178](https://www.suse.com/security/cve/CVE-2025-49178.html)**：确保正确处理输入缓冲区中应忽略的字节
- **[CVE-2025-49179](https://www.suse.com/security/cve/CVE-2025-49179.html)**：修复了 X Record 扩展中的整数溢出问题
- **[CVE-2025-49180](https://www.suse.com/security/cve/CVE-2025-49180.html)**：修复了 RandR 扩展中的整数溢出漏洞，防止可能的崩溃或内存损坏

**[yelp](https://apps.gnome.org/Yelp/) 42.3**：
- **[CVE-2025-3155](https://www.suse.com/security/cve/CVE-2025-3155.html)**：修复了 Yelp 帮助查看器中的 JavaScript 执行漏洞（攻击者可通过特制帮助文档实现任意文件读取）

**[perl-CryptX](https://software.opensuse.org/package/perl-CryptX) 0.87.0**：
- **[CVE-2025-40914](https://www.suse.com/security/cve/CVE-2025-40914.html)**：修复了 CryptX 中嵌入的易受整数溢出漏洞影响的 libtommath 库版本

**[glib2](https://wiki.gnome.org/Projects/GLib) 2.84.3**：
- **[CVE-2025-6052](https://www.suse.com/security/cve/CVE-2025-6052.html)**：修复了 GLib 中 GString 扩展函数（`g_string_maybe_expand`）的整数溢出漏洞，可防止潜在的缓冲区溢出

建议用户尽快更新至最新版本以防范上述安全风险。

## 总结

六月份包含了多项漏洞修复和固件更新，其中固件包已升级至 20250613 版本。本次更新包含对高通、联发科、瑞昱和 Cirrus 音频芯片的改进，同时升级了蓝牙固件并优化了符号链接处理。Xfce 面板插件（包括 mailwatch、mount、mpc、netload、notes、places 和 sensors）也更新至新版本，这些软件包更新主要涉及将构建系统迁移至 Meson、用 libxfce4ui 4.21.0 替换已弃用的 Exo 等依赖项、自动化版权管理、改进代码结构、修复构建警告以及更新翻译文件。安全是本月更新的重点，Firefox、Python、Salt、ClamAV 和 libssh 等组件均修复了关键漏洞。请享受更新！

## Slowroll 的更新

请注意，上述更新同样适用于 [Slowroll](https://en.opensuse.org/Archive:Old_Slowroll_Page) 发行版，通常会在 Tumbleweed 快照发布后的 5 至 10 天 内推送。这一月度同步机制已稳定运行数月，能确保用户在获得可靠性的同时，也能及时接收功能与安全增强。Slowroll 的更新包会定期通过 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 发布公告。

## 为 openSUSE Tumbleweed 做贡献

您可以通过订阅 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 获取最新的快照更新信息。如果您希望参与贡献或深入技术讨论，该邮件列表是交流的核心平台。openSUSE 团队欢迎用户通过以下方式参与，包括提交错误报告、提出功能建议、参与社区讨论。

您的每一次反馈和贡献，都在帮助 Tumbleweed 变得更好。无论是报告错误、提出功能建议，还是参与社区讨论，您的参与都极具价值。

---
原文：[Tumbleweed Monthly Update - June 2025](https://news.opensuse.org/2025/07/03/tw-monthly-update-june/)，作者：Douglas DeMaio
