---
author: Poplar at twilight
date: 2023-10-20 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: GNOME、Gear 和 Pipewire 在 Tumbleweed 中更新
image: /assets/posts/2023-10/sudoku.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 本周的快照提供了从小型到大型的更新。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

Tumbleweed 本周持续推出快照，用户也将陆续收到 [GNOME]、[KDE ​​Gear] 和 [PipeWire] 等软件包更新。

[GNOME]: https://www.gnome.org/
[KDE ​​Gear]: https://kde.org/announcements/gear/23.08.2/
[PipeWire]: https://pipewire.org/

虽然 Tumbleweed 本周更新了一些 [GNOME] 软件包，但快照 [20231017] 仅更新了其中一个。日本逻辑游戏 [gnome-sudoku]（数独）更新 45.1 版本，修复了右键单击以正确打开标记弹出框的问题，同时还更新了翻译。[ncurses] 6.4.20231007 的更新改进了 `get_position()` 的循环限制，增强了手动描述并修复了联机帮助页的格式问题。ncurses 还增强了 `setupterm` 的使用并改进了 `tic` 中的错误消息。另一个要更新的包是 [nodejs20] 20.8.1，它解决了几个 [CVE]。[CVE-2023-44487]、[CVE-2023-45143] 和 [CVE-2023-39333] 是已解决的 6 个 CVE 之一，它们容易受到可注入 JavaScript 代码的 [WebAssembly] 模块的影响。终端模拟器 [xterm] 387 的更新包括添加一些控制序列并更正索引表达式。该软件包还对缓冲设备控制字符串和操作系统命令字符串的内存使用进行了配置。快照中还更新了其他一些软件包。

[20231017]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3FW2SDUUCTGP4PYPLI6OVMEXERUY4QAD/
[gnome-sudoku]: https://wiki.gnome.org/Apps/Sudoku
[ncurses]: https://en.wikipedia.org/wiki/Ncurses
[nodejs20]: https://nodejs.org/en/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[CVE-2023-44487]: https://www.suse.com/security/cve/CVE-2023-44487.html
[CVE-2023-45143]: https://www.suse.com/security/cve/CVE-2023-45143.html
[CVE-2023-39333]: https://www.suse.com/security/cve/CVE-2023-39333.html
[WebAssembly]: https://webassembly.org/
[xterm]: https://invisible-island.net/xterm/

快照 [20231016] 更新了更多 GNOME 软件包。这些软件包包括 [mutter] 45.0+45，修复了 blob 大小和[堆栈溢出]；[gnome-photos] 44.0+23，在 photos-embed 中添加了助记符；[gnome-user-share] 43.0+11，修复了 bug 数据库值，使其指向 GNOME GitLab Issues，确保更准确地跟踪 bug。快照中另一个需要更新的软件包是压缩文件格式包 [zchunk] 1.3.2。zchunk 改进了对畸形 zchunk 文件中溢出错误的处理，以防止潜在的崩溃或意外行为。[python-qt5] 5.15.10 的更新包括添加缺失的 `QEvent`，以提高与 [Qt] 5.2 及更高版本的兼容性。该软件包现在还依赖 [python-qt5-sip] v12.13，该版本也在更新中提供。快照中还更新了其他一些软件包。

[20231016]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/QP4OCB6TXFJG4VSCYUYCAPMQZX3DSXN4/
[mutter]: https://gitlab.gnome.org/GNOME/mutter
[堆栈溢出]: https://en.wikipedia.org/wiki/Stack_overflow
[gnome-photos]: https://wiki.gnome.org/Apps/Photos
[gnome-user-share]: https://gitlab.gnome.org/GNOME/gnome-user-share
[zchunk]: https://github.com/zchunk/zchunk
[python-qt5]: https://pypi.org/project/PyQt5/
[Qt]: https://www.qt.io/
[python-qt5-sip]: https://pypi.org/project/PyQt5-sip/

快照 [20231015] 仅更新了两个软件包。用于操作块设备的软件包 [libblockdev] 更新到了 3.0.4 版本。在该快照期间或之后进行 `zypper dup` 的用户可以使用这些改进，如使用 `g_autofree` 进行内存管理、更正描述和重新分配内存。[python-cffi] 1.16.0 对 [spec 文件]和日志设置进行了调整，以提高功能性和可维护性。还有一个软件包对规格文件和日志设置进行了调整，以提高功能性和可维护性。python-cffi 1.16.0 版本清理了规格文件。这个用于调用 C 代码的 [Python] 包含了对 Python 3.12 的支持，并指出使用依赖于 distutils 的 C 外部函数接口特性的项目应添加对用于 Python 3.12 及以上版本的 setuptools 的依赖。python-cffi 放弃了对 Python 2.7、3.6 和 3.7 等旧版本的支持。软件包更新反映了对 Python 3.8 及更新版本的关注。

[20231015]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TZHXB57VEFZSP3TSTUEVADAFQRWIYQHK/
[libblockdev]: https://github.com/storaged-project/libblockdev
[python-cffi]: https://pypi.org/project/cffi/
[Python]: https://www.python.org/
[spec 文件]: https://en.opensuse.org/openSUSE:Specfile_guidelines

于上周五发布的快照 [20231013] 将字体渲染包 [freetype2] 更新到 2.13.2 版本。freetype2 改进了对 [PostScript 字体 Type 2] 变体字体的支持，并删除了 [TrueType] 解释器 38 版本。freetype2 还改进了对 [OpenVMS] 的支持。[Pipewire] 0.3.81 的更新解决了与声音相关的问题，并确保专业音频功能正确产生声音。Pipewire 现在依赖 Vulkan 1.3 并默认启用 jackdbus 支持。[ALSA] 改进了调出，并支持新旧版本的 [webrtc-audio-processing]。在更新 pipewire 的同时，快照还提供了 [wireplumber] 0.4.15 版本更新。该策略管理器添加了数字信号处理（DSP）策略模块，该模块可自动加载特定硬件设备的过滤器链，确保音频通过软件 DSP，特别是支持 Apple M1/M2 设备。Wireplumber 现在支持直接加载模块参数并改进了设备配置文件选择策略。[samba] 的更新处理了一些 CVE，[microos-tools] 收到了 2.21+git5 更新，其中包括正确设置挂载传播（mount propagations）并添加了一个 spec 文件。除了小部件抽象库 [libyui] 4.6.1 之外，快照中还更新了其他几个 libyui 包。有了 libyui 和其他工具，[Qt] 包管理器现在提供了显示模式顺序列的选项，并在设置相应的环境变量时显示不可见的模式。快照中还更新了一些 [qt6] 子包。

[20231013]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DMXFWCBBBD4ASLEIJSGBFTG4R4Y67LQS/
[freetype2]: https://freetype.org/
[PostScript 字体 Type 2]: https://en.wikipedia.org/wiki/PostScript_fonts
[TrueType]: https://en.wikipedia.org/wiki/TrueType
[OpenVMS]: https://vmssoftware.com/
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[webrtc-audio-processing]: https://freedesktop.org/software/pulseaudio/webrtc-audio-processing/
[wireplumber]: https://github.com/PipeWire/wireplumber
[microos-tools]: https://github.com/openSUSE/microos-tools
[samba]: https://www.samba.org/
[libyui]: https://github.com/libyui
[qt6]: https://www.qt.io/

没有在上周进入 Tumbleweed 审核的快照之一是快照 [20231012]。该快照更新了两个 [yast2] 软件包：[yast2-country] 和 [yast2-x11]；它们从 4.6 版本升级到 5.0.1 版本。快照中要更新的另一个 openSUSE 软件包是软件包管理器 [zypper]。zypper 1.14.66 更新了信息提示接近匹配时返回的退出代码 104，重新表述了 openSUSE Tumbleweed 的升级信息，并修复了一些错别字和拼写错误。[KDE Gear] 23.08.2 也在该快照中进行了更新。视频编辑器 [Kdenlive] 解决了向剪辑添加转场时的一些不稳定行为，确保带有音频的剪辑不会阻塞视频轨道上的声音。Kdenlive 还优化了 RAM 使用以获得更好的性能。[Kitinerary] 对处理较新的英国铁路 PDF 车票以及提取多段 PDF 车票进行了增强。该软件包还能够合并国际 [Renfe] 结果并简化票务处理和管理。压缩和解压实用程序 [Ark] 会删除未使用的依赖项并添加缺失的 [KWindowSystem] 依赖项。

[20231012]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/J7MJ4V62RUAICMJRMFB52CCUM6ABUXJA/
[yast2-country]: https://github.com/yast/yast-country
[yast2-x11]: https://github.com/yast/yast-x11
[yast2]: https://github.com/yast/yast-yast2
[zypper]: https://github.com/openSUSE/zypper
[Kdenlive]: https://kdenlive.org/en/
[Kitinerary]: https://invent.kde.org/pim/kitinerary
[Renfe]: https://www.renfe.com/
[Ark]: https://apps.kde.org/ark/
[KWindowSystem]: https://api.kde.org/frameworks/kwindowsystem/html/

------

原文：[GNOME, Gear, Pipewire update in Tumbleweed](https://news.opensuse.org/2023/10/19/gnome-gear-pipewire-up-in-tw/)，作者：Douglas DeMaio
