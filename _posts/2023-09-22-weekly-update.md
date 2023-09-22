---
author: Poplar at twilight
date: 2023-09-22 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Health-Checker 和 KDE Gear 等软件包在 Tumbleweed 中更新
image: /assets/posts/misc/opensuse-laptop.gif
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 本周为用户提供了一些快照。

其中有几个面向 [KDE] 用户的软件包已更新。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[KDE]: https://kde.org/

快照 [20230917] 将用于检查以确保系统在更新后正常运行的 [health-checker] 更新至 1.10 版本。新版本修复了一个会报告 [systemctl] 的无效选项错误的日志检查错误。根据 [bugzilla 报告]，这由 openSUSE [kiwi] 变更引起的错误虽然不是一个严重问题，但可能会向日志发送垃圾信息。[OpenSSL] 1.1.1w 的更新修复了一个 [CVE]，该漏洞不会影响 Linux 系统，并且修复了防止 [XMM 寄存器]损坏的问题，确保了应用程序的稳定性。[snapper] 0.10.6 修复了在根目录中创建文件的问题，并提供了处理 `info.xml` 文件的改进。[libwebp] 1.3.2 的安全更新专门处理了可能允许远程攻击者通过精心设计的 HTML 页面执行越界内存写入的 [CVE-2023-4863]。快照中还更新了 [groff] 1.23.0、[tiff] 4.6.0 等。

[20230917]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CZ7SBSHFLDQIQ4YK7IWMHY6LF5KYRXFO/
[health-checker]: https://github.com/openSUSE/health-checker
[systemctl]: https://www.freedesktop.org/software/systemd/man/systemctl.html
[kiwi]: https://opensuse.github.io/kiwi/
[OpenSSL]: https://www.openssl.org/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[XMM 寄存器]: https://en.wikipedia.org/wiki/Streaming_SIMD_Extensions#Registers
[libwebp]: https://developers.google.com/speed/webp/
[CVE-2023-4863]: https://www.suse.com/security/cve/CVE-2023-4863.html
[groff]: https://www.gnu.org/software/groff/
[tiff]: http://www.simplesystems.org/libtiff/
[bugzilla 报告]: https://bugzilla.opensuse.org/show_bug.cgi?id=1215368
[snapper]: https://github.com/openSUSE/snapper

除了 [KDE] [Gear 23.08.1] 的更新之外，快照 [20230915] 还更新了一个软件包。这个软件包是 [gtkmm4] 4.12.0，它在使用 [GTK] 简化 C++ 开发方面做了一些改进。gtkmm4 还引入了一个弃用项，并改进了文档，对 GTK 中的托管和非托管部件进行了更清晰的解释。Gear 23.08.1 更新包含多项改进和错误修复。其中包括 [kitinerary] 的更新，它扩展了条形码提取功能，并增强了各种情况下的票据处理能力。[KMail] 对预处理宏 HAVE_X11 的定义进行了一些修复。重启游戏时重置了 KNavalBattle 的统计数据。[Konsole] 修复了一个崩溃问题，[Gwenview] 改进了使用鼠标侧键导航和设置菜单覆盖问题。[Okular] 的更新修复了 PDF 中的对象创建和按钮图标问题。

[Gear 23.08.1]: https://kde.org/announcements/gear/23.08.1/
[20230915]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/BLSP2SWPIVGDGJTB66WMPHYR6SZ34NTP/
[gtkmm4]: https://www.gtkmm.org/en/index.html
[GTK]: https://www.gtk.org/
[kitinerary]: https://github.com/KDE/kitinerary
[KMail]: https://github.com/KDE/kmail
[Konsole]: https://konsole.kde.org/
[Gwenview]: https://apps.kde.org/gwenview/
[Okular]: https://okular.kde.org/

快照 [20230914] 并不在上一次 Tumbleweed 更新中，但它确实有一些重要更新。快照为 [KDE] 用户提供了更多更新。[Plasma 5.27.8] 更新了应用程序安装程序 [Discover]，并修复了一些 [Flatpak] 崩溃问题以提高稳定性。[Breeze] 的更新修复了 [HiDPI] 显示器上的分隔符位置，并移除了额外的 1px 填充以改善视觉美感。[plasma5-desktop 5.27.8] 软件包修复了 [X11] 上与触摸板相关的崩溃问题，还包含大量其他修复和改进。[btrfsprogs] 6.5.1 的更新解决了启用 [PIE] 或 [relro] 时与 [crc32c] 有关的问题。规范文件不再依赖 [xmlto] 来构建文档。[GCC] 13.2.1+git 更新解决了与 [aarch64] 相关的 `-fstack-protector` 问题，修复了 [CVE-2023-4039]。Xfce 用户也收到了更新。[xfce4-whiskermenu-plugin] 2.8.0 更新修复了 [Wayland] 中的菜单问题，添加了特定菜单实例和中屏显示等新功能，简化了设置，并提高了与 [Xfce 4.14] 的兼容性。

[20230914]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6VVTB7ZTMBSFGSQ6AYV2YG6YBI6RKXBC/
[Plasma 5.27.8]: https://kde.org/announcements/plasma/5/5.27.8/
[Flatpak]: https://flatpak.org/
[Discover]: https://apps.kde.org/discover/
[HiDPI]: https://wiki.archlinux.org/title/HiDPI
[X11]: https://en.wikipedia.org/wiki/X_Window_System
[plasma5-desktop 5.27.8]: https://kde.org/plasma-desktop/
[btrfsprogs]: https://btrfs.wiki.kernel.org/
[PIE]: https://en.wikipedia.org/wiki/Position-independent_code
[relro]: https://guyinatuxedo.github.io/7.2-mitigation_relro/index.html
[crc32c]: https://github.com/google/crc32c
[xmlto]: https://pagure.io/xmlto
[GCC]: https://gcc.gnu.org/
[aarch64]: https://en.wikipedia.org/wiki/AArch64
[CVE-2023-4039]: https://www.suse.com/security/cve/CVE-2023-4039.html
[xfce4-whiskermenu-plugin]: https://gottcode.org/xfce4-whiskermenu-plugin/
[Wayland]: https://wayland.freedesktop.org/
[Xfce 4.14]: https://xfce.org/about/news/?post=1565568000

------

原文：[Health-Checker, Gear, More update in Tumbleweed](https://news.opensuse.org/2023/09/22/healthchecker-gear-up-in-tw/)，作者：Douglas DeMaio