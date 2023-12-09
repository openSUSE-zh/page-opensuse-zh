---
author: Poplar at twilight
date: 2023-12-09 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: LLVM、Sudo 和 GCC 在 Tumbleweed 中更新
image: /assets/posts/misc/DragonFull.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE Tumbleweed 本周持续发布快照，为用户带来最新的软件更新。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

除了标题中强调的更新之外，[MariaDB]、[GTK] 和 [gnome-software] 也是本周推出的一系列更新的一部分。

[MariaDB]: https://mariadb.org/
[GTK]: https://www.gtk.org/
[gnome-software]: https://gitlab.gnome.org/GNOME/gnome-software

快照 [20231206] 仅更新了两个包。中国农历日期库 [lunar-date] 更新至新的主要版本，3.0.1；它引入了本地化界面并更改了项目选项名称。lunar-date 还将其许可证更新为 [LGPL-2.1]。[rubygem-rubocop] 1.58.0 包的更新解决了各种样式的漏报等问题，提高了部分代码质量，并确保对不同代码模式的自动更正更加准确。[ruby​​gem-rubocop] 1.58.0 也在[适用于 ARM 的 Tumbleweed 快照 20231206] 中更新。

[ruby​​gem-rubocop]: https://rubygems.org/gems/rubocop/versions/1.58.0?locale=en
[lunar-date]: https://github.com/yetist/lunar-date
[20231206]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WZ2H7OOQFO3IQCZIOXZYBOFMI5F7YW5M/
[LGPL-2.1]: https://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html
[适用于 ARM 的 Tumbleweed 快照 20231206]: https://lists.opensuse.org/archives/list/arm@lists.opensuse.org/thread/KE3W6G52JOKMQX5LRTK3QAHPXO265EY3/

快照 [20231205] 更新了 [gnome-shell] 45.2。gnome-shell 解决了多个性能问题，改进了 [GNOME] 的应用程序搜索功能，并修复了与屏幕键盘相关的错误。该更新改进了高对比度样式，修复了 tablet ring 和 strip mapping，解决了一些崩溃问题并更新了翻译。[gnome-maps] 45.2 修复了不必要地重新加载行程查询的错误。[fwupd] 1.9.10 更新除了修正错误外，还增强了多项功能。值得注意的新增内容是对 `not_hardware` 要求和 [loongarch64] 微处理器的支持。此更新改进了 USB 声明重试计数配置、强制执行版本要求、隐藏调试日志中的敏感信息，并改进了特定于设备的功能，例如 [Wacom] USB 设备模拟。[sudo] 1.9.15p2 的更新解决了 `sudo -l command` 警告消息，增强了针对 [rowhammer] 攻击的安全性，并对日志消息进行了改进，以便更好地用户理解和系统安全。用于控制系统范围权限的应用程序开发工具包 [polkit] 的 123 版本更新，引入了增强的安全措施，例如对配置文件的更深入限制、[systemd] 下守护进程的所有者限制，并改进了 systemd 单元内的沙箱，旨在更好地系统安全。[sqlite3] 3.44.2 更新纠正了一些问题，如 [CLI] 错误、内部测试中发现的全文搜索（FTS5）问题以及使用 [GCC] 16 调试构建时出现的编译器警告。快照更新了 [hwdata] 0.377、[ncurses] 6.4.20231202 和更多其他的包。[适用于 ARM 的 Tumbleweed 快照 20231205] 更新了许多相同的软件包。

[适用于 ARM 的 Tumbleweed 快照 20231205]: https://lists.opensuse.org/archives/list/arm@lists.opensuse.org/thread/FT5LBZ5TCBG7EJACWCQTJ7KM2IBN2LHA/
[20231205]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YZ2Z4INOG44QZIYHZMFNVKSHTQPV5YJW/
[gnome-shell]: https://gitlab.gnome.org/GNOME/gnome-shell
[GNOME]: https://www.gnome.org/
[gnome-maps]: https://gitlab.gnome.org/GNOME/gnome-maps
[loongarch64]: https://en.wikipedia.org/wiki/Loongson
[fwupd]: https://fwupd.org/
[sudo]: https://www.sudo.ws/
[Wacom]: https://en.wikipedia.org/wiki/Wacom
[polkit]: https://gitlab.freedesktop.org/polkit/polkit
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[hwdata]: https://github.com/vcrhonek/hwdata
[ncurses]: https://en.wikipedia.org/wiki/Ncurses
[rowhammer]: https://en.wikipedia.org/wiki/Row_hammer
[gcc]: https://gcc.gnu.org/
[sqlite3]: https://www.sqlite.org/index.html
[CLI]: https://en.wikipedia.org/wiki/Command-line_interface

快照 [20231204] 中更新了多个 [Qt 6] 子包。[qt6-base] 6.6.1 版本修复了 `QMenuBar` 功能限制，并更正了与 `QFont` 功能 [API] 相关的错误。[qt6-wayland] 6.6.1 的更新修复了与 texture orphanage 相关的崩溃问题，并修复了 [Wayland] 显示的拖放问题。[ibus] 1.5.29 更新增强了持续集成（CI），为 `PostProcessKeyEvent` 添加了信号，防止输入法提交制表符，并修复了按键键入、表情符号和 Unicode 问题。用于访问和修改虚拟机磁盘映像的 [libguestfs] 1.51.8 为 `virt-customize` 添加了 `--chown` 选项和新的 `--tar-in` 操作。快照中还更新了其他一些软件包。

[20231204]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3FNXUM7I2UZVQNJVDHUW6YOCUVVZIB6T/
[Qt 6]: https://www.qt.io/product/qt6
[qt6-base]: https://www.qt.io/
[qt6-wayland]: https://www.qt.io/
[Wayland]: https://wayland.freedesktop.org/
[ibus]: https://github.com/ibus/ibus
[libguestfs]: https://www.libguestfs.org/
[API]: https://en.wikipedia.org/wiki/API

快照 [20231203] 更新了编译器和工具链包 [llvm17] 17.0.6。llvm17 的更新包括变基（rebase）补丁、调整版本化可执行文件以提供更好的支持，以及使用类似于其他二进制文件的 `update-alternatives` 方法对 `clang-cpp` 进行标准化管理，以实现更流畅的操作。[mariadb] 11.1.2 版本包括与不需要的二进制位置、ppc64le 上的内存限制和跳过的测试相关的多个修复。中国农历库 [lunar-calendar] 3.0.1 的日历小部件的更新涉及对许可证的修改，从以前的许可条款过渡到 [LGPL-2.1]。

[lunar-calendar]: https://github.com/yetist/lunar-calendar
[20231203]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IAJ2F5ZKXLLGKBL5227TGVRTMHHM3DBD/
[llvm17]: https://llvm.org/

快照 [20231202] 更新了 [gno​​me-software]。根据变更日志，gno​​me-software 45.2 的更新主要涉及多种语言的翻译。较旧的 [GCC] 有一个 [git] 更新，包含 [gcc13][GCC] 13.2.1+git8109。它修复了在 [i686] 系统上构建 [MariaDB] 的问题，并实现了与 [LLVM][llvm17] 依赖性相关的更改。[inkscape] 1.3.2 的更新解决了数据丢失问题，并纠正了与某些形状和 3D 框相关的保存错误。用于组织个人数据和日程安排的应用程序 [evolution] 更新至 3.50.2 版本，并修复了崩溃和[内存泄漏]；它还修复了搜索功能的问题。[gtk4] 4.12.4 更新改进了可访问性名称计算，修复了内存格式表错误，更新了翻译并进行了一些额外的改进。

[20231202]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/5FTRUNXH23ZWKX37LVEZIWTBB5O3W4W5/
[gno​​me-software]: https://gitlab.gnome.org/GNOME/gnome-software
[git]: https://github.com/git
[i686]: https://en.wikipedia.org/wiki/P6_(microarchitecture)
[inkscape]: https://inkscape.org/
[evolution]: https://wiki.gnome.org/Apps/Evolution
[gtk4]: https://www.gtk.org/
[内存泄漏]: https://en.wikipedia.org/wiki/Memory_leak

本周的第一个快照是 [20231201]。[perl] 5.38.2 的更新修复了两个 [CVE]。其中之一是 [CVE-2023-47038]，当 Perl 编译精心设计的正则表达式时会发生这种情况。另一个是 [CVE-2023-47039]。[Snapper] 0.10.7 解决了与基于[逻辑卷管理器]的配置和接受字符串集合的 `SystemCmd` 的 diff 相关的问题。[iproute2] 6.6 的更新删除了一些功能，并在网桥中添加了备份支持以及对安全协议套件的调整。快照中要更新的其他软件包有 [ethtool] 6.6、[gpgme] 1.23.2 等。

[20231201]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/K2BJRCMU6NM3B5ZQTSDJ5UV7LM6RUMOT/
[perl]: https://www.perl.org/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[CVE-2023-47038]: https://www.suse.com/security/cve/CVE-2023-47038.html
[CVE-2023-47039]: https://www.suse.com/security/cve/CVE-2023-47039.html
[Snapper]: https://github.com/openSUSE/snapper
[逻辑卷管理器]: https://en.wikipedia.org/wiki/Logical_volume_management
[iproute2]: https://git.kernel.org/pub/scm/network/iproute2/iproute2.git
[ethtool]: https://mirrors.edge.kernel.org/pub/software/network/ethtool/
[gpgme]: https://www.gnupg.org/related_software/gpgme/

本周另外两个适用于 Arm 的 Tumbleweed 快照是 [20231204](https://lists.opensuse.org/archives/list/arm@lists.opensuse.org/thread/HVWNVYJO2SATG4QZLTYXMVQOEV4RYFYB/) 和 [20231203](https://lists.opensuse.org/archives/list/arm@lists.opensuse.org/thread/2GRYHK42UHIDDWFE7NQ6PTHUMXT3KTBT/)。

------

原文：[Tumbleweed gets LLVM, Sudo, GCC Updates](https://news.opensuse.org/2023/12/08/llvm-sudo-gcc-packages-up-in-tw/)，作者：Douglas DeMaio