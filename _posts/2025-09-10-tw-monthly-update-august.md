---
author: Fangzhou Liu
date: 2025-09-10 09:30:00 +0800
date: 2025-09-15 09:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 8 月
image: /assets/posts/2025-08/tw.png
image: /assets/posts/2025-09/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

在 8 月期间，[openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) 对多个软件包进行了更新，为该版本用户带来了新功能、性能提升以及一些重要的安全修复。

主要更新包括支持新 C 标准的 [glibc 2.42](https://www.gnu.org/software/libc/)、[VirtualBox 7.2.0](https://www.virtualbox.org/)，以及 [Bash 5.3.3] (https://www.gnu.org/software/bash/)——该版本改进了脚本处理能力并新增了内置命令。此外，[KDE Gear 25.08.0](https://kde.org/announcements/gear/25.08.0/) 也已推送，优化了用于出行、文件管理和加密通信的应用程序。

除上述更新外，还对 [xfce4-session 4.20.3](https://docs.xfce.org/xfce/xfce4-session/start) 和 [xfce4-settings 4.20.2](https://docs.xfce.org/xfce/xfce4-settings/start) 进行了优化；通过 [GStreamer 1.26.5](https://gstreamer.freedesktop.org/) 和 [HarfBuzz 11.4.1](https://harfbuzz.github.io/) 提升了多媒体功能；同时，借助 [Mesa 25.1.7](https://www.mesa3d.org/) 更新增强了图形稳定性。[Kernel 6.16.0](https://www.kernel.org/) 则扩展了硬件支持，其中值得注意的是新增了对树莓派 5 RP1 芯片组的集成支持。

其他重要工具也有所改进。更多详情请见下文；与往常一样，若出现任何问题，请务必使用[snapper](https://github.com/openSUSE/snapper)进行回滚操作。

有关该月变更日志的更多详细信息，请访问 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)。

## 新功能和增强功能
**[KDE Gear 25.08.0](https://kde.org/announcements/gear/25.08.0/)**：这是一波全新的应用更新，主要面向 [KDE Plasma](https://kde.org) 用户，聚焦出行、生产力与易用性提升。[Itinerary](https://apps.kde.org/itinerary/) 迎来重大升级，用户可手动添加行程、查看实时地图、查询延误信息，甚至能查找轮渡与航班的替代方案。[Dolphin](https://apps.kde.org/dolphin/) 新增了更快的文件搜索功能，支持直接集成 Filelight 以可视化磁盘占用情况，并提供了更多排序与视图选项。[Akonadi](https://userbase.kde.org/Akonadi) 将内存占用减少了高达 75%，让电子邮件、联系人与日历同步更流畅；而 [Kleopatra](https://apps.kde.org/kleopatra/) 现在支持多个加密记事本。[Neochat](https://apps.kde.org/neochat/) 引入了投票功能，[Angelfish](https://apps.kde.org/angelfish/) 则优化了浏览快捷键。这是一次全面的更新，让 KDE 应用更快速、更智能，且能更好地满足出行场景需求。

**[xfce4-session](https://docs.xfce.org/xfce/xfce4-session/start) 4.20.3**：此次更新提升了 [Xfce](https://xfce.org) 桌面用户的启动速度与稳定性，在 [Wayland](https://wayland.freedesktop.org/) 环境下效果尤为明显。自动启动超时时间已缩短，可加快会话启动速度，解决了启动缓慢的问题。多项优化增强了 Wayland 集成效果，包括改进键盘布局检测、避免重复的 D-Bus 会话，以及移除 SDL 视频驱动变量等不必要的设置。通过更新门户配置，屏幕录制功能得到优化；同时还新增了 Labwc（一款兼容 Wayland 的窗口管理器）的默认设置。这些更新让 Xfce 会话响应更迅速，且优化更充分。

**[xfce4-settings](https://docs.xfce.org/xfce/xfce4-settings/start) 4.20.2**：此次 Xfce 设置更新修复了内存泄漏问题，并增强了读取硬件标识数据时的安全性。更新优化了 X11 与 Wayland 两种显示协议下的显示处理逻辑，确保屏幕模式与标识位能被正确处理，减少与显示服务器之间不必要的通信。调试日志功能也得到改进，便于排查问题；此外，还对构建系统进行了小幅更新，确保运行时能正确加载相关资源。

**[glibc](https://www.gnu.org/software/libc/) 2.42**：此版本新增了对最新 [ISO C23](https://en.wikipedia.org/wiki/C23_(C_standard_revision)) 标准以及即将推出的 [C2Y](https://en.wikipedia.org/wiki/C_(programming_language)#C2Y) 标准的支持，其中包含 `pown`、`rsqrt` 和 `compoundn` 等新的数学函数。通过对内存分配器的优化，性能得到了提升；同时新增的轻量级栈保护功能，有助于防范栈溢出攻击。

**[VirtualBox](https://www.virtualbox.org/) 7.2.0**：该版本对界面进行了重新设计，让工具更易于访问。在基于 ARM 的系统上，VirtualBox 现在支持运行 Windows 11 ARM 虚拟机，这为开发人员和测试人员扩展了兼容性。对于 Linux 用户，当启用 3D 支持时，借助硬件加速视频解码，视频播放性能得到了提升。此外，[NVMe](https://nvmexpress.org/)（非易失性内存主机控制器接口规范）存储控制器仿真功能已被整合到开源基础包中，默认向所有用户提供更先进的存储特性。

**[Bash](https://www.gnu.org/software/bash/) 5.3.3**：Bash 修复了 `wait` 命令在 POSIX 模式下处理进程 ID 的方式，并通过检查前两行内容改进了脚本检测功能。现在，该 Shell 在命令补全过程中能更好地保留引号，且在脚本中报告的错误位置更准确。新特性包括：用于控制文件名排序方式的 `GLOBSORT` 变量、无需派生进程即可实现更快命令替换的 `${ command; }` 语法，以及 `strptime` 和 `kv` 等新内置命令。通过移除对 `shm_open` 的过时依赖，并改进补全过程中的信号处理，安全性和稳定性也得到了增强。这些改进让开发人员和系统管理员的日常终端使用更流畅、更可预测。

**[GStreamer](https://gstreamer.freedesktop.org/) 1.26.5**：此版本修复了音频转换中的一个回归问题，防止在添加无可用解码器的 URI 时出现崩溃，并解决了视频分辨率变化过程中的内存泄漏问题。目前，`videorate` 和 `imagefreeze` 组件已支持 JPEG XS 等现代格式，且针对隐藏式字幕叠加层的 GPU 内存处理得到了优化。该更新还提升了设备监控与屏幕捕获能力，并修复了大量线程共享及流媒体相关问题，最终实现了更流畅的媒体播放、更少的故障报错以及更出色的性能表现。


**[HarfBuzz](https://harfbuzz.github.io/) 11.4.1、11.4.3、11.4.4**：这款文字排版引擎对字体的排版和子集化处理进行了全面提速，让显示复杂文字的应用程序运行更快、响应更迅速。准确性方面，修复了曾影响部分字体中标点符号字形的回归问题，并修正了子集化过程中标点过滤集的裁剪错误（该错误此前会导致意外的排版变化）。Graphite 后端现在能正确处理字形间距可能变为负值的情况，提升了文字布局质量。子集化功能进一步优化，通过移除未使用的标点附着查询来减小字体文件大小；同时新增了一个实验性排版后端，为测试和性能评估提供了灵活性。


**[ModemManager](https://www.freedesktop.org/wiki/Software/ModemManager/) 1.24.2**：此更新修复了 CDMA/EVDO 网络检测、NB-IoT 状态上报以及手动注册刷新相关的问题。通过确保网络承载在系统休眠前断开连接，并在快速休眠/唤醒周期内禁用不必要的 3GPP 事件，进一步增强了系统稳定性。

## 关键软件包更新

**[Kernel Source](https://www.kernel.org/) 6.16.0**：Linux 内核此次更新的重大亮点之一，是通过集成 RP1 芯片组扩展了对 [Raspberry Pi 5](https://www.raspberrypi.com/products/raspberry-pi-5/)（树莓派 5）的支持，用户可在 [openSUSE arm](https://lists.opensuse.org/archives/list/arm@lists.opensuse.org/) 开发环境中实际应用该硬件。内核新增了相关驱动程序与配置，以启用 RP1 芯片的时钟控制、GPIO、引脚控制及各类设备功能，确保与树莓派最新硬件实现全面兼容。此外，更新还包含多项安全与稳定性修复，例如解决了 [Btrfs](https://btrfs.wiki.kernel.org) 文件系统日志树恢复、串行外设接口（SPI）属性处理，以及 FIPS 模式下 HKDF 加密运算相关的问题。同时，ARM 和 x86 平台的配置文件已更新，此次发布还优化了设备树绑定与时钟管理，并修复了多个驱动程序及特定架构相关的问题。

**[Mesa](https://www.mesa3d.org/) 25.1.7**：这款 3D 图形包更新解决了多项问题，包括 Zink中的高 GPU 占用、Chromium 浏览器硬件加速视频解码崩溃、X11 图像获取段错误，以及部分视频色彩转换漏洞。此外，更新还修复了性能回归问题、时间线信号量竞争条件、Lavapipe 中的 Vulkan 设备创建问题，以及部分 RadeonSI 和 RADV 驱动程序故障。该版本未引入新功能，但提升了 OpenGL 和 Vulkan 实现的整体可靠性。

**[btrfsprogs](https://btrfs.readthedocs.io/en/latest/) 6.16**：此次更新优化了 Btrfs 文件系统对数据与存储的处理方式。修复了分区大小报告不准确的问题，防止意外覆盖现有文件系统，并增强了对存储设备功能的检测能力。新增了一个在碎片整理期间禁用文件压缩的选项，同时改进了对 Android 构建的支持，并更新了相关文档。

**[NetworkManager-openvpn](https://wiki.gnome.org/Projects/NetworkManager/VPN) 1.12.2**：该更新提升了 NetworkManager 中 [OpenVPN](https://openvpn.net/) 连接的稳定性与安全性。修复了重复使用无效或过期身份验证质询的漏洞，以确保连接处理更安全。新增了对 `data-ciphers` 选项及其回退设置的支持，并提供了图形界面以便更轻松地管理这些设置。身份验证对话框已更新至 GTK4 版本，外观更现代化；同时改进了证书处理逻辑，将证书导入用户数据目录。此外，更新还修复了密码导出处理相关问题、更新了翻译内容，并提升了整体可靠性。

**[git](https://git-scm.com/) 2.51.0**：此更新引入了一种更好的方式来保存特定更改并在仓库之间移动，提升了推送和拉取更新时的性能，并新增了对 OAuth2 等现代身份验证方式的支持。Git 还在为 3.0 版本做准备，该版本将默认包含更快的存储格式和更安全的 SHA‑256 加密算法。

**[QEMU](https://www.qemu.org/) 10.0.3**：这款机器模拟器和虚拟化工具的更新修复了 PCIe SR-IOV 配置中的关键问题（这些问题可能导致状态不同步，对应 CVE-2025-54566、CVE-2025-54567），解决了网络后端的缓冲区溢出问题，并修正了寄存器处理和 CPUID 仿真中的错误。该版本还改进了 HVF 上的 ARM 虚拟化功能，修复了 VNC 性能问题，并通过支持 RSS 增强了 virtio-net 迁移功能。

**[hplip](https://developers.hp.com/hp-linux-imaging-and-printing) 3.25.6**：这款 HP  Linux 打印软件现在支持更多打印机，包括 HP LaserJet Enterprise Flow MFP 8601z、HP Envy Photo 7900 系列和 HP OfficeJet Pro 9130 系列。它还修复了打印机设置过程中的崩溃问题，并提高了与某些配置文件的兼容性。

**[opensuse-welcome](https://github.com/openSUSE/opensuse-welcome) 0.1.10**：openSUSE 安装后显示的欢迎应用程序已进行简化。现在，它在 GNOME 桌面环境中会自动隐藏，[移除了未使用的选项](https://www.suse.org.cn/%E7%A4%BE%E5%8C%BA%E6%96%B0%E9%97%BB/2025/08/26/os-welcome-makeover.html)，并新增了多种语言的翻译，为用户带来更流畅的体验。

**[wireless-regdb](https://wireless.wiki.kernel.org/en/developers/Regulatory) 20250710**：此更新提升了全球范围内的 Wi-Fi 兼容性。它为英国、巴西、埃及、印度尼西亚和越南等多个国家/地区添加了 6 GHz 频段使用的更新法规，从而支持更快、更稳定的无线连接。

**[GTK3](https://www.gtk.org/) 3.24.50**：主题已更新，包含优化后的 CSS 样式、更好的符号图标支持以及全新的“进度处理中”图标，同时移除了对硬编码 Cantarell 字体的依赖。`GtkShortcutsWindow` 现在会通过视觉方式区分所有小键盘符号，进一步提升了可访问性。集成能力方面，允许非沙箱应用程序向桌面门户注册，以提高在现代环境中的兼容性。重要修复内容包括：解决 Wayland 环境下的崩溃问题、改进 X11 环境下的窗口几何处理，以及让组合键序列的视觉效果可配置，从而更好地控制输入。打印支持也得到优化，实现了与 [libcups](https://openprinting.github.io/cups/) 3 的兼容。

**[libvirt](https://libvirt.org/) 11.6.0**：此版本新增了一个标志，允许在任意主机上计算基准 CPU 型号，简化了跨主机兼容性配置。现在可通过 `qemu.conf` 控制 QEMU TLS 设置，有助于避免实时迁移过程中可能出现的崩溃问题。对于 s390 架构虚拟机，已默认禁用过时的 CPU 型号功能，确保将工作负载迁移到较新系统时具备更好的兼容性。多项增强功能提升了易用性与兼容性，例如在 ARM 和 RISC-V 架构上，将默认 SCSI 控制器型号切换为 virtio-scsi，以获得更优的操作系统支持。用户现在可为块设备设置零丢弃粒度（zero discard granularity），帮助 Windows 等系统避免不必要的磁盘裁剪（disk trimming）操作。此外，还新增了 `bhyveload` 的超时处理机制，改进了 NSS 模块的调试功能，并放宽了 TLS 证书要求，以更好地支持 [TLS 1.3](https://de.wikipedia.org/wiki/Transport_Layer_Security)。

**[Qt](https://www.qt.io/product/qt6) 6.9.2**：此次更新包含更精准的 URL 处理、更严格的 `QByteArray::toDouble()` 解析、更完善的字体族支持，以及窗口焦点和方向报告相关的漏洞修复。多媒体模块修复了崩溃问题，实现了更可靠的 FFmpeg 集成；WebEngine 和 Wayland 的稳定性得到提升；QML 和 Qt Quick 则解决了崩溃、渲染异常及输入故障等问题。SQLite、libpng、libjpeg-turbo 和 Harfbuzz 等捆绑库均已更新，为开发工作提供了更安全、更可靠的基础环境。

**[PHP 8](https://www.php.net/) 8.4.12**：此版本解决了属性处理、迭代器、生成器及编译器崩溃相关的问题。LDAP、LibXML 和 MbString 模块获得稳定性更新，可防止段错误和关机崩溃。Opcache 优化避免了“释放后使用”错误，以及与钩子和 JIT 重启相关的崩溃问题。OpenSSL 相关修复则解决了密钥派生过程中不正确的返回值检查和段错误问题。

## 错误修复和安全更新

**[tpm2-0-tss](https://github.com/tpm2-software/tpm2-tss) 4.1.3**：此更新提升了 TPM2 软件栈的稳定性与 POSIX 兼容性。其中，4.1.3 版本修复了在特定链接器上执行 `dlopen()` 函数时出现的名称冲突问题；4.1.2 版本修正了 `configure.ac` 文件中的一个 POSIX 兼容性问题，并将已过时的 `which` 命令替换为 `command -v`；4.1.1 版本则修复了发布压缩包（release tarballs）中未正确包含 `.map` 和 `.def` 文件的问题，确保打包流程正常进行。总体而言，此次发布的版本聚焦于兼容性提升、构建流程优化，以及在各支持环境下增强软件可靠性。

本月修复了多个关键安全漏洞，涉及的 [通用漏洞披露问题](https://zh.wikipedia.org/wiki/公共漏洞和暴露) 包括：

### 安全更新

**[postgresql](https://www.postgresql.org/) 17.6**：
- **[CVE-2025-8713](https://www.suse.com/security/cve/CVE-2025-8713.html)**：修复了 PostgreSQL 优化器统计信息可能在视图、分区或子表中泄露采样数据的问题。
- **[CVE-2025-8714](https://www.suse.com/security/cve/CVE-2025-8714.html)**：修补了 `pg_dump` 中的漏洞，该漏洞允许源服务器上的超级用户在 `psql` 客户端中执行任意代码。
- **[CVE-2025-8715](https://www.suse.com/security/cve/CVE-2025-8715.html)**：解决了 `pg_dump` 中的缺陷——对象名称中的换行符可能会在 `psql` 客户端和恢复目标服务器中触发任意代码执行。

**[QEMU](https://www.qemu.org/) 10.0.3**：
- **[CVE-2025-54566](https://www.suse.com/security/cve/CVE-2025-54566.html)**：修复了迁移状态不一致的问题，该问题可能引发意外行为，甚至可能导致拒绝服务（denial-of-service）。
- **[CVE-2025-54567](https://www.suse.com/security/cve/CVE-2025-54567.html)**：解决了 QEMU 的 SR-IOV代码（`hw/pci/pcie_sriov.c`）中处理 VF 启用位写掩码时的逻辑缺陷，该缺陷可能导致对虚拟功能配置的不当控制。

**[python-pycares](https://pypi.org/project/pycares/) 4.10**：
- **[CVE-2025-48945](https://www.suse.com/security/cve/CVE-2025-48945.html)**：修复了 Python 模块 **pycares** 中的“释放后使用”漏洞。该漏洞下，当 DNS 查询仍处于挂起状态时，`Channel` 对象可能被垃圾回收机制回收，进而导致解释器崩溃。

**[unbound](https://github.com/NLnetLabs/unbound/releases)**：
- **[CVE-2025-5994](https://www.suse.com/security/cve/CVE-2025-5994.html)**：存在一个多厂商缓存投毒漏洞，该漏洞被称为“生日攻击”（Rebirthday Attack），影响支持 EDNS 客户端子网（ECS）的缓存型 DNS 解析器。这种子网隔离机制使得攻击者可利用生日悖论，通过非 ECS 投毒响应猜测 DNS 事务 ID，从而污染缓存。

**[glibc](https://www.gnu.org/software/libc/)**：
- **[CVE-2025-7039](https://www.suse.com/security/cve/CVE-2025-7039.html)**：修复了一个缓冲区下溢（buffer underrun）漏洞，该漏洞可能导致内存损坏或系统不稳定。

**[Python](https://www.python.org/)**：
- **[CVE‑2025‑8194](https://www.suse.com/security/cve/CVE-2025-8194.html)**：解决了 CPython 中 `tarfile` 模块的一个高严重性无限循环与死锁漏洞。当解析恶意构造的、包含负偏移量条目的 `.tar` 归档文件时，存在漏洞的代码无法正确验证这些偏移量，可能导致无限循环和解析器死锁。该问题已在 Python 3.14.0 中修复，并提供了回溯补丁。

**[GnuTLS](https://www.gnutls.org/manual/gnutls.html) 3.8.10**：
- **[CVE-2025-6395](https://www.suse.com/security/cve/CVE-2025-6395.html)**：修复了 GnuTLS 中 `_gnutls_figure_common_ciphersuite()` 函数的空指针解引用问题。当第二个 Client Hello 消息省略预共享密钥时，该问题可能导致内存损坏或拒绝服务。
- **[CVE-2025-32989](https://www.suse.com/security/cve/CVE-2025-32989.html)**：修补了 GnuTLS 在解析 X.509 证书过程中处理证书透明度（CT）已签名证书时间戳（SCT）扩展时的堆缓冲区读越界（heap-buffer-overread）漏洞。特制的 SCT 扩展可能导致敏感数据泄露。
- **[CVE-2025-32988](https://www.suse.com/security/cve/CVE-2025-32988.html)**：解决了 GnuTLS 中因主题备用名称（SAN）导出逻辑对 `otherName` 条目所有权处理不当导致的双重释放漏洞。格式错误的 OID 数据可能触发内存两次释放，进而导致内存损坏或拒绝服务。
- **[CVE-2025-32990](https://www.suse.com/security/cve/CVE-2025-32990.html)**：修复了 GnuTLS 中 `certtool` 模板解析逻辑的单字节偏移堆缓冲区写越界问题。读取特定模板文件设置时，该问题可能导致在预期边界外写入空指针，引发内存损坏和拒绝服务。

建议用户更新到最新版本，以缓解这些漏洞带来的风险。

## 总结

8 月的更新进一步印证了为何 [openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) 能成为顶级的滚动发布版——它始终为用户带来前沿标准、完善的桌面环境以及及时的安全修复。从新增尖端硬件支持，到优化开发工具，这款发行版持续高速演进。用户不仅能稳定可靠地享受系统稳定性与安全性，还能紧跟开发节奏，持续获得更新体验。

## Slowroll 的更新

请注意，上述更新同样适用于 [Slowroll](https://en.opensuse.org/Archive:Old_Slowroll_Page) 发行版，通常会在 Tumbleweed 快照发布后的 5 至 10 天 内推送。这一月度同步机制已稳定运行数月，能确保用户在获得可靠性的同时，也能及时接收功能与安全增强。Slowroll 的更新包会定期通过 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 发布公告。

## 为 openSUSE Tumbleweed 做贡献

您可以通过订阅 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 获取最新的快照更新信息。如果您希望参与贡献或深入技术讨论，该邮件列表是交流的核心平台。openSUSE 团队欢迎用户通过以下方式参与，包括提交错误报告、提出功能建议、参与社区讨论。

您的每一次反馈和贡献，都在帮助 Tumbleweed 变得更好。无论是报告错误、提出功能建议，还是参与社区讨论，您的参与都极具价值。

---
原文：[Tumbleweed Monthly Update - August 2025](https://news.opensuse.org/2025/09/02/tw-monthly-update-august/)，作者：Douglas DeMaio
