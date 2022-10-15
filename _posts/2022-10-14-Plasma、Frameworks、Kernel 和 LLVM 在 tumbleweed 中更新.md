---
author: Hanjingxue Boling
date: 2022-10-14 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Plasma、Frameworks、Kernel 和 LLVM 在 tumbleweed 中更新
image: /assets/posts/misc/DragonFull.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周有一个大的和几个较小的 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 快照。

Tumbleweed 在本周早些时候发布了一些较小的快照，最新的快照包含了大量需要更新的软件包。

快照 [20221012](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/C54EI5L7UXL7T72ESVGBH5I6TD4HHUW5/) 中要更新的软件包包括 [Frameworks 5.99.0](https://kde.org/announcements/frameworks/5/5.99.0/) 和 [Plasma 5.26](https://kde.org/announcements/plasma/5/5.26.0/)。Plasma 带来了很多新的变化。你可以在面板、通知器和 KDE Con​​nect 监视器和音量控制中调整时钟和日历等小部件的大小。所有应用程序部分很容易允许使用按字母顺序排列的索引进行导航。对于智能电视爱好者来说，[Plasma Big Screen](https://plasma-bigscreen.org/) 有两款新应用落地；Aura 是专为大屏幕电视设计的浏览器，而 Plank Player 是一个简单易用的媒体播放器，允许从存储设备播放视频。Frameworks 使用 [KConfig](https://github.com/KDE/kconfig) 修复了多显示器设置上的大小和位置恢复。Frameworks 修复了使用 `Ctrl+Shift+U` 清除 PasswordField 的错误，并更新了桌面主题。用户界面框架 [Kirigami](https://kde.org/products/kirigami/) 改进了 [DefaultListItemBackground](https://api.kde.org/frameworks/plasma-framework/html/classDefaultListItemBackground.html) 代码。[ImageMagick](https://imagemagick.org/index.php) 7.1.0.49 的更新修复了线性 RGB 令人困惑的色彩空间。[ModemManager](https://www.freedesktop.org/wiki/Software/ModemManager/) 1.18.12 版本修复了在使用等于或高于 2.73.2 版本的 [glib2](https://wiki.gnome.org/Projects/GLib) 时发生的一些非常严重的问题。该软件包还添加了新的 pkgconfig 模块构建要求。[Mozilla Firefox](https://www.mozilla.org/) 105.0.3 更新修复了 Linux 系统上使用某些主题时，各种菜单项的对比度差的问题。Firefox 在此次更新中修复了几个额外的 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。其中之一是在初始化图形时导致[堆栈缓冲区溢出](https://en.wikipedia.org/wiki/Stack_buffer_overflow)的 [CVE-2022-40961](https://www.mozilla.org/en-US/security/advisories/mfsa2022-40/#CVE-2022-40961)。音频和视频包 [pipewire](https://pipewire.org/) 0.3.59 的更新修复了节点在添加到图表时可能暂停的情况，这可能导致潜在的崩溃。由于一个 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 插件，[pipewire](https://ice-wm.org/) 现在有更多选项来控制缓冲区大小。窗口管理器 icewm 3.0.1 更新增加了对选项卡式窗口的支持。快照中还更新了许多其他软件包，包括 [ffmpeg-4](https://www.ffmpeg.org/) 4.4.3、[git](https://github.com/git) 2.38.0、[harfbuzz](https://github.com/harfbuzz/harfbuzz) 5.3.0 和引入了 [PPPoE](https://en.wikipedia.org/wiki/Point-to-Point_Protocol_over_Ethernet) 支持的 [iproute2](https://git.kernel.org/pub/scm/network/iproute2/iproute2.git) 6.0。

快照 [20221008](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/PZAJNUNMKQP2K5563M7BII7SFYQM53H5/) 发布了 [systemd](https://freedesktop.org/wiki/Software/systemd/) 251.5。新版本修复了[内存泄漏](https://github.com/openSUSE/systemd/commit/f279a6f4d1feceaf32fdc790ae242044bb672a16)和与[无效自省数据](https://github.com/openSUSE/systemd/commit/175ba30cf64772b136b5b982f04ff3c9a8295e23)有关的警告。拼写检查包 [ispell](https://www.cs.hmc.edu/~geoff/ispell.html) 3.4.05 修复了一个导致多种语言出现错误行为的主要错误，并在英语词典中添加了六千多个单词。XZ 和 LZMA 压缩 [xz](https://tukaani.org/xz/) 的命令行工具已更新至 5.2.7 版本。它添加了一些土耳其语翻译，修复了与旧 shell 的兼容性并修复了检查类型统计信息的复制。

快照 [20221006](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/HNIJQKTOKMY3TLXTLI524GBOHGBGAQZE/) 发布了 [Linux 内核](https://www.kernel.org/) 6.0。一些人[没有注意](https://twitter.com/dmacvicar/status/1578688668688351232?s=20&t=CwdIzuLmkhmG_8LAnws-Qw)到向新内核的过渡，因为它是快照中唯一要更新的包。新内核引入了对 [AArch64](https://en.wikipedia.org/wiki/AArch64) 和 [RISC-V](https://riscv.org/) 架构的一些支持。根据[一些报道](https://www.theregister.com/2022/10/02/linux_kernel_6_0_released/)，内核 6.1 预计会有一些更大的变化。

快照 [20221004](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3LEX5IRCGHTNEQLCXIZ3O44CGF7TJMKO/) 中有几个主要版本更新。[postgresql](https://www.postgresql.org/) 和 [llvm15](https://llvm.org/) 15 的两个主要版本都在本次快照中发布。新的 [PostgreSQL](https://www.postgresql.org/) 主要版本改进了内存和磁盘排序算法。它还添加了一个新的内置扩展 `pg_walinspect`，允许用户直接从 SQL 接口检查预写日志文件的内容。其他更改之一避免了基于 `/bin/sh` 的启动脚本中的 [bashisms](https://en.wiktionary.org/wiki/bashism)。随着 [llvm15](https://llvm.org/) 15.0.1 的更新，RISC-V 后端发生了变化，并对新兴架构进行了各种改进和优化。对于 [x86_64](https://en.wikipedia.org/wiki/X86-64) 用户，当使用 `half type` 发现故障时，应检查代码的调用转换，切换到新的 [ABI](https://en.wikipedia.org/wiki/Application_binary_interface)。[LLVM](https://llvm.org/) 的工具有一些新改进：`llvm-ar` 新增了一些功能，`llvm-nm` 新增了一些选项。[kernel-firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git) 更新至 20220930 版本，并为一些[联发科](https://www.mediatek.com/)芯片提供 wifi 集成，并为几个 [AMDGPU](https://github.com/radeonopencompute/rock-kernel-driver/) 驱动程序添加了一些固件更新。

------

原文：[Plasma, Frameworks, Kernel, LLVM update in Tumbleweed](https://news.opensuse.org/2022/10/14/plasma-frameworks-kernel-llvm-up-in-tw/)，作者：Douglas DeMaio