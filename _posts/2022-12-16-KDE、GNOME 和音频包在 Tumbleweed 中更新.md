---
author: Hanjingxue Boling
date: 2022-12-16 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: KDE、GNOME 和音频包在 Tumbleweed 中更新
image: /assets/posts/2022-12/audacity.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

根据 [openSUSE 项目](https://get.opensuse.org/)的[发布工程会议](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LALV24HMN6HWGQDTXSUOKL2O747H4YVB/)的记录，本周到达的数个 openSUSE [Tumbleweed](https://get.opensuse.org/tumbleweed/) 快照对声音、图像和系统组件进行了更新，并且 [ARM](https://www.arm.com/) 镜像再次滚动更新。

对于具有 aarch64 服务器和 NVIDIA 显卡的测试员和 [NVIDIA](https://www.nvidia.com/) 用户，openSUSE 现已提供[针对 aarch64 架构](https://download.nvidia.com/opensuse/tumbleweed/aarch64/)的专有图形驱动程序，但仅适用于 [G06](https://forums.opensuse.org/t/switching-from-nividia-g05-to-g06/149856) 版本。

快照 [20221214](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YN3E7NZW5GTOL4YOPBIG55T5XYFUD2NW/) 可能会给人们带来一些好消息，因为 [GNOME](https://www.gnome.org/) 网络摄像头应用程序 [cheese](https://wiki.gnome.org/Apps/Cheese) 从 43 Alpha 版本更新到 43.0 正式版本；向新版本的过渡涉及删除 [glibc](https://www.gnu.org/software/libc/) 调试环境变量和翻译更新。本次快照更新了 [pipewire](https://pipewire.org/) 0.3.62 和 [wireplumber](https://github.com/PipeWire/wireplumber) 0.4.13，改善了在线网络摄像头用户的语音质量。更新后的 [PipeWire](https://pipewire.org/) 修复了在激活链接和驱动程序节点时由争用导致的屏幕共享回归。[WirePlumber](https://github.com/PipeWire/wireplumber) 的更新添加了对蓝牙卸载的支持，允许接收、解码和播放完全在硬件中进行。版本控制系统 [git](https://github.com/git) 更新到 2.39.0 版本。次要版本更新扩展了 `git grep checkouts`，对 `get branch` 进行了一些更改，以便在切换之前编辑分支。快照中要更新的其他软件包是 [strace](https://strace.io/) 6.1、[dracut](https://dracut.wiki.kernel.org/index.php/Main_Page)、[kdump](https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html) 等。

快照 [20221213](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XQPOVDRFTDBYF2RCZXONWHM6XTDA3KPA/) 中仅更新了几个 [GNOME](https://www.gnome.org/) 软件包。除了更新到 43.2 版本的 [gnome-shell](https://gitlab.gnome.org/GNOME/gnome-shell) 之外，它还有多个修复程序；其中包括对截屏用户界面被错误地禁用的修复，以及对 [mutter](https://gitlab.gnome.org/GNOME/mutter) 的更新，它修复了在显示服务器的窗口调整大小后重新计算视口的问题。快照还更新了许多 [RubyGems](https://rubygems.org/) 包。其中，[rubygem-ruby-parser](https://rubygems.org/gems/ruby_parser/versions/3.19.1) 3.19.2 修复了解析数组模式的错误；[rubygem-regexp-parser](https://rubygems.org/gems/regexp_parser) 2.6.1 修复了两个负向后视边缘案例的扫描；[rubygem-puma](https://rubygems.org/gems/puma/versions/6.0.0-java) 6.0.0 正在放弃对 Ruby 2.2 和 2.3 的支持；[rubygem-bootsnap](https://rubygems.org/gems/bootsnap) 1.15.0 增加了一个只读模式，用于更新的缓存不会被持久化的环境。快照中更新了其他几个 [RubyGems](https://rubygems.org/) 以及一些 [Perl](https://www.perl.org/) 包。

如果第二天发布的是一个 [RubyGems](https://rubygems.org/) 快照，那么快照 [20221212](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/HJLBARP5AEW77UMVR2EDVRUFKZAAFE3T/) 就是一个 [KDE Frameworks](https://kde.org/announcements/frameworks/5/5.101.0/) 快照。openSUSE 在 [Frameworks 5.101.0](https://kde.org/announcements/frameworks/5/5.101.0/) 在发布后的 48 小时内将其推送给风滚草用户。此次错误修复版本弃用了 [KWindowSystem](https://api.kde.org/frameworks/kwindowsystem/html/) 的几个特性，并将 X11 特定的功能移至新的 [KX11Extras](https://api.kde.org/frameworks/kwindowsystem/html/classKX11Extras.html#ab4d58f1f2bc052d19cb2f32349753ebe) 类。[KTextEditor](https://github.com/KDE/ktexteditor) 修复了按下 `ctrl` 时的默认设置标记。[Kirigami](https://kde.org/products/kirigami/) UI 框架修复了许多由 `Qt.createComponent` 引起的内存泄漏。操作按钮还修复了由于导入更改而损坏的附加属性。提供对文件、网站和其他资源的访问的 [KIO](https://api.kde.org/frameworks/kio/html/index.html) 系统库弃用了其他一些行为。轻量级显示管理器 [lightdm](https://github.com/canonical/lightdm) 更新至 1.32.0 版本。该软件包在测试中使用 [Python](https://www.python.org/) 3 并改进了确定会话是 [Wayland](https://wayland.freedesktop.org/) 的方法。

快照中更新了两个 [GNOME](https://www.gnome.org/) 软件包。[gnome-characters](https://gitlab.gnome.org/GNOME/gnome-characters) 43.1 更新到了 [Unicode 15](https://unicode.org/versions/Unicode15.0.0/) 并更新了翻译。[gnome-remote-desktop](https://gitlab.gnome.org/GNOME/gnome-remote-desktop) 43.2 特进行了翻译更新，并删除了一行新代码。[arpwatch-ethercodes](https://software.opensuse.org/package/arpwatch-ethercodes) 20221212 也在快照中更新，但缺少任何提交消息。[rpm 4.18.0](https://rpm.org/wiki/Releases/4.18.0) 更新修复了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。当 rpm 在安装文件后设置所需的权限和凭据时，会触发 [CVE-2021-35938](https://www.suse.com/security/cve/CVE-2021-35938.html)。本地非特权用户可能利用该缺陷将原始文件与安全关键文件的符号链接交换，并提升他们在系统上的权限。快照还更新了其他一些软件包。

快照 20221211 只更新了一个包。[ASS/SSA 字幕](https://en.wikipedia.org/wiki/SubStation_Alpha)格式的便携式字幕渲染器 libass 更新至 0.17.0 版本，修复了与自动换行相关的各个部分，并发布了一个似乎与 LayoutResX 和 LayoutResY 标头相关的主要功能。

快照 [20221210](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/OZ4JSTZ3XE2QVBIDUJOZ32ULJCR5CQR3/) 更新了 [Linux 内核](https://www.kernel.org/)。[kernel-source](https://www.kernel.org/) 6.0.12 修复了与 [cfg80211 子系统](https://www.kernel.org/doc/html/v4.12/driver-api/80211/cfg80211.html)相关的 wifi 缓冲区溢出并修复了错误处理。[systemd](https://freedesktop.org/wiki/Software/systemd/) 252.3 的更新删除了一个补丁并进行了一些向后移植工作。文本编辑器 [vim](https://www.vim.org/) 9.0.1040 有很多变化；它修复了 kitty 键盘协议功能键可能无法工作的问题，并修复了测试可能卡在带有交换文件的缓冲区中的问题。[Xen](https://xenproject.org/) 的更新处理了 [CVE-2022-33746](https://www.suse.com/security/cve/CVE-2022-33746.html)，它添加了一些需要的抢先检查。其他要更新的软件包是 [libpaper](https://rpmfind.net/linux/rpm2html/search.php?query=libpaper) 2.0.4、[wavpack](https://www.wavpack.com/index.html) 5.6.0 和 [yast2-kdump](https://github.com/yast/yast-kdump) 4.5.7。

本周开始的第一个快照是快照 [20221209](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VYHQGZ2F3NH2C2DEQNLTV4WQCYMSB5MS/)，它更新了 [audacity](https://www.audacityteam.org/) 3.2.2。audacity 的更新修复了编辑某些宏参数时的崩溃问题，它不再悄悄地放弃更改，而是在退出前询问是否应保存更改。audacity 还修复了一些卡在播放模式中的播放命令。在上游发布后的第二天出现在快照中的另一个 [KDE](https://kde.org/) 更新是 [Gear 22.12](https://kde.org/announcements/gear/22.12.0/)。该版本中的一项新功能是选择模式。点击空格键或点击汉堡形图标菜单按钮并选中选择文件和文件夹复选框，然后会出现一个浅绿色条。文本编辑器 [Kate](https://kate-editor.org/) 在启动时添加了一个欢迎窗口，新窗口允许创建新文件、从最近文件列表中打开现有文件并提供文档。视频制作编辑器 Kdenlive 改进了与其他视频应用程序的集成，用户现在可以将 [Kdenlive](https://kdenlive.org/en/) 时间线作为背景发送到矢量动画实用程序 [Glaxnimate](https://glaxnimate.mattbas.org/)。快照中还将 [yast2-users](https://github.com/yast/yast-users) 更新了 4.5.3 版本。

------

原文：[KDE, GNOME, Audio packages update in Tumbleweed](https://news.opensuse.org/2022/12/16/kde-gnome-audio-packages-up-in-tw/)，作者：Douglas DeMaio