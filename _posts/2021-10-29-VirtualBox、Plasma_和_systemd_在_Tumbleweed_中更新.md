---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-10-29 16:50:00 +0800
layout: post
license: CC-BY-SA-3.0
title: VirtualBox、Plasma 和 systemd 在 Tumbleweed 中更新
image: /assets/posts/misc/systemd-logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

滚动发布用户本周收到了各种软件包更新，包括 [rpm](https://rpm.org/)、[Plasma](https://kde.org/plasma-desktop/)、[rsyslog](https://www.rsyslog.com/)、[webkit2gtk3](https://webkitgtk.org/)、[systemd](https://freedesktop.org/wiki/Software/systemd/) 和 [AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/) 等的更新，这些更新贯穿了本周的四个 openSUSE Tumbleweed 快照。

最新发布的快照 [20211027](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/U7WM4CYNMFB2QPHU5OOBJYYBOEY7JJA6/)，更新了 8 个包。[Mozilla Thunderbird](https://www.thunderbird.net/) 91.2.1 增加了 [AArch64](https://en.wikipedia.org/wiki/AArch64) 的每个线程所需的内存以避免[内存不足](https://en.wikipedia.org/wiki/Out_of_memory)状态，并且电子邮件客户端还为 Tumbleweed 启用了[链接时间优化](https://gcc.gnu.org/wiki/LinkTimeOptimization)。[php7](https://www.php.net/) 7.4.25 更新是一个安全版本，专注于错误修复，例如在编码检测期间影响高内存使用率的错误修复，以及解决 [CVE-2021-21703](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures) 的另一个修复。实时 web 框架 [perl-Mojolicious](https://mojolicious.org/) 的 9.22 版本添加了一个参考方法并修复了响应状态日志消息以使用跟踪日志级别而不是调试级别。[mpg123](https://www.mpg123.de/) 本周的第二个版本将软件包更新到 1.29.2，该版本对非实时解码器保护进行了单独修复。[AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/) 是一个用于标准化软件组件元数据的跨发行版包，更新到 [0.14.6](https://github.com/ximion/appstream/blob/master/NEWS) 版本； 新版本更新了文档并添加了对源语言环境的支持。 该软件包还增加了对图像和视频屏幕截图处理的支持，以及将 [Fedora](https://getfedora.org/) 添加到持续集成环境的更改状态。

快照 [20211025](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FR4PWXGYV44LUQ2YUBH344YFKEH4UNKT/) 更新了 [rpm 4.17.0](https://rpm.org/wiki/Releases/4.17.0)。 更新有许多改进，新的翻译、python 生成器和 debuginfo 提取已拆分到一个单独的上游项目。[rsyslog](https://www.rsyslog.com/) 本周在 Tumbleweed 中进行了两次更新，此快照带来了 8.2110.0 版本，该版本修复了几个影响配置的错误。[Linux 内核](https://www.kernel.org/) 5.14.14 对 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 和 [Btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 进行了大量修复。[libyui](https://github.com/libyui/libyui) 也有几个 4.2.20 库更新，它为包插件实现了 [C++17 标准](https://en.wikipedia.org/wiki/C%2B%2B17)。快照中的另一个更新是自由远程桌面包 [freerdp](https://www.freerdp.com/) 2.4.1 的更新； 本次更新解决了两个 CVE，其中一个是网关连接的客户端输入验证不正确，这将允许覆盖内存。

快照 [20211024](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/S4GPGNEW6H6NKRBE6SEJPZGMZXSR4GQW/) 提供了 [Plasma 5.23.1](https://kde.org/announcements/plasma/5/5.23.1/) 更新。 第一个小更新对其 [Discover](https://apps.kde.org/discover/) 应用商店进行了修复，以防止在禁用源时 [Flatpak](https://flatpak.org/) 崩溃。[KDE Plasma](https://kde.org/) 的 X 窗口管理器和 [Wayland](https://wayland.freedesktop.org/) 混成器 [KWin](https://invent.kde.org/plasma/kwin) 修复了用于 [PipeWire](https://pipewire.org/) 处理的下载软件旋转纹理。[Plasma 桌面](https://kde.org/plasma-desktop/)修复了 “清除表情符号历史记录” 操作。[virtualbox](https://www.virtualbox.org/) 6.1.28 版本更新修复了一些音频问题，并带来了对网络范围的更多管理控制。该管理程序还修复了从保存状态恢复后第一次调整大小时发生的虚拟机黑屏问题。[webkit2gtk3](https://webkitgtk.org/) 2.34.1的更新修复了几个影响 [WebKit](https://webkit.org/) 渲染引擎的崩溃；其中一个崩溃会在加载 [reddit](https://www.reddit.com/) 上的视频时发生。[Ian Darwin](https://www.oreilly.com/pub/au/219) 在对 [file(1) 命令](https://www.darwinsys.com/file/)工具的开源重新的 5.41 版中实现删除了几个补丁； 该包添加了一个新标志，并要求匹配是一个完整的单词而不是部分单词匹配。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.44 升级至 4.4.51 版本，新增了捷克语、日语和斯洛伐克语的翻译。该存储包还简化了分离标志的处理。 快照中其他要更新的包有 [acpica](https://acpica.org/) 20210930、[java-11-openjdk](https://openjdk.java.net/projects/jdk/11/) 11.0.13.0、图形可视化包 [graphviz](https://graphviz.org/) 2.49.1 和十多个其他包。

音频包 [JACK](https://jackaudio.org/) 1.9.19 版本已在快照 [20211021](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YUTNSSPGG5IIVURIB2LU7P7HWLKCK7TA/) 中发布。新版本添加了等待声卡可用的参数并修复了一批文档。[systemd](https://freedesktop.org/wiki/Software/systemd/) 服务管理器更新到 249.5 ，删除了有效网络命名方案的列表，本次更新允许了在配置期间定义额外的网络命名方案。[ImageMagick](https://imagemagick.org/index.php) 7.1.0.10 改进了自动计算标题和标签点大小的算法。[iso-codes](https://salsa.debian.org/iso-codes-team/iso-codes) 4.7.0 版更新了印尼语翻译； 国际标准化组织包还添加了韩国和朝鲜的通用名称。[rsyslog](https://www.rsyslog.com/) 在 8.2108.0 版本中改进了传输层安全失败的错误消息输出； 超高速日志系统还添加了参数 `ignoreolderthan` 选项，并指示文本文件输入模块不要摄取在指定秒数内未修改的文件。音频播放器和解码器库 [mpg123](https://www.mpg123.de/) 1.29.1 修复了缓冲器 `libmpg123` 的设备属性标志的报告。快照中更新了多个 [Python Package Index](https://pypi.org/) 版本； [python-apipkg](https://pypi.org/project/apipkg/) 2.1.0 进行了重大更新：[python-cachetools](https://pypi.org/project/cachetools/) 4.2.4 添加了子模块 shims 以实现向后兼容性；[python-greenlet](https://pypi.org/project/greenlet/) 修复了版本 1.1.2 中的潜在崩溃和泄漏。 快照中要更新的其他软件包包括 [libzypp](https://github.com/openSUSE/libzypp) 17.28.6、[mc](https://midnight-commander.org/) 4.8.27、[thai-fonts](https://github.com/tlwg/fonts-tlwg) 0.7.3、[gnome-clocks](https://wiki.gnome.org/Apps/Clocks) 41.0 等。

------

原文：[VirtualBox, Plasma, systemd Updates in Tumbleweed](https://news.opensuse.org/2021/10/29/vb-plasma-systemd-update-in-tw/)，作者：Douglas DeMaio