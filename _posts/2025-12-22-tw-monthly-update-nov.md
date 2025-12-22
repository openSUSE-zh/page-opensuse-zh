---
author: Fangzhou Liu
date: 2025-12-22 09:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Tumbleweed 每月更新 - 2025 年 11 月
image: /assets/posts/2025-12/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---
11 月 [openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) 的软件包更新节奏平稳，在全技术栈层面实现了用户可见的功能改进与深度技术漏洞修复。

[Plasma 6.5.3](https://get.opensuse.org/tumbleweed/) 桌面环境与 [KDE Gear 25.08.3](https://get.opensuse.org/tumbleweed/) 应用套件聚焦于 KDE 桌面及应用的稳定性优化与细节打磨；[GNOME 49.2](https://get.opensuse.org/tumbleweed/) 则带来更流畅的会话运行表现、更少的程序冻结问题及更可靠的系统管控能力。该滚动更新版本同步完成了 [Kernel Source 6.17.9](https://get.opensuse.org/tumbleweed/)、[Mesa 25.3.0](https://get.opensuse.org/tumbleweed/)、[PipeWire 1.5.83](https://get.opensuse.org/tumbleweed/) 等多项重要组件更新。本月安全修复同样覆盖广泛，涉及内核、X.Org Server、Firefox、grub2、OpenEXR 及多款网络组件。

若更新后出现任何问题，请务必通过 [snapper](https://github.com/openSUSE/snapper) 工具执行回滚操作。

如需查阅本月更新日志的详细内容，可访问 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)。

## 新功能和增强功能
**Plasma [6.5.3](https://kde.org/announcements/changelogs/plasma/6/6.5.2-6.5.3/) 与 [6.5.2](https://kde.org/announcements/plasma/6/6.5.2/)**：6.5.3 版本更新聚焦于桌面的细节优化与稳定性提升。[KWin](https://invent.kde.org/plasma/kwin) 获得多项修复，包括窗口截图的正确缩放、休眠后 DRM 处理的改进、X11 测试隔离的优化，同时解决了弹窗激活和模糊对比度问题。[Breeze](https://invent.kde.org/plasma/breeze) 与 [breeze-gtk](https://invent.kde.org/plasma/breeze-gtk) 修复了菜单和 GTK4 应用主题中的视觉故障，例如缺失的展开箭头和不正确的圆角半径。6.5.2 版本更新为 [Discover](https://invent.kde.org/plasma/discover) 等核心组件提供了修复，该应用现在能在部分发行版上正确处理固件包。[KWin](https://invent.kde.org/plasma/kwin) 解决了崩溃问题、改进了屏幕录制清理机制、修复了 Xwayland 下的光标和剪贴板行为，并处理了 FPS 插件和截图工具的显示问题。其他修复包括 [Plasma Addons](https://invent.kde.org/plasma/plasma-addons) 中面板小程序稳定性的提升、移动设备任务切换体验的优化、时区翻译的正确处理，以及 [plasma-welcome](https://github.com/openSUSE/gnome-tour) 中日志功能的增强。

**[KDE Gear 25.08.3](https://kde.org/announcements/changelogs/gear/25.08.3/)**：[Dolphin](https://apps.kde.org/dolphin) 解决了缩放重置、中键打开和分屏视图尺寸调整相关问题；[Kdenlive](https://apps.kde.org/kdenlive) 修复了与剪辑粘贴、监视器切换相关的崩溃问题，同时改进了图像序列检测和字幕样式设置。[Kate](https://apps.kde.org/kate) 修复了其 LSP 插件中的焦点和文档处理问题；[Itinerary](https://apps.kde.org/itinerary) 与 [Kitinerary](https://api.kde.org/kdepim/kitinerary/html/) 新增了多款交通票据提取器（包括 [葡萄牙铁路](https://en.wikipedia.org/wiki/Comboios_de_Portugal) 和 [维也纳交通公司](https://en.wikipedia.org/wiki/Wiener_Linien)）；[KMail](https://apps.kde.org/kmail) 减少了诈骗警告的误报率。其他更新包括 [KDE Connect](https://apps.kde.org/kdeconnect/) 中支持翻译的设置项、Kdenlive 中缺失 SVG 文件类型的修复，以及 [Okular](https://apps.kde.org/okular)、[NeoChat](https://apps.kde.org/neochat) 和 [KWalletManager](https://apps.kde.org/kwalletmanager5/) 等应用的轻微界面优化与稳定性修复。

**[KDE Frameworks 6.20.0](https://kde.org/announcements/frameworks/6/6.20.0/)**：这一最新框架版本改进了 [KContacts](https://invent.kde.org/frameworks/kcontacts) 对 vCard 4 属性（如照片和逝世日期）的处理，同时优化了 [KIO](https://api.kde.org/frameworks/kio/html/index.html) 对网络文件系统中回收站的检测能力。关键修复包括 [KWallet](https://apps.kde.org/kwalletmanager5/) 采用现代会话管理提升安全性、减少 [KImageFormats](https://github.com/KDE/kimageformats) 图像格式插件处理畸形文件时的崩溃情况，以及 [Kirigami](https://github.com/KDE/kirigami) 中覆盖层和操作工具栏的用户界面一致性优化。该版本还通过移除过时的版本检查、改进 Extra CMake Modules 中的 [CMake](https://cmake.org/) 模块策略，实现了与 [Qt](https://www.qt.io/product/qt6) 6.8+ 版本的兼容适配。

**[Pillow](https://python-pillow.org/) 12.0.0**：这一主要版本对 Python 图像处理功能进行了现代化升级，带来更优的性能、更简洁的 API 以及更新的编解码器支持，提升了日常图像处理和开发流程的可靠性。用户可受益于 libjpeg-turbo、libpng、FreeType 和 WebP 等更新后的图像库，这些库优化了格式支持能力与渲染质量。开发者则获得了更严格的类型提示、改进的测试机制，以及 ImageText 新功能和增强的 TIFF 处理能力。该版本不再支持 Python 3.9 及非常老旧的 FreeType 版本，因此旧版运行环境可能需要升级，但相应地，用户能获得一个速度更快、维护更完善的图像处理技术栈。

**[GNOME](https://www.gnome.org/) 49.2**：此次更新显著减少了系统冻结情况，优化了窗口运行流畅度，同时提升了锁屏通知、网络指示器和键盘输入的可靠性。显示校准、离线更新和屏幕键盘功能也变得更加稳定。本月下旬，[GDM](https://gitlab.gnome.org/GNOME/gdm) 49.2、[GNOME 控制中心](https://gitlab.gnome.org/GNOME/gnome-control-center) 49.2.1 以及 [gnome-session](https://gitlab.gnome.org/GNOME/gnome-session) 49.2 均完成更新。若 [Wayland](https://wayland.freedesktop.org/) 运行失败，自动登录功能现在会正确回退至 X11，避免了棘手的账户锁定问题；此外，控制中心在配置全局快捷键时也不再出现崩溃情况。计算器、[Builder](https://apps.gnome.org/Builder/) 和 [Boxes](https://apps.gnome.org/Boxes/) 等应用清理了一些影响日常使用流程的长期存在的漏洞。

**[Orca](https://wiki.gnome.org/Projects/Orca) 49.5**：本次更新让日常浏览和打字时的屏幕朗读功能更清晰、更易用。用户会发现网页上重复语音播报的情况减少，冗余提示更少，应用和网站中可编辑表格的处理方式也更贴合使用习惯。输入密码的体验也得到优化，空格现在会被正确朗读，而非被静默忽略。

**[switcheroo-control](https://gitlab.freedesktop.org/hadess/switcheroo-control) 3.0**：这一主要版本更新优化了混合显卡笔记本电脑对核显与独显的检测及切换逻辑，该改进直接影响游戏性能、电池续航和桌面流畅度。新 API 如今能稳定识别采用 [AMD](https://www.amd.com/en)、[Intel](https://www.intel.com/)、[NVIDIA](https://www.nvidia.com) 和 [Nouveau](https://nouveau.freedesktop.org/) 驱动的独显，减少了应用程序无法选择正确显卡的情况。由于支持通过 `VK_LOADER_DRIVERS_SELECT` 选择驱动，Vulkan 处理流程更为简洁，使得显卡密集型工具的运行表现更可预测。

**[GStreamer](https://gstreamer.freedesktop.org/) 1.26.8**：本次更新修正了启用字幕时的色彩显示问题，减少了尺寸异常或子采样视频出现的故障，同时让流媒体或会议类应用中的封装处理和 RTP 传输更流畅。开发者可受益于更快的 pad 转发速度、更完善的 AAC 和 AV1 解析能力、优化的 WebRTC 死锁规避机制，以及更清晰的错误提示信息。

**[PipeWire](https://pipewire.org/) 1.5.83**：用户会发现该版本同步问题更少，蓝牙/HDMI 设备切换更稳定。流媒体传输表现也有所提升，尤其是基于 RTP 的工具和启用回声消除的应用。开发者获得了更清晰的格式解析错误提示、更灵活的多声道支持，以及 GStreamer 和 SPA 组件中更安全的重新协商逻辑。尽管这是一个候选版本，但仍保持完整的 ABI 兼容性。额外的修复措施减少了专业音频、游戏和桌面场景下出现的各类故障。

## 关键软件包更新

**[Kernel Source](https://www.kernel.org/) 6.17.9**：此次更新为 [AMD](https://www.amd.com/en) 和 [Intel](https://www.intel.com/) 显卡修复了休眠失败、显示异常及性能相关问题。存储系统与文件系统（NFS、SMB、exFAT、EROFS）的可靠性得到提升，减少了系统停滞和数据损坏的风险。网络与输入设备方面，针对 Wi-Fi、以太网及 HID 外设的定向漏洞修复已完成。[Futex](https://en.wikipedia.org/wiki/Futex) 和 [输入输出内存管理单元（IOMMU）](https://en.wikipedia.org/wiki/Input%E2%80%93output_memory_management_unit) 的更新优化了内存处理机制，并解决了虚拟化场景下的边缘案例问题。

**[OpenSSH](https://www.openssh.com/) 10.2p1**：该更新提升了连接可靠性，同时增强了日常使用 SSH 协议用户的前瞻性安全性。通过修复 ControlPersist 终端相关问题，会话稳定性显著提升；代理或 PKCS#11 令牌的密钥处理逻辑也更趋一致。此外，QoS（服务质量）机制更智能：交互式会话响应速度更快，而文件传输则自动回落至正常网络优先级。OpenSSH 现已开始逐步淘汰安全性较弱的 SHA1 SSHFP 记录，并会在使用非后量子算法时发出警告，在不破坏现有配置的前提下，引导用户采用更安全的默认设置。

**[libvirt](https://libvirt.org/) 11.9.0**：此版本新增了主机模型模式，可精准显示 Hyper-V 中哪些优化功能处于激活状态，让 Hyper-V 的配置透明度媲美 GPU 相关设置；同时，Cloud Hypervisor 虚拟机终于支持网络接口热插拔。USB 控制器选择逻辑更智能，且在不同架构间保持一致性；[NVMe](https://nvmexpress.org/) 磁盘和 virtio 内存模型也获得了更简洁、更安全的配置选项。

**[Mesa](https://www.mesa3d.org/) 25.3.0 与 25.2.7**：25.3.0 版本新增了 OpenGL 4.6 和 Vulkan 1.4 API 支持（具体取决于驱动），同时为多款驱动添加了视频编码、原子操作、健壮上下文处理及着色器功能相关扩展。大量驱动漏洞和特定游戏崩溃问题已得到修复。25.2.7 版本为《无主之地 4》([Borderlands 4](https://store.steampowered.com/app/1285190/Borderlands_4/))、《生化危机 4：逆命殊途》([RE4 Separate Ways](https://store.steampowered.com/app/2109300/Resident_Evil_4__Separate_Ways/))、《无人深空》([No Man’s Sky](https://store.steampowered.com/app/275850/No_Mans_Sky/))、《无尽传奇 2》([Endless Legend 2](https://store.steampowered.com/app/3407390/ENDLESS_Legend_2/)) 和《半影：序曲》([Penumbra: Overture](https://store.steampowered.com/app/22180/Penumbra_Overture/)) 等游戏带来了稳定性与渲染效果的提升。视频编码流程、统一变量更新及 AV1 处理机制也变得更可靠。开发者可受益于更安全的 Vulkan 和 OpenGL 状态处理、修正后的修饰符，以及 ACO、RADV、PanVK 和 llvmpipe 组件的代码清理。尽管该版本未新增功能，但切实带来了更流畅、表现更可预测的 GPU 使用体验。

**[curl](https://curl.se/) 8.17.0**：此次更新修复了多个安全漏洞，包括 SFTP 主机验证缺陷和 Windows 路径遍历问题，让默认配置下的网络传输更加安全。用户和开发者还能享受到更稳定的 TLS 处理、更少的内存泄漏、更完善的套接字管理，以及优化后的 QUIC 和 HTTP/3 稳定性。

**[sdbootutil](https://software.opensuse.org/package/sdbootutil) 1+git20251111.611edd1**：该更新优化了系统启动管理流程，通过简化配置文件、修正软件包摘要信息、减少可能导致工具异常或使用混淆的 rpmlint 相关问题，让日常使用体验更可预测。此版本还增强了兼容性，可识别跟踪参数，并新增了一个 Snapper 插件以支持 `CAP_SYS_CHROOT` 权限，使基于快照的系统恢复机制更健壮。

**[coreutils](https://www.gnu.org/software/coreutils/) 9.9**：本次更新修复了 `cp` 和 `tail` 命令的性能回退问题，让压缩文件或大文件的处理更流畅；同时恢复了 `cksum` 和 `basenc` 对现代格式的正确处理逻辑。开发者和高级用户可受益于 `numfmt` 更安全的解析机制、更可预测的错误处理方式，以及 AVX512 架构系统上更快的 `wc -l` 执行速度。部分边缘场景（如 [Ceph](https://ceph.io/) 快照目录或格式错误的压缩器脚本）的表现也变得更稳定一致。

**[fwupd](https://fwupd.org/) 2.0.17**：该更新减少了固件更新失败的情况，优化了扩展坞和各类设备的激活流程，并增强了对 Framework 智能辅助键盘、更多款 NVMe 固态硬盘等新款硬件的支持。底层层面，fwupd 新增了后量子签名支持、分阶段更新部署机制，优化了缓存处理和 EFI 解析逻辑，还修复了涉及英特尔显卡、扩展坞及嵌套固件镜像的多个崩溃问题。

**[crypto-policies](https://software.opensuse.org/package/crypto-policies) 20250714.cd6043a**：这套系统加密算法策略提供了更强的默认配置，扩展了后量子加密与混合加密支持，优化了 FIPS 模式表现，减少了不同工具间的策略不匹配问题。开发者可受益于更清晰的策略映射关系、更严格的加密套件启用规则，以及支持后量子密码学（PQC）技术栈的测试覆盖范围提升。

## 安全更新

**[curl](https://curl.se/) 8.17.0**：
- **[CVE-2025-10966](https://www.suse.com/security/cve/CVE-2025-10966.html)**：修复了中间人拦截相关漏洞。
- **[CVE-2025-11563](https://www.suse.com/security/cve/CVE-2025-11563.html)**：修复了一项被称为[路径遍历](https://en.wikipedia.org/wiki/Directory_traversal_attack)问题的漏洞。

**[OpenSMTPD](https://www.opensmtpd.org)**：
- **[CVE-2025-62875](https://www.suse.com/security/cve/CVE-2025-62875.html)**：修复了可能触发程序关闭并导致拒绝服务的漏洞。

**[Kernel Source](https://www.kernel.org/) 6.17.7**：
- **[CVE-2025-40013](https://www.suse.com/security/cve/CVE-2025-40013.html)**：修复了高通 ASoC audioreach 驱动中存在的内核空指针解引用问题，该问题可能导致系统崩溃。
- **[CVE-2025-40028](https://www.suse.com/security/cve/CVE-2025-40028.html)**：修复了 binder 子系统中的一处漏洞，该漏洞可能造成内存损坏并引发拒绝服务。
- **[CVE-2025-40027](https://www.suse.com/security/cve/CVE-2025-40027.html)**：修复了文件系统中的一处问题，该问题可能导致内核出现异常行为。
- **[CVE-2025-40026](https://www.suse.com/security/cve/CVE-2025-40026.html)**：修复了 KVM x86 拦截检查缺陷，该缺陷可能导致客户机/主机处理逻辑异常。
- **[CVE-2025-40025](https://www.suse.com/security/cve/CVE-2025-40025.html)**：修复了缺失的健全性检查问题，可防止文件系统损坏。
- **[CVE-2025-40082](https://www.suse.com/security/cve/CVE-2025-40082.html)**：修复了 hfsplus 文件系统中的 slab 越界读取问题，避免潜在的系统崩溃。
- **[CVE-2025-40081](https://www.suse.com/security/cve/CVE-2025-40081.html)**：防止可能导致内存访问错误的整数溢出问题。
- **[CVE-2025-40080](https://www.suse.com/security/cve/CVE-2025-40080.html)**：将 NBD 套接字的使用限制为 TCP/UDP 协议，避免不安全的套接字操作。
- **[CVE-2025-40079](https://www.suse.com/security/cve/CVE-2025-40079.html)**：修复了 [RISC-V](https://riscv.org/) 返回值中不正确的符号扩展处理问题。
- **[CVE-2025-40078](https://www.suse.com/security/cve/CVE-2025-40078.html)**：添加严格的读取边界检查，避免无效的内存访问。
- **[CVE-2025-40077](https://www.suse.com/security/cve/CVE-2025-40077.html)**：修复了左移溢出问题。
- **[CVE-2025-40076](https://www.suse.com/security/cve/CVE-2025-40076.html)**：确保 PCI R-Car 主机使用正确的 IRQ 域，避免中断路由错误。
- **[CVE-2025-40075](https://www.suse.com/security/cve/CVE-2025-40075.html)**：修复了错误的网络度量值查找问题。
- **[CVE-2025-40074](https://www.suse.com/security/cve/CVE-2025-40074.html)**：确保 IPv4 路由正确使用 dst_dev_rcu。
- **[CVE-2025-40073](https://www.suse.com/security/cve/CVE-2025-40073.html)**：在 drm-msm 中，当硬件块非必需时，防止无效的 SSPP 验证。
- **[CVE-2025-40072](https://www.suse.com/security/cve/CVE-2025-40072.html)**：在挂载命名空间查找时添加适当的返回值验证。
- **[CVE-2025-40071](https://www.suse.com/security/cve/CVE-2025-40071.html)**：修复了可能导致数据处理停滞的输入队列阻塞问题。
- **[CVE-2025-40070](https://www.suse.com/security/cve/CVE-2025-40070.html)**：修复了一处警告及不正确的注册行为问题。
- **[CVE-2025-40069](https://www.suse.com/security/cve/CVE-2025-40069.html)**：解决了 drm-msm 在 VM_BIND 错误处理过程中的对象泄漏问题。
- **[CVE-2025-40068](https://www.suse.com/security/cve/CVE-2025-40068.html)**：修复了可能导致内存损坏的整数溢出问题。
- **[CVE-2025-40067](https://www.suse.com/security/cve/CVE-2025-40067.html)**：确保当 BITMAP 数据不一致时，NTFS3 拒绝无效的索引分配。
- **[CVE-2025-40066](https://www.suse.com/security/cve/CVE-2025-40066.html)**：在 mt7996 WiFi 初始化过程中添加必要的 PHY 检查，防止无效操作。
- **[CVE-2025-40065](https://www.suse.com/security/cve/CVE-2025-40065.html)**：修复了 RISC-V KVM 中不正确的 HGATP 写入问题，确保模式设置有效。
- **[CVE-2025-40064](https://www.suse.com/security/cve/CVE-2025-40064.html)**：修复了设备命名空间查找过程中的网络代码问题。
- **[CVE-2025-40063](https://www.suse.com/security/cve/CVE-2025-40063.html)**：确保加密压缩代码中的分配操作一致，防止滥用。
- **[CVE-2025-40062](https://www.suse.com/security/cve/CVE-2025-40062.html)**：修复了空指针赋值问题。
- **[CVE-2025-40061](https://www.suse.com/security/cve/CVE-2025-40061.html)**：修复了可能导致系统崩溃的竞态条件问题。
- **[CVE-2025-40060](https://www.suse.com/security/cve/CVE-2025-40060.html)**：确保分配失败时正确返回 NULL。
- **[CVE-2025-40059](https://www.suse.com/security/cve/CVE-2025-40059.html)**：修复了 Coresight 驱动中不正确的返回值处理问题。
- **[CVE-2025-40018](https://www.suse.com/security/cve/CVE-2025-40018.html)**：防止在命名空间销毁过程中 IPVS 中 FTP 辅助程序过早注销。
- **[CVE-2025-40058](https://www.suse.com/security/cve/CVE-2025-40058.html)**：阻止在不支持一致性 DMA 的 VT-d 硬件上进行脏数据跟踪设置。
- **[CVE-2025-40057](https://www.suse.com/security/cve/CVE-2025-40057.html)**：为 PTP 中的 max_vclocks 添加上限，避免溢出或滥用。
- **[CVE-2025-40056](https://www.suse.com/security/cve/CVE-2025-40056.html)**：修复了 vhost-vringh 的 copy_to_iter 路径中不正确的返回值检查问题，该问题可能触发数据损坏。

**[Unbound](https://www.nlnetlabs.nl/projects/unbound/) 1.24.2**：
- **[CVE-2025-11411](https://www.suse.com/security/cve/CVE-2025-11411.html)**：修复一处漏洞，规避潜在的 DNS 缓存投毒或域名劫持风险。

**[X.Org Server](https://www.x.org/wiki/XServer/) 21.1.21**：
- **[CVE-2022-49737](https://www.suse.com/security/cve/CVE-2022-49737.html)**：修复竞态条件问题，避免引发程序崩溃或异常行为。
- **[CVE-2025-26594](https://www.suse.com/security/cve/CVE-2025-26594.html)**：修复可能访问已释放内存的问题，规避程序崩溃或代码执行风险。
- **[CVE-2025-26595](https://www.suse.com/security/cve/CVE-2025-26595.html)**：修复缓冲区溢出问题，规避内存损坏或程序崩溃风险。
- **[CVE-2025-26596](https://www.suse.com/security/cve/CVE-2025-26596.html)**：修复堆溢出问题，避免造成内存损坏，防止引发程序崩溃或被恶意利用。
- **[CVE-2025-26597](https://www.suse.com/security/cve/CVE-2025-26597.html)**：修复缓冲区溢出问题，规避内存损坏或拒绝服务风险。
- **[CVE-2025-26598](https://www.suse.com/security/cve/CVE-2025-26598.html)**：修复越界写入漏洞，避免覆盖内存，防止引发系统不稳定或被恶意利用。
- **[CVE-2025-26599](https://www.suse.com/security/cve/CVE-2025-26599.html)**：修复一处漏洞，避免引发程序崩溃或不可预测的异常行为。
- **[CVE-2025-26600](https://www.suse.com/security/cve/CVE-2025-26600.html)**：修复一处漏洞，规避潜在的内存损坏或拒绝服务风险。
- **[CVE-2025-26601](https://www.suse.com/security/cve/CVE-2025-26601.html)**：修复无效内存访问或服务器运行不稳定的问题。
- **[CVE-2025-49175](https://www.suse.com/security/cve/CVE-2025-49175.html)**：修复一处漏洞，避免导致服务器崩溃或资源滥用。
- **[CVE-2025-49176](https://www.suse.com/security/cve/CVE-2025-49176.html)**：修复一处缺陷，规避程序崩溃或被恶意利用的风险。
- **[CVE-2025-49177](https://www.suse.com/security/cve/CVE-2025-49177.html)**：修复一处缺陷，避免引发无效指针解引用或服务器运行不稳定。
- **[CVE-2025-49178](https://www.suse.com/security/cve/CVE-2025-49178.html)**：修复一处漏洞，避免触发无效内存访问或拒绝服务。
- **[CVE-2025-49179](https://www.suse.com/security/cve/CVE-2025-49179.html)**：修复缓冲区溢出缺陷，规避程序崩溃或内存损坏风险。
- **[CVE-2025-49180](https://www.suse.com/security/cve/CVE-2025-49180.html)**：修复内存处理漏洞，避免引发无效内存访问或服务器崩溃。
- **[CVE-2025-62229](https://www.suse.com/security/cve/CVE-2025-62229.html)**：修复可能导致显示服务器崩溃或运行不稳定的问题。
- **[CVE-2025-62230](https://www.suse.com/security/cve/CVE-2025-62230.html)**：修复一处漏洞，避免客户端注销资源时出现无效内存访问或拒绝服务。
- **[CVE-2025-62231](https://www.suse.com.security/cve/CVE-2025-62231.html)**：修复数值溢出漏洞，避免引发整数溢出问题。

**[grub2](https://cgit.git.savannah.gnu.org/cgit/grub.git)**：
- **[CVE-2025-54771](https://www.suse.com/security/cve/CVE-2025-54771.html)**：修复可能导致内存损坏或引导加载程序崩溃的问题。
- **[CVE-2025-54770](https://www.suse.com/security/cve/CVE-2025-54770.html)**：修复可能触发引导加载程序崩溃的问题。
- **[CVE-2025-61662](https://www.suse.com/security/cve/CVE-2025-61662.html)**：修复可被恶意操纵的缺陷，避免导致启动过程崩溃或不稳定。
- **[CVE-2025-61663](https://www.suse.com/security/cve/CVE-2025-61663.html)**：修复存在内存损坏或启动失败风险的问题。
- **[CVE-2025-61664](https://www.suse.com/security/cve/CVE-2025-61664.html)**：修复可能导致引导加载程序不稳定或拒绝服务的问题。
- **[CVE-2025-61661](https://www.suse.com/security/cve/CVE-2025-61661.html)**：修复一处漏洞，避免恶意构造的 USB 硬件借此破坏内存、实现任意代码执行或攻陷启动过程。

**[openexr](https://openexr.com/) 3.4.3**：
- **[CVE-2025-64181](https://www.suse.com/security/cve/CVE-2025-64181.html)**：修复处理特制 `.exr` 文件时可能引发程序崩溃或内存损坏的问题。
- **[CVE-2025-64182](https://www.suse.com/security/cve/CVE-2025-64182.html)**：修复一处漏洞，该漏洞可能导致越界操作，存在潜在代码执行风险。
- **[CVE-2025-64183](https://www.suse.com/security/cve/CVE-2025-64183.html)**：修复加载部分图像时影响安全性的问题，规避潜在的内存安全风险。

**[python313](https://www.python.org/)**：
- **[CVE-2025-6075](https://www.suse.com/security/cve/CVE-2025-6075.html)**：修复导致 CPU 占用过高或性能下降的缺陷。
- **[CVE-2025-8291](https://www.suse.com/security/cve/CVE-2025-8291.html)**：修复特制 ZIP 文件可能被错误解析的问题，避免破坏归档完整性或引发异常行为。

**[Xen](https://xenproject.org/) 4.20.1_08**：
- **[CVE-2025-58149](https://www.suse.com/security/cve/CVE-2025-58149.html)**：修复一处虚拟机管理程序缺陷，该缺陷曾可能导致客户机访问内存。

**[python-Brotli](https://pypi.org/project/brotli/) 1.2.0**：
- **[CVE-2025-6176](https://www.suse.com/security/cve/CVE-2025-6176.html)**：修复一处缺陷，该缺陷可能导致远程服务器遭受拒绝服务攻击。

**[Mozilla Firefox](https://www.mozilla.org) 145.0**：
- **[CVE-2025-13021](https://www.suse.com/security/cve/CVE-2025-13021.html)**：修复一处边界检查缺陷，恶意网页可借此实现远程代码执行。
- **[CVE-2025-13022](https://www.suse.com/security/cve/CVE-2025-13022.html)**：修复另一处边界条件漏洞，该漏洞可被利用实现沙箱逃逸或任意代码执行。
- **[CVE-2025-13012](https://www.suse.com/security/cve/CVE-2025-13012.html)**：修复一处竞态条件漏洞，该漏洞被利用后可能导致数据损坏或内存安全受威胁。
- **[CVE-2025-13023](https://www.suse.com/security/cve/CVE-2025-13023.html)**：修复沙箱逃逸问题，避免攻击者突破浏览器沙箱限制。

建议用户更新至最新版本以缓解上述漏洞风险。

## 总结

**[Tumbleweed](https://get.opensuse.org/tumbleweed/)** 在 11 月保持稳定的更新节奏，实现桌面体验优化与核心系统稳定性的双重平衡。Plasma 6.5.3、KDE Gear 25.08.3 及 GNOME 49.2 提升日常使用流畅度，而内核 6.17.9、Mesa 25.3.0 与 PipeWire 1.5.83 则强化图形、音频及硬件支持层面的性能表现。安全防护始终是重中之重，更新覆盖内核、引导加载程序、网络协议栈、浏览器及虚拟化等多个关键领域。

## Slowroll 的更新

请注意，上述更新同样适用于 [Slowroll](https://en.opensuse.org/Archive:Old_Slowroll_Page) 发行版，通常会在 Tumbleweed 快照发布后的 5 至 10 天 内推送。这一月度同步机制已稳定运行数月，能确保用户在获得可靠性的同时，也能及时接收功能与安全增强。Slowroll 的更新包会定期通过 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 发布公告。

## 为 openSUSE Tumbleweed 做贡献

您可以通过订阅 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 获取最新的快照更新信息。如果您希望参与贡献或深入技术讨论，该邮件列表是交流的核心平台。openSUSE 团队欢迎用户通过以下方式参与，包括提交错误报告、提出功能建议、参与社区讨论。

您的每一次反馈和贡献，都在帮助 Tumbleweed 变得更好。无论是报告错误、提出功能建议，还是参与社区讨论，您的参与都极具价值。

---
原文：[Tumbleweed Monthly Update - November 2025](https://news.opensuse.org/2025/12/01/tw-monthly-update-nov/)，作者：Douglas DeMaio
