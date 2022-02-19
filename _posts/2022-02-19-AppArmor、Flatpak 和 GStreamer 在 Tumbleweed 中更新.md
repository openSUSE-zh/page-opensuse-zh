---
author: Hanjingxue Boling
date: 2022-02-19 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: AppArmor、Flatpak 和 GStreamer 在 Tumbleweed 中更新
image: /assets/posts/2022-02/hexchat.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

自我们上次回顾以来，openSUSE [Tumbleweed](https://get.opensuse.org/tumbleweed/) 滚动发行版已经生成了五个快照。

在本周，快照 [20220215](https://rsync.opensuse.org/tumbleweed/iso/Changes.20220215.txt)、[20220214](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/M2CUGHYAOHQXCCCUYFYRQYWGYP4IWGHK/)、[20220213](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4UD4LPTRCEZQ753T3ZIC6KHM3ZVVVQUJ/)、[20220212](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XEETH4P6WSKN332W6CIHRYTUK5FQL2IX/) 和 [20220210](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/A6REB74EEE3JOPZSRTUWK4UXFPG3DZNJ/) 更新了几个工具、库和客户端。

最新的快照 [20220215](https://rsync.opensuse.org/tumbleweed/iso/Changes.20220215.txt) 更新了几个 [PyPI](https://pypi.org/) 和 [RubyGem](https://rubygems.org/) 包。从 [pandas](https://github.com/pandas-profiling/pandas-profiling) `DataFrame` 生成配置文件报告的包修复了近十几个回归并恢复了性能加速以修复精确回归。 RubyGem 包 [rubygem-faraday](https://rubygems.org/gems/faraday/versions/2.1.0)，它是一个 HTTP/REST [API](https://en.wikipedia.org/wiki/API) 客户端库，从 1.3.0 更新到 2.1.0 的主要新版本；该软件包添加了一些新功能，例如向后移植授权过程、改进的文档并添加了关于包容性语言的政策。 数据压缩包 [lzip](https://www.nongnu.org/lzip/lzip.html) 1.23 将压缩时间减少了 5% 到 12%，具体取决于文件。文本编辑器 [vim](https://www.vim.org/) 8.2.4375 修复了一些崩溃和一些涉及 [FuncRef](https://docs.godotengine.org/en/stable/classes/class_funcref.html) 的问题。[yast2-trans](https://software.opensuse.org/package/yast2-trans) 84.87.20220211 的更新添加了用于存储、dns-server、[nfs](https://en.wikipedia.org/wiki/Network_File_System) 和 [s390](https://en.wikipedia.org/wiki/IBM_System/390) 的新 [pot](https://www.gnu.org/software/gettext/manual/html_node/PO-Files.html) 文件。

快照 [20220214](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/M2CUGHYAOHQXCCCUYFYRQYWGYP4IWGHK/) 更新了六个包。 [Flatpak](https://flatpak.org/) 1.12.5 现在检测并删除 `/var/lib/flatpak/appstream` 中的剩余数据，并修复了 Flatpak 历史记录中的显示错误；它不会为 flatpak 的历史设置不必要的 [polkit](https://gitlab.freedesktop.org/polkit/polkit) 代理。[gnome-maps](https://wiki.gnome.org/Apps/Maps) 41.4 的更新提供了一些翻译并修复了 [Meson](https://mesonbuild.com/) 0.60 的构建问题。[NetworkManager](https://networkmanager.dev/) 1.34.0 的更新对 Meson 的构建要求进行了多次补充。更新后的 NetworkManager 还拆分出了 NetworkManager-pppoe，用于配置常规的 [PPPoE](https://en.wikipedia.org/wiki/Point-to-Point_Protocol_over_Ethernet) 连接；更新日志指出这并不常见，因为大多数用户都有用于 DSL 连接的 PPPoE 路由器。

互联网中继聊天客户端 [hexchat](https://github.com/hexchat/hexchat) 2.16.1 在快照 [20220213](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4UD4LPTRCEZQ753T3ZIC6KHM3ZVVVQUJ/) 中更新，并使用 [OpenSSL](https://www.openssl.org/) 3 进行了构建修复。hexchat 还修复了 [Python](https://www.python.org/) 脚本未以 [UTF-8](https://en.wikipedia.org/wiki/UTF-8) 格式打开的问题。[GTK4](https://www.gtk.org/) 4.6.1 新增一个用于文本整形引擎 HarfBuzz 的新 API，并且该工具包还修复了对 [Wayland](https://wayland.freedesktop.org/) 新的高对比度设置的支持。[glib2](https://wiki.gnome.org/Projects/GLib) 2.70.4 版本更新了翻译并修复了[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)。快照中要更新的另一个包是 [yast2-installation](https://github.com/yast/yast-installation) 4.4.40，它修复了在 [Qt 5.15](https://www.qt.io/blog/qt-5.15-released) 上运行的一些问题。

[Mesa](https://www.mesa3d.org/) 21.3.6 是快照 [20220212](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XEETH4P6WSKN332W6CIHRYTUK5FQL2IX/) 中更新的众多软件包之一。该更新修复了 [Intel UHD Graphic 620](https://www.intel.com/content/www/us/en/support/products/126789/graphics/graphics-for-8th-generation-intel-processors/intel-uhd-graphics-620.html#support-article-selector) 的闪烁问题，并通过添加 RGB 格式的修饰符进行了一些 [Wayland](https://wayland.freedesktop.org/) 修复。[Apparmor](https://apparmor.net/) 3.0.4 修复了在某些构建环境中的测试期间可能导致 AppArmor 构建失败的构建错误。此内核安全模块还修复了 `socklogd` 的日志解析，并在应用程序中增加了对新的和未来 [Python](https://www.python.org/) 版本的支持。[gnome-software](https://www.gnome.org/) 41.4 更新了日语和冰岛语的翻译。其他要更新的 [GNOME](https://www.gnome.org/) 软件包是 [gnome-autoar](https://gitlab.gnome.org/GNOME/gnome-autoar) 0.4.3、[evolution](https://wiki.gnome.org/Apps/Evolution) 3.42.4 和 [gnome-documents](https://wiki.gnome.org/Apps/Documents) 3.34.0+37，变更日志表示这是 gnome-documents 的最终版本，因为它现在已归档。身份管理包 [sssd](https://sssd.io/) 2.6.3 修复了一些阻止通过 AD 和 IPA 提供程序对用户进行身份验证的关键回归。[btrfsprogs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 5.16.1 更新添加了一些错字修复和新测试。快照中要更新的其他软件包包括 [nano](https://www.nano-editor.org/) 6.1、[pango](https://pango.gnome.org/) 1.50.4、[Linux Kernel](https://www.kernel.org/) 5.16.8 和几个 [YaST](https://yast.opensuse.org/) 软件包。

快照 [20220210](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/A6REB74EEE3JOPZSRTUWK4UXFPG3DZNJ/) 上周发布，带来了 [ImageMagick](https://imagemagick.org/index.php) 7.1.0.23。图像编辑器 ImageMagick 对次要版本进行了一些修复，其中一个修复了会导致增加内存并减慢工具的速度的错误检查。[Mozilla Firefox](https://www.mozilla.org/) 更新至 97.0 ，并取消了对直接生成 PostScript 用于 Linux 上打印的支持。但是，打印到 PostScript 打印机仍然是受支持的选项。最新的 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 3.3.2 进行了一些代码清理，并恢复了 3.3.0 中引入的对定位值的拆分；Tumbleweed 中的先前版本是 3.2.0。[GStreamer](https://gstreamer.freedesktop.org/) 1.18.6 版本修复了插件功能的对象泄漏，并且输入选择器现在在清理缓存缓冲区时使用正确的段。快照中要更新的其他软件包包括 [remmina](https://remmina.org/) 1.4.24、[squid](http://www.squid-cache.org/) 5.4、[webkit2gtk3](https://webkitgtk.org/) 2.34.5 和许多其他软件包。

------

原文：[AppArmor, Flatpak, GStreamer update in Tumbleweed](https://news.opensuse.org/2022/02/18/apparmor-flatpak-gstreamer-in-tw/)，作者：Douglas DeMaio