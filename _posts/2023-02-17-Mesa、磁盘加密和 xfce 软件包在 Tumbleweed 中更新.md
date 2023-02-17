---
author: Hanjingxue Boling
date: 2023-02-17 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Mesa、磁盘加密和 xfce 软件包在 Tumbleweed 中更新
image: /assets/posts/2023-02/xfce.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 本周发布了许多快照，主要聚焦于硬件、图形、桌面环境等方面。

从 [Mesa](https://www.mesa3d.org/) 到磁盘加密包 [cryptsetup](https://gitlab.com/cryptsetup/cryptsetup)，到 [Xfce](https://www.xfce.org/) 软件，再到 [GraphicsMagick](http://www.graphicsmagick.org/)，快照随着新的软件更新不断滚动着。

快照 [20230215](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FYCC4CQ6QHKIEBPZ75OLFIT72SEWCBO4/) 将 [ImageMagick](https://imagemagick.org/index.php) 专注于编程 [API](https://en.wikipedia.org/wiki/API) 和命令行选项的分支 [GraphicsMagick](http://www.graphicsmagick.org/) 更新至 1.3.40，修复了一个在 WordPerfect Graphics 标头读取中已存在 20 年的错误。GraphicsMagick 还提供了一些新功能，并支持编写未压缩格式的 PCX 和 DCX 文件。[gnome-shell](https://gitlab.gnome.org/GNOME/gnome-shell) 43.3 的更新填补了一个漏洞，修复了一个崩溃并清理了一些代码。文本整形引擎 [harfbuzz](https://github.com/harfbuzz/harfbuzz) 获得大版本更新，从 6.0 版本更新到 7.0 版本；harfbuzz 为 [glyf](https://man.archlinux.org/man/community/perl-font-ttf/Font::TTF::Glyf.3pm.en) 数据表提供了对三次曲线的实验性支持，新增了一个用于查询各种字体信息的实用命令行程序 `hb-info`。快照中还进行了一些其他更新。

快照 [20230214](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EKNDN35TOEIJSHULZUI45ZFKFCWZLR5S/) 将磁盘加密包 [cryptsetup](https://gitlab.com/cryptsetup/cryptsetup) 更新至 2.6.1 版本。cryptsetup 修复了 [OpenSSL2](https://www.openssl.org/) [PBKDF2](https://en.wikipedia.org/wiki/PBKDF2) 加密后端中可能出现的迭代溢出。该软件包还修复了一个可能的哈希偏移设置溢出问题，并且当[标头](https://en.wikipedia.org/wiki/Header_(computing))和数据设备相同时，它不会启动重新加密命令。根据变更日志，如果不请求减少数据设备，则会导致数据损坏，因为 [LUKS](https://en.wikipedia.org/wiki/Linux_Unified_Key_Setup) 将覆盖数据设备。[NetworkManager](https://networkmanager.dev/) 1.42.0 的更新增加了对[链路聚合](https://en.wikipedia.org/wiki/Link_aggregation)的源负载平衡的支持，并增加了对 [ECMP](https://en.wikipedia.org/wiki/Equal-cost_multi-path_routing) 路由的 [IPv4](https://en.wikipedia.org/wiki/IPv4) 支持。ECMP 路由将被合并。[guestfs-tools](https://www.libguestfs.org/) 1.50.0 删除了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures) 补丁。[CVE-2022-2211](https://www.suse.com/security/cve/CVE-2022-2211.html) 是一个错误或恶意行为者导致拒绝服务的漏洞，但它被认为对用于访问和修改虚拟机磁盘镜像的软件包的影响很小。更新后的 guestfs-tools 还有一个新的 “virt-drivers” 工具；该工具可用于指向缺少元数据的磁盘镜像，并且在某些情况下，可以确定与镜像有关的有用信息，例如它包含什么引导加载程序以及它需要启动什么设备模拟。[kernel-firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git) 20230210 的更新为使用 [Cirrus 放大器](https://www.cirrus.com/support/technologies/amplifiers/)的 HP 笔记本电脑添加了丢失的调整文件，并为 [ASUS](https://www.asus.com/) 笔记本电脑上的 [Cirrus CS35L41](https://www.cirrus.com/products/cs35l41/) 添加了固件。快照中要更新的其他一些软件包是 [gnome-control-center](https://gitlab.gnome.org/GNOME/gnome-control-center) 43.4.1、[libzypp](https://github.com/openSUSE/libzypp) 17.31.8、[yast2](https://github.com/yast/yast-yast2) 4.5.24 和 [vim](https://www.vim.org/) 9.0.1307 等。

快照 [20230212](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2EEOCTDBJ33IIB5PBHQRLUA5FE5LM6PY/) 大部分更新与 [Xfce](https://www.xfce.org/) 有关。[xfce4-power-manager](https://gitlab.xfce.org/xfce/xfce4-power-manager) 4.18.1 版本更新了翻译，修复了源标识的管理，并在 [D-Bus](https://gitlab.freedesktop.org/dbus/dbus) 调用失败时实现了对屏幕保护程序锁定命令的回退。[xfce4-session](https://gitlab.xfce.org/xfce/xfce4-session) 4.18.1 更新修复了一些[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)。随着 [xfce4-settings](https://gitlab.xfce.org/xfce/xfce4-settings) 4.18.2 的更新，几个模糊的图标变得更加清晰，并且删除了重复的配置行。[patterns-xfce](https://build.opensuse.org/package/show/X11:xfce/patterns-xfce) 20230212 的更新用 [galculator](http://galculator.mnim.org/) 替换了 [gnome-calculator](https://wiki.gnome.org/Apps/Calculator)，因为它更好地与 [Xfce](https://www.xfce.org/) 外观集成。[yast2-iscsi-client](https://github.com/yast/yast-iscsi-client) 4.5.7 版本也进行了一些更改。

快照 [20230211](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TMHQCKZA3BZCARVTOAVTPC2JAYWBGYIN/) 更新了 [nodejs19](https://nodejs.org/en/) 19.6.0，将 [npm](https://www.npmjs.com/) 依赖项升级到 9.4.0 版本，并在收到上游修复后删除了 [s390](https://en.wikipedia.org/wiki/IBM_System/390) 补丁。[gnome-software](https://gitlab.gnome.org/GNOME/gnome-software) 43.4 的更新对 [AppStream](https://github.com/ximion/appstream) 进行了一些更改。[gnome-contacts](https://wiki.gnome.org/Apps/Contacts) 43.1 修复了更新或编辑联系人时的几个错误。基于 [GTK+](https://www.gtk.org/) 的蓝牙管理器 [blueman](https://github.com/blueman-project/blueman) 已更新至 2.3.5 版本并启用了一个插件，该插件提供设备连接错误并修复了错误指针的右键单击。[dbus-1](https://gitlab.freedesktop.org/dbus/dbus) 1.14.6 版本的更新修复了在记录不可审计的 [SELinux](https://github.com/SELinuxProject) 事件时某些 [glibc](https://www.gnu.org/software/libc/) 版本的崩溃。dbus-1 还修复了一些文档。[GNOME](https://www.gnome.org/) 个人管理应用 [evolution](https://wiki.gnome.org/Apps/Evolution) 更新至 3.46.4 版本，将邮件签名转换为 [markdown](https://en.wikipedia.org/wiki/Markdown) 语言，由 [Aaron Swartz](https://en.wikipedia.org/wiki/Aaron_Swartz) 共同开发。

上周五的快照 [20230210](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CNZ7CVTFFJ3ENH7NZYFQXKNXEO5C7AWW/) 带来了 [Mesa](https://www.mesa3d.org/) 和 [Mesa-drivers](https://docs.mesa3d.org/relnotes/22.3.5.html) 22.3.5，它没有新功能，但它确实修复了空描述符并修复了 [sRGB](https://en.wikipedia.org/wiki/SRGB) 格式的 RB+。[Xfce](https://www.xfce.org/) 的文本编辑器 mousepad 在 0.6.0 版本中进行了一些[代码重构](https://en.wikipedia.org/wiki/Code_refactoring)和代码清理。[postgresql15](https://www.postgresql.org/) 15.2 版本解决了 [CVE-2022-41862](https://www.postgresql.org/support/security/CVE-2022-41862/)；受该漏洞影响，服务器可能会报告包含未初始化字节的错误消息，并可能使攻击者可以访问消息。快照还更新了其他一些软件包。

------

原文：[Mesa, Disk Encryption, Xfce Packages Update in Tumbleweed](https://news.opensuse.org/2023/02/17/mesa-disk-xfce-up-in-tw/)，作者：Douglas DeMaio