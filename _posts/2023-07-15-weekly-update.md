---
author: Poplar at twilight
date: 2023-07-15 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Tumbleweed 给 KDE 用户带来了 Frameworks、Gear 更新
image: /assets/posts/2023-07/kden.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周，[openSUSE] 的滚动分支 [Tumbleweed] 为 KDE 带来了 [Frameworks] 和 [Gear] 的更新包。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[Frameworks]: https://kde.org/announcements/frameworks/5/5.108.0/
[Gear]: https://kde.org/announcements/gear/23.04.3/
[KDE]: https://kde.org/

本周发布的快照含有各种增强功能和错误修复。

最新的快照 [20230712] 更新了 [GCC] 13.1.1 以及与自适应 Linux 平台（Adaptable Linux Platform）有关架构水平变更。一个补丁也被删除了。快照还将 [Linux Kernel] 更新至 6.4.2 版本，解决了在访问和更新虚拟内存区域的锁处理不正确时，导致释放后使用问题的 [CVE-2023-3269]。用于复制文件的 [cpio] 向后移植了一些上游修复程序，刷新了一些补丁并删除了四个补丁。快照中更新了一些 [GNOME] 软件包。[gnome-shell] 44.3 中进行了各种错误修复，一些清理和更新的翻译；它还修复了放大镜的光标偏移问题。[mutter] 44.3 进行了改进，以确保始终包含首选监视器模式并避免快速切换动态最大渲染时间。它还修复了动态最大渲染时间的问题。此外，还有各种错误修复和更新的翻译。[yast2-storage-ng] 4.6.12 的更新确保为 [MicroOS] 正确添加存储支持包，MicroOS 使用自定义分区建议客户端而不是其他特定客户端。快照中还更新了其他几个软件包。

[20230712]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/K364RTOIQ64CDQYTKT7KVLNZHPGYQGR5/
[GCC]: https://gcc.gnu.org/
[Linux Kernel]: https://www.kernel.org/
[CVE-2023-3269]: https://www.suse.com/security/cve/CVE-2023-3269.html
[cpio]: https://www.gnu.org/software/cpio/
[GNOME]: https://www.gnome.org/
[gnome-shell]: https://wiki.gnome.org/Projects/GnomeShell
[mutter]: https://gitlab.gnome.org/GNOME/mutter
[yast2-storage-ng]: https://github.com/yast/yast-storage-ng
[MicroOS]: https://get.opensuse.org/microos/

快照 [20230710] 中仅更新了一个包。一次性密码工具包 [oath-toolkit] 更新至 2.6.8 版本，带来了一些变化。[libpskc] 组件已更新，以解决与最新 [libxmlsec] 版本的兼容性问题，从而确保平稳运行以及与最新库的正确集成。`pam_oath` 中的身份验证过程已得到改进，以避免在特定情况下 `pam_modutil_getpwnam` 无法识别用户时失败。`pam_oath` 的自测试功能也得到了增强。

[20230710]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GTH3UH26MLM7CUTWY7LXSWXKZ6Y5KZLD/
[oath-toolkit]: https://www.nongnu.org/oath-toolkit/
[libpskc]: https://www.nongnu.org/oath-toolkit/libpskc-api/pskc-tutorial-library.html
[libxmlsec]: https://www.aleksey.com/xmlsec/index.html

快照 [20230709] 发布了 [KDE Frameworks 5.108.0]。[Kirigami] 修复了一些错误，改进了一些功能，并通过确保通知的正确行为和优先考虑用户输入事件以获得响应更快的界面来增强用户体验。[KIO] 的更新恢复了与 Plasma 文件对话框的兼容性，`previewjob` 现在在访问 `thumbRootDevice` 设备之前检查其有效性。这些更新改进了 KIO 的功能、修复了错误并增强了用户体验。文件索引和文件搜索包 [Baloo] 修复了参数名称，并进行了更改以正确解析空引用字符串。Baloo 的另一项更改通过将 `UnindexedFileIndexer` 划分为多个较小的事务来提高对尚未索引的文件进行索引的性能。此快照中唯一需要更新的其他软件包是 [Xen] 4.17.1。Xen 解决了 [Bugzilla] 问题中记录的多个上游错误；修复了两个 [CVE]，其中 [CVE-2022-42335] 和 [CVE-2022-42336] 已得到解决。后一个 CVE 解决了 [AMD] 硬件上对虚拟机 SSBD 选择的错误处理，其中虚拟机可能会低于或溢出每核心线程计数器，从而导致设置 SSBD 的尝试无效并导致潜在的安全漏洞。

[20230709]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4LEUM2LBBQWN5CBAESOKRB532LO7IJPH/
[KDE Frameworks 5.108.0]: https://kde.org/announcements/frameworks/5/5.108.0/
[kirigami]: https://github.com/KDE/kirigami
[kio]: https://api.kde.org/frameworks/kio/html/index.html
[Baloo]: https://community.kde.org/Baloo
[xen]: https://xenproject.org/
[Bugzilla]: https://bugzilla.opensuse.org/show_bug.cgi?id=1027519
[cve]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[CVE-2022-42335]: https://www.suse.com/security/cve/CVE-2022-42335.html
[CVE-2022-42336]: https://www.suse.com/security/cve/CVE-2022-42336.html
[amd]: https://www.amd.com/

快照 [20230708] 有一个主要版本更新和浏览器版本更新。新的 [inih] 57 主要增强了处理无符号值和读取 64 位整数的功能；这扩展了库的功能并提高了与不同类型配置的兼容性。用于查看和编辑文件原始数据的 KDE 十六进制编辑器 okteta，已更新至 0.26.12 版本，改进了翻译并解决了与导出和保存功能相关的问题。[Mozilla Firefox] 115.0.1 的主要版本于本周早些时候发布，有一个版本升级。

[20230708]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TTB6FZ2MMSUBKZQ2FPGMH2JIXCYDGP23/
[inih]: https://github.com/benhoyt/inih
[okteta]: https://kde.org/applications/utilities/okteta/
[Mozilla Firefox]: https://www.mozilla.org/

快照 [20230707] 更新了 [KDE Gear 23.04.3]。视频编辑器 [Kdenlive] 更新修复了时间线序列中的一些消失效果和其他同步问题。[kitinerary] 的更新改进了 URL 的处理，并确保 URL 在传递到 Android [API] 和 `QFile` 时得到完全编码。图像查看器 [gwenview] 解决了一个错误，以防止 exiv2 库崩溃。[KMail] 软件包进行了更改，以防止删除某些边距并更新电子邮件主题字段的 HTML 字符。快照中更新了其他几个 [Gear] 软件包，但仅更新了另外一个非 KDE 软件包。[libstorage-ng] 4.5.122 设置了交换激活的优先级，这表明交换分区的处理被赋予更高的优先级，可能会导致更有效的交换利用率。

[20230707]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GE7I2H75DB2MXJEHKGLEJFYZSQSM4CIL/
[KDE Gear 23.04.3]: https://kde.org/announcements/gear/23.04.3/
[Kdenlive]: https://kdenlive.org/en/
[kitinerary]: https://apps.kde.org/itinerary/
[API]: https://en.wikipedia.org/wiki/API
[gwenview]: https://apps.kde.org/gwenview/
[KMail]: https://apps.kde.org/kmail2/
[Gear]: https://kde.org/announcements/gear/23.04.3/
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng

快照 [20230706] 发布了 [Mozilla Firefox] 最新的主要版本：115。Firefox 现在可以将基于 Chrome 的浏览器中保存的支付方式迁移到 Firefox。Linux 上的 [Intel] GPU 启用了硬件视频解码。选项卡管理器下拉列表包括用于更快关闭选项卡的关闭按钮。缺少 H264 视频解码支持的用户可以回退到 Cisco 的 OpenH264 插件。openSUSE 的硬件检测工具 [hwinfo] 更新至新的主要版本；hwinfo 23.1 调整了导出符号，以匹配 `yast2-hardware-detection` 中的测试用例以及与 [PPPoE] 相关的编译警告。[Python] 3.11.4 的更新修复了一些安全漏洞。[CVE-2007-4559] 的补丁也被删除。电源包 upower 更新至 1.90.1 版本。其变化包括在关闭时检测并自动隐藏带内置电池的耳机，从而隐藏重复的罗技蓝牙和无线设备。快照中要更新的其他软件包有 [gnome-maps] 44.3、[gupnp] 1.6.4、libxcrypt 4.4.35 等。

[20230706]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NAPCDHWTXJLVWVMMGNP7VV3HZOPJZPY2/
[Intel]: https://www.intel.com/
[hwinfo]: https://github.com/openSUSE/hwinfo
[PPPoE]: https://en.wikipedia.org/wiki/Point-to-Point_Protocol_over_Ethernet
[python]: https://www.python.org/
[CVE-2007-4559]: https://www.suse.com/security/cve/CVE-2007-4559.html
[upower]: https://upower.freedesktop.org/
[gnome-maps]: https://gitlab.gnome.org/GNOME/gnome-maps
[gupnp]: https://gitlab.gnome.org/GNOME/gupnp
[libxcrypt]: https://github.com/besser82/libxcrypt/

------

原文：[Tumbleweed Brings KDE Users Frameworks, Gear Updates](https://news.opensuse.org/2023/07/14/tw-brings-kde-users-frameworks-gear-up/)，作者：Douglas DeMaio
