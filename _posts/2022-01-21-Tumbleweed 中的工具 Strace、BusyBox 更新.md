---
author: Hanjingxue Boling
date: 2022-01-01 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 中的工具 Strace、BusyBox 更新
image: /assets/posts/2022-01/strace.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

- 注意，本文的配图由 Vitaly Chaykovsky 提供，基于 CC BY-SA 4.0 协议进行发布。

openSUSE Tumbleweed 本周在较小的快照中进行了各种软件包更新。

Tumbleweed 正在准备的一些事情是，[Linux Kernel](https://www.kernel.org/) 5.16.1 已计划装载，并且 [GCC](https://gcc.gnu.org/) 12 的预集成测试已经开始；此滚动版本预计将在春季中期合并 [GCC](https://gcc.gnu.org/) 12。

最新的 Tumbleweed 快照 [20220117](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/46VGHTG3ELSVZV34GUYN3ESKYMESFT3G/) 更新了 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.75 的意大利语翻译，并添加了用于构建包的 python-rpm-macros。[Haskell](https://www.haskell.org/) 支持在 [thrift](https://thrift.apache.org/) 0.15.0 包中被删除，这是一个可扩展的跨语言服务框架，用于[远程过程调用](https://en.wikipedia.org/wiki/Remote_procedure_call)和[进程间通信](https://en.wikipedia.org/wiki/Inter-process_communication)。使用 [Rust](https://www.rust-lang.org/) 编写的名为 [gstreamer-plugins-rs](https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs) 的插件包没有提供更改日志。快照中剩余的包都是 [Python 包索引](https://pypi.org/)更新。需要强调的关键 [PyPI](https://pypi.org/) 包之一是 [python-unicodedata2](https://pypi.org/project/unicodedata2/) 14.0.0 的主要版本更新，它停止了对已经[结束生命周期](https://en.wikipedia.org/wiki/End-of-life_product)的 [Python](https://www.python.org/) 2.7 和 3.5 的支持，并增加了对 Python 3.9、3.10 和 [PyPy3](https://www.pypy.org/) 的支持。Tumbleweed [arm 20220118](https://lists.opensuse.org/archives/list/arm@lists.opensuse.org/thread/6Y5UILGXNK2DHKE7E4TIVQCLXQ62B75W/) 快照已发布，更新了上面列出的相同软件包。

反病毒工具包 [ClamAV](https://www.clamav.net/) 0.103.5 在快照 [20220116](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GLHGR533JVNVGTHEFDSPLTVN7WNON2GE/) 中更新；该程序包修复了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)，该 CVE 具有可能导致崩溃的无效指针读取。将 UNIX 密码文件转换为影子密码格式的 [shadow](https://github.com/shadow-maint/shadow/) 包已更新到版本 4.11.1。 此软件包修复了 [CVE-2013-4235](https://www.suse.com/security/cve/CVE-2013-4235.html)，它在复制和删除目录树时会影响竞争条件。 面向对象的通用即插即用框架 [gupnp](https://wiki.gnome.org/Projects/GUPnP) 1.4.3 现在可以在不推荐使用的调用和修复的不推荐使用的异步调用中正确传播取消的操作。此快照中的 [PyPI](https://pypi.org/) 更新是 [python-python-lzo](https://pypi.org/project/python-lzo/) 1.14、[python-tables](https://pypi.org/project/tables/) 3.7.0，并且 [python-hiredis](https://pypi.org/project/hiredis/) 2.0.0 的主要版本更新放弃了对已经结束生命周期的 Python 版本（Python 2.7、3.4 和 3.5 ）支持。

[Mozilla Firefox](https://www.mozilla.org/) 96.0.1 已在 [20220115](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/KMGNCVT4LYPUSKNSYXRRADADZRMYUIAV/) 快照中更新。火狐浏览器对 `content-length` 标头的解析进行了改进。[Mesa](https://www.mesa3d.org/) 21.3.4 的更新能够修复 [Rockchip](http://www.rock-chips.com/a/en/index.html) [RK3399](http://rockchip.wikidot.com/rk3399) 处理器的一些故障以及 [Panfrost](https://docs.mesa3d.org/drivers/panfrost.html) G52 [Firefox](https://www.mozilla.org/) 在 [YouTube](https://www.youtube.com/) 播放时出现故障。[ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.3.20220101 的更新添加了几个补丁，改进了 [getttynam](https://linux.die.net/man/3/getttynam) 的配置检查。openSUSE 的 [perl-Bootloader](https://github.com/openSUSE/perl-bootloader) 0.937 包现在支持 [PowerPC](https://en.wikipedia.org/wiki/PowerPC) 上的[安全启动](https://en.wikipedia.org/wiki/Unified_Extensible_Firmware_Interface#Secure_boot)，并且 [autoyast2](https://github.com/yast/yast-autoinstallation/blob/master/package/autoyast2.changes) 4.4.25 能够在使用在线媒体时正确合并自动升级工作流程。快照中另一个要更新的软件包是 [firewalld](https://firewalld.org/) 1.0.3，它修复了一些构建功能、[ipsets](https://ipset.netfilter.org/) 和输入。

[strace](https://strace.io/) 5.16 在快照 [20220114](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JFYRSJQRMYJQPZZNBH4SAZOTGFTGHW6Q/) 中有许多改进和几个实现。该包用于监视和干预进程与 Linux 内核之间的交互，包括系统调用、信号传递和进程状态的更改。更新后的 [Strace](https://strace.io/) 实现了一个 `--secontext=mismatch` 选项来查找 SELinux 上下文中的不匹配，并实现了对 [Linux Kernel](https://www.kernel.org/) 5.16 中引入的 `futex_waitv` 系统调用的解码。[Flatpak](https://flatpak.org/) 1.12.3 的更新对搜索命令、列表命令和修复命令进行了小幅改进。Flatpak 还修复了一个具有恶意存储库的 CVE，该存储库可能以隐藏安装期间显示的某些应用程序权限的方式发送无效的应用程序元数据。由于 [busybox](https://busybox.net/) 1.35.0 解决了 17 个CVE，本次快照是一个 CVE 杀手。其中之一，[CVE-2016-6301](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6301) 是一个网络时间协议服务器拒绝服务漏洞。BusyBox 还在 find、date 和 [cpio](https://en.wikipedia.org/wiki/Cpio) 中添加了一些新功能。远程桌面协议的自由实现 [freerdp](https://www.freerdp.com/) 2.5.0 向后移植 [OpenSSL](https://www.openssl.org/) 3.0 支持以及修复了一些 [Wayland](https://wayland.freedesktop.org/) 客户端剪贴板问题。快照中要更新的其他软件包包括 [btrfsprogs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 5.16、[GNOME](https://www.gnome.org/) 显示管理器 [gdm](https://wiki.gnome.org/Projects/GDM) 41.3、[gnome-session](https://gitlab.gnome.org/GNOME/gnome-session) 41.3、[poppler](https://poppler.freedesktop.org/) 22.01.0 和大约 15 个其他软件包。

本周开始的快照 [20220113](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/G7PVDLMGIUAK7YKWWSQ5RAPUGJJOHR2W/) 仅更新了两个包。[389-ds](https://directory.fedoraproject.org/) 2.0.11 的更新修复了各种用户界面错误。这个用于开源 LDAP 服务器的企业级软件包修复了许多错误，还修复了 openldap 迁移中未处理的多种索引类型。快照中要更新的第二个包是 sqlite3 3.37.1。这个 C 语言库添加了 `.connection` 命令，允许 CLI 保持多个数据库连接同时打开。SQL 数据库引擎还添加了 `--safe` 命令行选项，该选项禁用点命令和 SQL 语句，这些语句可能会导致超出命令行上命名的单个数据库文件的副作用。

本周发布了另一个特定于 [arm](https://www.arm.com/) 架构的 Tumbleweed 快照； [arm 20220116](https://lists.opensuse.org/archives/list/arm@lists.opensuse.org/thread/IATJZAMYCAUDMWZ4HVRTRT7LNZ6UC33Y/) 快照更新了从快照 [20220113](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/G7PVDLMGIUAK7YKWWSQ5RAPUGJJOHR2W/)、[20220114](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JFYRSJQRMYJQPZZNBH4SAZOTGFTGHW6Q/)、[20220115](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/KMGNCVT4LYPUSKNSYXRRADADZRMYUIAV/) 和 [20220116](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GLHGR533JVNVGTHEFDSPLTVN7WNON2GE/) 发布的上述所有软件包。

------

原文：[Tools Strace, BusyBox Update in Tumbleweed](https://news.opensuse.org/2022/01/21/tools-strace-busybox-up-in-tw/)，作者：Douglas DeMaio