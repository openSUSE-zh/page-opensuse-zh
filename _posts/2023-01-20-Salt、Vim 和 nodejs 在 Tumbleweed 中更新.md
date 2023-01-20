---
author: Hanjingxue Boling
date: 2023-01-20 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Salt、Vim 和 nodejs 在 Tumbleweed 中更新
image: /assets/posts/misc/Node.js_logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周的 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在每天发布的快照版本中都有稳定数量的软件包。

虽然 [vim](https://www.vim.org/)、[Node.js](https://nodejs.org/en/) 和 [Salt](https://github.com/saltstack/salt) 更新成为头条新闻，但 [AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/)、[KDE Frameworks](https://kde.org/announcements/frameworks/5/5.102.0/) 和 [Linux Kernel](https://www.kernel.org/) 也提供了几个重要更新。

在最新的 [20230118](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CSJPBGIWM6ORBMKFCIOHEBM4VIT5M2R2/) 快照中，[manpages-l10n](https://salsa.debian.org/manpages-l10n-team/manpages-l10n) 更新到 4.17.0 版本，瑞典语现在获得积极维护。该软件包还添加了一种新语言。[ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.4.20230114 的更新进行了为期一周的修复。该软件包改进了与编译器警告相对的配置脚本宏，并且它有一个修复程序以避免与 [vim](https://www.vim.org/) 中预先存在的用法发生冲突。本快照中更新了两个 openSUSE 软件包。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.64 的更新进行了一项更改，允许 `swap` 和 `none` 作为 [fstab](https://en.wikipedia.org/wiki/Fstab) 中的交换路径。[yast2-storage-ng](https://github.com/yast/yast-storage-ng) 4.5.16 进行了更新以使用正则表达式扩展识别 [Dell](https://www.dell.com/) 存储设备。根据变更日志，用于创建补丁文件的实用程序 [diffutils](https://www.gnu.org/software/diffutils/) 已更新至 3.9 版，但未列出针对该平台的任何修复。其他要更新的包是 [python-httpx](https://pypi.org/project/httpx/) 0.23.3 和 [python310-packaging](https://pypi.org/project/packaging/) 23.0。

快照 [20230117](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/PHVV5IDTERCVUV2VKNF32LA5ULDNVR4J/) 更新了 [Node.js](https://nodejs.org/en/) 和 [Linux 内核](https://www.kernel.org/)。[kernel-source](https://www.kernel.org/) 6.1.6 更新通过 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 变更启用了对更多戴尔笔记本电脑的耳麦支持，并且 [netfilter nftables](https://netfilter.org/projects/nftables/) 合并了集合描述并添加了一个函数来创建集合状态表达式。[nodejs19](https://nodejs.org/en/) 更新至 19.4.0，改进了超时默认处理。该软件包还发生了变更，使得 [AArch64](https://en.wikipedia.org/wiki/AArch64) 和 32 位 [arm](https://www.arm.com/) 使用更少的 RAM。[GNOME](https://www.gnome.org/) 的 [tracker-miners](https://gitlab.gnome.org/GNOME/tracker-miners) 更新至 3.4.3 版本，修复了处理 [btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 子卷的问题。[yast2-trans](https://software.opensuse.org/package/yast2-trans) 的更新改进了格鲁吉亚语和马其顿语翻译，快照中还更新了一些其他的库。

快照 [20230116](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/M57JRKYORHWGT34M6KLQ3V365HXAJBFW/) 除了三个软件包，剩余需要更新的软件包均来自于 [KDE 社区](https://kde.org/)。[KDE Frameworks 5.102.0](https://kde.org/announcements/frameworks/5/5.102.0/) 修复了 [KTextEditor](https://api.kde.org/frameworks/ktexteditor/html/) 的一个崩溃并添加了 [KWindowSystem](https://api.kde.org/frameworks/kwindowsystem/html/) 缺少的依赖项。[Plasma Framework](https://api.kde.org/frameworks/plasma-framework/html/index.html) 更新仅在面板弹出窗口覆盖其面板小部件的三分之二时才将其居中，并且它添加了打开上下文菜单的功能。条形码命名空间生成器 [Prison](https://api.kde.org/frameworks/prison/html/namespacePrison.html) 在快照中更新，增加了解码器 [ZXing](https://zxing.org/w/decode.jspx) 2.0。KDE 十六进制编辑器 [okteta](https://apps.kde.org/okteta/) 清理了 0.26.10 版本中的 spec 文件并改进了翻译。用于读写元信息的命令行工具 [perl-Image-ExifTool](https://metacpan.org/pod/exiftool) 更新至 12.54 版本，增加了对许多新 XMP 标签的支持，其中包括对 Nikon、Fujifilm 和 Canon 标签的解码。[mpg123](https://www.mpg123.de/) 1.31.2 的更新修复了与网络相关的构建错误。

快照 [20230115](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WDKHAQ4H4KUJJ3G33UQLZU4E4E3J43V2/) 更新了两个软件包。[perl-Bootloader](https://github.com/openSUSE/perl-bootloader) 更新至 0.941，使用了更简单的初始设置。另一个包是更新到 2.14.0 版本的语法高亮包 [python-Pygments](https://pypi.org/project/Pygments/)。这个包进行了许多变更，并改进了函数定义的括号处理；新版本还修复了数字和运算符识别。

文本编辑器 [Vim](https://www.vim.org/) 是快照 [20230114](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TB4XYBN4DCY75HCQ6WIWHKDX4BAWK65D/) 更新的几个软件包之一。Vim 更新至 9.0.1188 版本，修复了使用 class 函数时的[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)，但新版本在为交互式操作自动加载脚本时可能会提供意外输出。用于元数据标准化的软件组件 [AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/) 更新至 0.15.6 版本，其跨发行版工作添加了一个补丁来支持 [meson](https://mesonbuild.com/) 0.59，该 meson 版本将于 [Leap](https://get.opensuse.org/leap/) 的下一个次要版本中发布。AppStream 还添加了一个用于内容分级描述和 ratingIds 的 [API](https://en.wikipedia.org/wiki/API)。[NetworkManager](https://networkmanager.dev/) 1.40.10 更新有一些修复。其中一个修复了自动连接功能的评估，另一个确保在更改 dns 后端并重新启动服务后停止 [dnsmasq](https://thekelleys.org.uk/gitweb/?p=dnsmasq.git)。NetworkManager 还有其他各种修复程序。音频和视频包 pipewire 0.3.64 更新了许多东西。它清除了端口上的一些旧缓冲区内存以修复一些[总线错误](https://en.wikipedia.org/wiki/Bus_error)，现在可以将自定义端口名称分配给来自适配器的端口。pipewire 修复了 quantum 和速率计算中的错误，当允许多个速率时，该错误可能导致节点运行这些错误的计算。pipewire 还删除了几个补丁。[ndctl](https://github.com/pmem/ndctl) 的实用程序库有一个主要版本更新。ndctl [v75](https://github.com/pmem/ndctl/releases/tag/v75) 有许多改进并添加了主密码删除支持。快照中要更新的其他软件包是 [gtksourceview5](https://gitlab.gnome.org/GNOME/gtksourceview) 5.6.2、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.63 等。

[Salt](https://github.com/saltstack/salt) 3005.1 在 rebase 后添加了一个缺失的补丁，以修复集合映射问题，该问题出现在快照 [20230113](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/F4BDJDEY4ZA4CWMH5JI273EWFLS2Q4MO/) 中。该版本充满了补丁，其中一个修复确保了进程间通信缓冲区的默认值是正确的类型。Salt 的新版本还修复了 apt 源文件中的架构解析问题。[Mesa](https://www.mesa3d.org/) 22.3.3 修复了游戏中损坏的图形、Plasma 挂起以及使用模块标识符创建图形管道库时的崩溃。快照中还提供了 [Xfce](https://www.xfce.org/) 软件包的一些更新。文件管理器 thunar 4.18.2 防止了通过 DBus 复制+覆盖的崩溃，也防止了关闭 [thunar](https://en.wikipedia.org/wiki/Thunar) 时的罕见崩溃。此次快照对 [xfce4-panel](https://docs.xfce.org/xfce/xfce4-panel/start) 4.18.1 进行了另一个更新，修复了同步超时问题。快照中更新了更多软件包。

本周开始的快照 [20230112](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/5RTYYAXIAZCOXNLYM7PMSPEYPRFP64JA/) 已将 [file](https://www.darwinsys.com/file/) 更新到版本 5.44。

------

原文：[Salt, Vim, nodejs update in Tumbleweed](https://news.opensuse.org/2023/01/20/salt-vim-nodejs-up-in-tw/)，作者：Douglas DeMaio
