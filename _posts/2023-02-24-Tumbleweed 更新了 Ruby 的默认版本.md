---
author: Hanjingxue Boling
date: 2023-02-24 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 更新了 Ruby 的默认版本
image: /assets/posts/2023-02/release.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周的 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 综述将关注自上周五以来发布的五个快照。

这些快照更换了 Ruby 的默认版本，更新了 [pidgin](https://pidgin.im/)、[parole](https://docs.xfce.org/apps/parole/start)、[OpenSSL](https://www.openssl.org/)、[php](https://www.php.net/)、[sudo](https://www.sudo.ws/)、[tigervnc](https://tigervnc.org/) 等软件包。

快照 [20230222](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FD5XDP2V7XH5EQHAQAAD5BWONPTXVX2Z/) 仅更新了四个包。[gnu-unifont-fonts](https://unifoundry.com/unifont/) 新的大版本，15.0.01 出现在快照中，它引入了几个新的子包并清理了[规范文件](https://en.opensuse.org/openSUSE:Specfile_guidelines)。curses 仿真库 [ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.4.20230218 添加了一个补丁并对配置脚本进行一些改进。[ibus-m17n](https://github.com/ibus/ibus-m17n) 1.4.19 更新添加了鹦鹉图标表情符号，并使用 [Weblate](https://weblate.org/) 为[斯里兰卡](https://en.wikipedia.org/wiki/Sinhala_language)使用的僧伽罗语进行了一些翻译改进。还有一个针对 Ark Logic 视频卡的 [xf86-video-ark](https://packagehub.suse.com/packages/xf86-video-ark/) 0.7.6 更新，它带来了十年来积累的变更，具有针对 [xorg-server](https://en.wikipedia.org/wiki/X.Org_Server) 1.14 和更新版本的开箱构建能力。

聊天应用 [pidgin](https://pidgin.im/) 在快照 [20230221](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/AKNKRAYHY4QWVAXYVUBSQ5ZNEWI3NKWY/) 更新到 2.14.12 版本；它修复了关闭群聊时的崩溃问题，并更新了详情框，将人们指向邮件以外的另一种交流方式。[GNOME](https://www.gnome.org/) 的 Wayland 显示服务器和 X11 窗口管理器和混成器 [mutter](https://gitlab.gnome.org/GNOME/mutter) 现已更新至 43.3+2 版本。mutter 提供了一个修复程序，该修复程序[打破了窗口焦点](https://bugzilla.opensuse.org/show_bug.cgi?id=1208494)，全屏用户遇到了 [Wayland](https://wayland.freedesktop.org/) 和 [X11](https://en.wikipedia.org/wiki/X_Window_System) 之间的[图层转换问题](https://gitlab.gnome.org/GNOME/mutter/-/commit/12ce58dba4f96f6a948c1d166646d263253e3ee0)。二进制工具包 [binutils](https://www.gnu.org/software/binutils/) 2.40 进行了 rebase 并删除了一个包。用于跟踪数据包在 IP 网络上所采用的路由的 [traceroute](http://traceroute.sourceforge.net/) 更新至 2.1.2 版本，修复了 [Linux 内核](https://www.kernel.org/)的非特权 [ICMP](https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol) 跟踪路由的问题。快照中更新了其他几个包，其中包括 [yast2-packager 4.5.16](https://github.com/yast/yast-packager)。

快照 [20230220](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/OKSYXACOG7X3LNW5DRBWUYRRLE5MHXH3/) 更新了 [openssl](https://www.openssl.org/) 3.0.8；修复了三个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。快照为造成 NULL 指针漏洞的 [CVE-2023-0401](https://www.suse.com/de-de/security/cve/CVE-2023-0401.html)、引起拒绝服务攻击而造成崩溃的 [CVE-2023-0217](https://www.suse.com/security/cve/CVE-2023-0217.html) 和使攻击者读取成员内容或执行 DoS 的 [CVE-2023-0286](https://www.suse.com/security/cve/CVE-2023-0286.html) 均提供修复程序。[Xfce](https://www.xfce.org/) 的媒体播放器 [parole](https://docs.xfce.org/apps/parole/start) 4.18.0 修复了编译警告、加载封面图像时的内存错误；并更新了翻译和版权年份。[zchunk](https://github.com/zchunk/zchunk) 1.2.4 更新对 [zstd](https://facebook.github.io/zstd/) 1.5.4 的测试进行了处理。

快照 [20230218](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3GC46A7AEI4K43PGOSID6IJ57CYZA347/) 将 [Ruby](https://www.ruby-lang.org/en/) 的默认版本从 3.1 更改为 [3.2](https://www.ruby-lang.org/en/news/2022/12/25/ruby-3-2-0-released/)。较新版本的 Ruby 增加了许多功能和性能改进。Ruby 3.2 提供了基于 WASI 的 WebAssembly 支持，使 CRuby 二进制文件可以在 Web 浏览器、无服务器[边缘](https://en.wikipedia.org/wiki/Edge_computing)环境或其他类型的 WebAssembly/WASI 嵌入器上使用。Ruby 改进了正则表达式匹配算法，并具有一个新功能 `syntax_suggest`，该功能以前是集成在 Ruby 中的 `dead_end`。

上周五的快照 [20230217](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ANSDSDJCQEGB5DK5BDZIB6LMKQF7NWHV/) 更新了许多软件包。[sudo](https://www.sudo.ws/) 1.9.13 更新修复了在 shell 脚本中运行 sudo 命令时的信号处理错误，并修复了错误路径中潜在的内存泄漏。由于 1.13.0 更新，锁定密钥同步在 1.11.0 中被意外禁用后，已在本机 [tigervnc](https://tigervnc.org/) 查看器中重新启用。[php8](https://www.php.net/) 8.1.16 是一个安全更新版本，解决了 [CVE-2023-0567](https://www.suse.com/security/cve/CVE-2023-0567.html)、[CVE-2023-0568](https://www.suse.com/security/cve/CVE-2023-0568.html) 和因 HTTP 表单上传的部分过多，会导致资源消耗高，日志条目过多的 [CVE-2023-0662](https://www.suse.com/security/cve/CVE-2023-0662.html)。PDF 渲染器 [poppler](https://poppler.freedesktop.org/) 更新至 23.02.0，修复了 color [type 3 字体](https://www.epapers.org/iscas2018/ESR/type3_fonts.php)的渲染问题。[inkscape](https://inkscape.org/) 1.2.2 提供了四个崩溃修复，五个扩展错误修复和 13 个用户界面翻译改进。快照中要更新的其他软件包包括但不限于 [bind](https://bind9.readthedocs.io/) 9.18.12、[webkit2gtk3](https://webkitgtk.org/) 2.38.5 等。

------

原文：[Ruby Default Switches in Tumbleweed](https://news.opensuse.org/2023/02/24/ruby-default-swtiches-in-tw/)，作者：Douglas DeMaio