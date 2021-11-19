---
author: Hanjingxue Boling 
date: 2021-11-20 00:20:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Ruby、Plasma 和 GTK 在 Tumbleweed 中更新
image: "/assets/posts/2021-11/2021-11-20 Ruby、Plasma 和 GTK 在 Tumbleweed 中更新.png"
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周总共发布了四个 openSUSE [Tumbleweed](https://get.opensuse.org/tumbleweed/) 快照。

快照 [20211117](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/M4AB2UMQOCBZYGN4EGAGKCYA5KSCTATU/) 为 [KDE](https://kde.org/) 用户提供了 [Plasma 5.23.3](https://kde.org/announcements/plasma/5/5.23.3/) 更新。错误修复版本对 systemsettings5 包进行了更改，该包修复了触摸屏点击。[plasma-desktop](https://invent.kde.org/plasma/plasma-desktop) 有一个涉及拖放重置位置和重叠的[修复](https://bugs.kde.org/show_bug.cgi?id=444366)；该软件包还有一个修复程序，显示一个非活动的 [kwin](https://invent.kde.org/plasma/kwin) 控制台。kwin 还进行了一些修复，以防止截屏崩溃，并为 [Wayland](https://wayland.freedesktop.org/) 提供了一些修复。[kplotting](https://api.kde.org/frameworks/kplotting/html/index.html) 的更新是快照中更新的 [KDE Frameworks 5.88.0](https://kde.org/announcements/frameworks/5/5.88.0/) 中单独的一个包； 其余的来自前一天的快照。[Xfce](https://www.xfce.org/) 用户还在快照中收到了 [xfce4-whiskermenu-plugin](https://docs.xfce.org/panel-plugins/xfce4-whiskermenu-plugin/start) 2.6.2 的更新，该更新为按 Esc 键后菜单不切换的问题提供了修复。该包还修复了在显示菜单时移动背景的问题。 快照中要更新的其他软件包是 [fribidi](https://github.com/fribidi/fribidi) 1.0.11 和 [restorecond](https://linux.die.net/man/8/restorecond) 3.3，这是一个监视文件创建的守护进程。

许多 [KDE Frameworks 5.88.0](https://kde.org/announcements/frameworks/5/5.88.0/) 包在快照 [20211116](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/K64OBLTPRGE6V64QY3TQZUXS3E72PGLI/) 中发布。本次快照提供了对 [KTextEditor](https://api.kde.org/frameworks/ktexteditor/html/) 进行了改进打开/保存高级对话框的更新，并且插件 [KParts](https://api.kde.org/frameworks/kparts/html/index.html) 弃用了未使用的和内部方法。 [Kirigami](https://develop.kde.org/frameworks/kirigami) 的[应用程序接口](https://en.wikipedia.org/wiki/API)文档有一些小的改进； 用户界面框架包还修复了在平板电脑上设置组件的问题。[plasma-framework](https://www.learnplasma.org/en/learn/framework.html) 包添加了额外的键盘快捷键，增加了视觉样式的标签页边距，并为 [breeze](https://github.com/KDE/breeze) 按钮提供了更逼真的阴影。[KDE](https://kde.org/) 用户并不是唯一从超大快照中获得修复和功能的用户。[btrfsprogs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 5.15 的更新为 [mkfs](https://en.wikipedia.org/wiki/Mkfs) 设置了新的默认值，并在仅启用了 v2（空闲空间树）时修复了有关 v1 空间缓存的警告。根据变更日志，[GTK4](https://www.gtk.org/) 在从 git 构建时禁用了 [SassC](https://github.com/sass/sassc) 构建要求，并删除了与 [32 位](https://en.wikipedia.org/wiki/32-bit_computing)相关且可能未被使用的配置。[ruby](https://www.ruby-lang.org/en/) [2.7.4](https://www.ruby-lang.org/en/news/2021/07/07/ruby-2-7-4-released/) 和 [3.0.2](https://www.ruby-lang.org/en/news/2021/07/07/ruby-3-0-2-released/) 都在快照中更新，以解决一些 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。[mariadb](https://mariadb.org/) [10.6.5](https://mariadb.com/kb/en/mariadb-1065-changelog/) 的更新删除了一些补丁，并且不受已经影响了其他其他数据库管理系统的 [CVE-2021-35604](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-35604) 的影响。[postgresql14 14.1](https://www.postgresql.org/docs/14/release-14-1.html) 更新中修复了两个 CVE；其中之一使服务器在 [SSL](https://en.wikipedia.org/wiki/Transport_Layer_Security#SSL_1.0,_2.0,_and_3.0) 或 [GSS](https://en.wikipedia.org/wiki/Generic_Security_Services_Application_Program_Interface) 加密握手后拒绝无关数据。[libreoffice](https://www.libreoffice.org/) 7.2.3.1 的更新删除了两个补丁。 [Vim](https://www.vim.org/) 8.2.3587、[xen](https://xenproject.org/) 4.16.0 和 [yast2-network](https://yast.opensuse.org/) 4.4.31 是许多要更新的软件包和库之一。 快照中有 30 多个额外的软件包需要更新。

快照 [20211111](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/D6BSYASDQBMVUVUYGT4DAMGZOKYWQ32U/) 中只有两个包。[coreutils](https://www.gnu.org/software/coreutils/) 9.0 的主要版本出现在快照中。chmod -v 不再错误报告悬空符号链接的模式，这是在 coreutils-5.3.0 中引入的错误。本次更新修复了更多错误，并添加了新功能，例如 `cksum` 现在支持 `-a (--algorithm)` 选项以选择任何现有 `sum`、`md5sum`、`b2sum` 和 `sha*sum` 实现等。`cksum` 现在包含所有这些程序，并且 coreutils 将不会引入未来的独立校验和实用程序。在 [xorg-x11-server](https://www.x.org/wiki/) 更新到 21.1.1 版本时，发布了大量错误修复和新功能。 X 服务器现在可以在更多情况下正确报告显示 DPI，这可能会影响对高 DPI 屏幕具有自己的解决方法的客户端应用程序的呈现。

本周首先发布的快照是 [20211110](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IWV3MFNVBXGETA6B3GXSP54QJ4B4RS7Q/)。此快照将 [Mozilla Firefox](https://www.mozilla.org/) 更新到 [94.0.1](https://www.mozilla.org/en-US/firefox/94.0/releasenotes/)，这为高级用户提供了一个 `about:unloads`，通过手动卸载选项卡而不关闭它们来释放系统资源。 [Vim](https://www.vim.org/) 在这个快照中也有一个更新到版本 8.2.3582；该文本编辑器在提供拼写建议时读取了一些未初始化的内存。 快照中要更新的其他软件包是 [xwayland](https://xorg.freedesktop.org/wiki/) 21.1.3、[ceph](https://ceph.io/) 16.2.6.462 和几个 [pypi](https://pypi.org/) 软件包。

发送到 [Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)的 [Tumbleweed-Review](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EHDPUTZBUV6VCQJOABTVWPLSUEVWKHZK/) 显示 [Linux Kernel](https://www.kernel.org/) 5.15.2（使用 `zstd` 压缩内核模块）、[ICU](https://icu.unicode.org/) 70.1、[Mesa](https://www.mesa3d.org/) 21.3.0 和 [cmake](https://cmake.org/) 3.22.0 正在测试中，并处于未来版本的暂存项目中。

------

原文：[Ruby, Plasma, GTK Update in Tumbleweed](https://news.opensuse.org/2021/11/19/ruby-plasma-gtk-update-in-tw/)，作者：Douglas DeMaio
