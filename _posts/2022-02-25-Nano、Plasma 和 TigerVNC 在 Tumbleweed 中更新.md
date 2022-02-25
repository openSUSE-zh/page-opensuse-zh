---
author: Hanjingxue Boling
date: 2022-02-25 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Nano、Plasma 和 TigerVNC 在 Tumbleweed 中更新
image: /assets/posts/2022-02/TigerVNC_logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE [Tumbleweed](https://get.opensuse.org/tumbleweed/) 的快照继续以稳定的速度发布。自我们上次回顾以来，已经发布了七张快照。

最新的快照是快照 [20220223](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/AFUN6FXOL7NMHDYJN2RFAPJPUQ5HL2AU/)，它删除了 [systemd](https://freedesktop.org/wiki/Software/systemd/) 249.10 的更新版本。该版本更改了设置以将处理[核心转储](https://en.wikipedia.org/wiki/Core_dump)的外部核心大小增加到无穷大。[Flatpak](https://flatpak.org/) 1.12.6 更新了翻译并修复了在下载中断或取消时有时会导致 repo 损坏的错误。[mariadb](https://mariadb.org/) 10.7.3 更新中修复了一些 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。导致应用程序崩溃的 [CVE-2021-46665](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-46665)、[CVE-2021-46664](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-46664)、[CVE-2021-46661](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-46661)、[CVE-2021-46668](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-46668) 和 [CVE-2021-46663](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-46663) 均已在此次更新版本中修复。XML 解析器 [expat 2.4.6](https://github.com/libexpat/libexpat/blob/R_2_4_6/expat/Changes) 也修复了许多 CVE； 其中之一是修复 copyString 函数中的[整数溢出](https://en.wikipedia.org/wiki/Integer_overflow)。快照中更新了其他几个软件包，包括 [autoyast2](https://github.com/yast/yast-autoinstallation) 4.4.31、[yast2-security](https://github.com/yast/yast-security) 4.4.12 和 [yast2-installation](https://github.com/yast/yast-installation) 4.4.44。

文本编辑器 [nano](https://www.nano-editor.org/) 6.2 在快照 [20220222](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JVTMD32S2GAWBWTLD6QOJWWVYRUUXFDU/) 中发布。在此版本中，在使用 `--minibar` 时，文件浏览器会清除提示栏；nano 现在可使用更新的源文件解析器 [pyflakes](https://pypi.org/project/pyflakes/) 以更好地分析代码。虚拟化包 [Xen](https://xenproject.org/) 在 4.16.0_06 版本中添加了多个 [x86_64](https://en.wikipedia.org/wiki/X86-64) 补丁，并且 [vulkan-tools 和 vulkan-loader 1.3.204.0](https://vulkan.lunarg.com/doc/sdk/1.3.204.0/linux/release_notes.html) 的更新为应用程序开发人员带来了新功能，例如配置文件工具解决方案，使开发人员能够生成自己的应用程序特定功能配置文件。快照中有一个[内核固件更新](https://www.kernel.org/)，并且 [yast2-firstboot](https://github.com/yast/yast-firstboot) 4.4.8 添加了为 SUSE Linux Enterprise 启用注册步骤的选项，即使在 [WSL](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux) 中运行也是如此。

网络浏览器 [Firefox](https://www.mozilla.org/) 在快照 [20220221](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6RZIW2EMYE3VGFX2UGFI7TA6G7UIOSIN/) 中更新到 97.0.1。[Mozilla](https://www.mozilla.org/) 项目修复的主要是与 [TikTok](https://www.tiktok.com/en/) 和 [Hulu](https://www.hulu.com/) 相关的一些功能。[php7](https://www.php.net/) 7.4.28 的更新是一个安全版本，旨在修复 [CVE-2021-21708](https://security-tracker.debian.org/tracker/CVE-2021-21708)，它可能允许攻击者注入恶意文件，导致崩溃或[存储器区段错误](https://en.wikipedia.org/wiki/Segmentation_fault)。意大利语、德语、简中和繁中语言在 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.88 中进行了更新。通用电子邮件包 [mailutils](https://mailutils.org/) 3.14 重构了[传输层安全性协议](https://en.wikipedia.org/wiki/Transport_Layer_Security)支持的代码，并修复了[时区计算错误](https://savannah.gnu.org/bugs/?61239)。快照中要更新的其他软件包包括 [yast2-installation](https://github.com/yast/yast-installation) 4.4.42、[python-lxml](https://pypi.org/project/lxml/) 4.8.0、[libinput](https://gitlab.freedesktop.org/libinput/libinput/-/releases/1.20.0) 1.20.0 等。

快照 [20220219](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/H7ZVNPCYA4JTNXQBPFDBDOM3G7A5KPG6/) 中仅更新了两个包。[Linux 内核](https://www.kernel.org/)更新到 5.16.10 版本。内核对[网络文件系统](https://en.wikipedia.org/wiki/Network_File_System)协议进行了多次更新，并修复了一些[小型计算机系统接口](https://en.wikipedia.org/wiki/SCSI)。适用于 [arm64](https://en.wikipedia.org/wiki/AArch64) 架构的 Linux 内核也有一些更新，增加了对[跟踪缓冲区扩展](https://www.kernel.org/doc/html/latest/trace/coresight/coresight-trbe.html)的检测。[systemd-rpm-macros](https://pkgs.org/download/systemd-rpm-macros) 16 的更新修复了一些依赖关系，并将 systemd-sysvinit 重命名为 systemd-sysvcompat。

快照 [20220218](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2JD7MTZMAQ63O6O3YIPHZHRGDNGCXGDG/) 发布了 [tigervnc](https://tigervnc.org/) 1.12.0 版本，此次更新让本机查看器现在支持在一部分监视器上全屏显示。现在可以通过本机查看器的环境指定密码和用户名，并使用与远程计算机上的图形应用程序交互的包。渲染引擎 [webkit2gtk3](https://webkitgtk.org/) 2.34.6 修复了几个崩溃。该软件包还修复了禁用覆盖滚动条时滚动条的呈现，并且 webkit2gtk3 还修复了在许多未调用主 [OpenGL](https://www.opengl.org//) 库的情况下的构建。

[GNOME](https://www.gnome.org/) 和 [KDE](https://kde.org/) Plasma 用户都在快照 [20220217](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FG43JAADJ57QO637MOM372Y3S4KID42E/) 中收到了更新。[Plasma 5.24.1](https://kde.org/announcements/plasma/5/5.24.1/) 已更新，并且此新长期支持版本将在 [Leap 15.4](https://get.opensuse.org/) 中实装。此次更新提供了一些对 [Dolphin](https://apps.kde.org/dolphin/) 文件管理器进行的修改。[KScreen](https://github.com/KDE/kscreen) 管理器针对导致恢复的对话框不可见的未知 Qt 问题调整了解决方法。

窗口管理器 [KWin](https://invent.kde.org/plasma/kwin) 进行了多项修复，其中包括一个针对 [Wayland](https://wayland.freedesktop.org/) 的修复工具提示错误定位的问题。光标颜色已在 [xwayland](https://wayland.freedesktop.org/) 22.1.0 更新中修复。[gnome-shell-extensions](https://extensions.gnome.org/) 41.2 的更新修复了窗口跟踪以避免丢失图标。目录列表程序 [tree](http://mama.indstate.edu/users/ice/tree/) 2.0.2 更改了一些设置并修复了 HTML URL 输出问题。快照还更新了更多软件包。

快照 [20220216](https://rsync.opensuse.org/tumbleweed/iso/Changes.20220216.txt?fbclid=IwAR0QJ7qOnL8dXddIxU0n0WO6lGBIvB1q1ITO9uN-BJGCI9jy34F_mLanfeU) 是在上周的 Tumbleweed 回顾发布后不久发布的。

------

原文：[Nano, Plasma, TigerVNC update in Tumbleweed](https://news.opensuse.org/2022/02/25/nano-plasma-tigervnc-up-in-tw/)，作者：Douglas DeMaio