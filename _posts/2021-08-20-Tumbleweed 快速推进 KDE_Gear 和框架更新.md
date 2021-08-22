---
author: Hanjingxue Boling
date: 2021-08-20 21:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 快速推进 KDE Gear 和框架更新
image: /assets/posts/2021-08/twff.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- KDE
---

本周，为了发布 openSUSE Tumbleweed 快照，开发团队在后台进行了大量的工作。

在最新的 [openSUSE 发布工程会议](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/QZMCZJWWNU3KHYSC4ID7X4HMKCUYZCBY/)的邮件列表中，记录了关于在本周 Tumbleweed 开发工作中使用[开放构建服务](https://build.opensuse.org/)构建镜像时遇到的一些挑战。有一些构建失败，这导致了一些损坏的构建的出现。这些构建没有作为快照发布，因为这些构建必须通过 openSUSE 的 [openQA](https://openqa.opensuse.org/) 测试。ISO 介质的尺寸也变得太大而无法装入 DVD ；当容量超过尺寸限制时，会经常进行调整，所以让我们看看已发布的快照。

构建、测试和发布一个成功的快照的努力确实随着快照 [20210817](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/7LW3JRIVNQRISP2AQOUONQKUZMPSMXPV/) 的发布而来。用户收到了一些期待已久的软件和一些非常酷的新功能。[KDE Gear 21.08.0](https://kde.org/announcements/gear/21.08.0/) 是滚动发布用户的众多软件包之一。[Dolphin](https://apps.kde.org/dolphin/) 文件管理器现在对包含大量可预览文件的文件夹显示一串动画预览。它的预览代码也被优化了，所以缩略图弹出的速度更快，而且加密位置的文件，比如 Plasma Vaults，可以显示预览。PDF 阅读器 [Okular](https://okular.kde.org/) 在工具栏上做了一些改进，允许采用彩色设计，使阅读更舒适，有助于避免眼睛疲劳。[Konsole](https://konsole.kde.org/) 终端提供将光标悬停在命令行的图像文件名上时，出现预览的功能。[Gwenview](https://apps.kde.org/gwenview/) 图像查看器和 [Elisa](https://elisa.kde.org/) 音乐播放器也得到了改进。[KDE Frameworks 5.85.0](https://kde.org/announcements/frameworks/5/5.85.0/) 也出现在快照中。开发者用户界面 [Kirigami](https://github.com/KDE/kirigami) 修正了关闭按钮和行动按钮之间的一些间距。它还增加了一种可以在桌面上将一个页面推送为一个新窗口的方法。本次快照对 [KTextEditor](https://api.kde.org/frameworks/ktexteditor/html/) 的网络挂载性能进行了优化，修复了 [KWayland](https://api.kde.org/frameworks/kwayland/html/index.html) 对 [mmap](https://en.wikipedia.org/wiki/Mmap) 系统调用失败的检查。[AppStream](https://www.freedesktop.org/wiki/Distributions/AppStream/) 是一个为跨发行版创建应用商店提供标准的软件包，它更新到了 0.14.4 版本，并改进了文本行的包装。[Mozilla Thunderbird](https://www.thunderbird.net/) 78.13.0 修复了 6 个[常见漏洞和披露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；其中三个涉及对可能的内存损坏的修复。在媒体 [SDL2 2.0.16](https://www.linuxfromscratch.org/blfs/view/svn/multimedia/sdl2.html) 的更新中，提供了对处理客户端装饰，更好的原生 [Wayland](https://wayland.freedesktop.org/) 支持和其他功能。[Firewalld](https://firewalld.org/) 的第一个主要版本 1.0.0 在快照中发布；动态管理的防火墙减少了依赖性，清理了规范文件，并废弃了 iptables 后端。矢量图形编辑器 [Inkscape](https://inkscape.org/) 经数个小版本更新至 1.1，并增加了一个可以选择 Inkscape 的外观，一些关于新文档大小或打开文件的选择的欢迎对话框。当粘贴复制的对象时，Inkscape 现在默认将其直接粘贴在当前选定的对象之上。在快照中还列出了一些更新的软件包。在这些更新的软件包中，有 [apparmor](https://apparmor.net/) 3.0.3、[ipset](https://netfilter.org/projects/ipset/) 7.15、[nodejs16](https://nodejs.org/en/) 16.6.2、[openvpn](https://openvpn.net/) 2.5.3、[vim](https://www.vim.org/) 8.2.3318、[pipewire](https://pipewire.org/) 0.3.33 和 [yast2-users](https://yast.opensuse.org/) 4.4.6，它们进行了一次更新，允许编辑现有用户的名字，另一次更新是删除现有用户的密码。

------

原文：[Tumbleweed Fast Forwards with KDE Gear, Frameworks Updates](https://news.opensuse.org/2021/08/20/tw-ff-w-kde-gear-frameworks-updates/)，作者：Douglas DeMaio