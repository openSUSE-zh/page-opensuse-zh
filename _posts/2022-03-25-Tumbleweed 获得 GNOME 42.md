---
author: Hanjingxue Boling
date: 2022-03-25 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 获得 gnome 42
image: /assets/posts/2022-03/gnomed.png
categories:
- 社区新闻
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) 滚动分支 [Tumbleweed](https://get.opensuse.org/tumbleweed/) 快速地为用户提供了最新发布的 [GNOME 42](https://release.gnome.org/42/)。

这个由 [gnome](https://www.gnome.org/) 贡献者们发布，备受关注的版本已在快照 [20220323](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6JFVEVVR246ME4ODHTATDNWHYLNRC7TW/) 中发布。

[GNOME 42](https://release.gnome.org/42/) 具有新的全局深色用户界面样式偏好，并配备了[重新设计的屏幕截图功能](https://static.gnome.org/release/42/screenshots.webm)。GNOME 42 核心应用程序已移植到 [GTK4](https://www.gtk.org/) 并提供下一代功能。GNOME 42 包括一组有价值的性能改进，例如视频现在使用具有硬件加速解码的现代 [OpenGL](https://www.opengl.org//) 小部件；输入处理得到了显着增强，从而降低了输入延迟并提高了响应能力。全屏应用程序呈现方式的改进降低了视频播放的能耗并提高了游戏的帧速率。[VLC](https://www.videolan.org/vlc/index.html) 3.0.17.3 在快照中进行了更新，并修复了可能导致自适应流播放缺少音频的回归。快照中更新了其他几个软件包，包括 [NetworkManager](https://networkmanager.dev/) 1.36.4、[GTK4](https://www.gtk.org/) 4.6.2、[webkit2gtk3](https://webkitgtk.org/) 2.36.0、[yast2-installation](https://github.com/yast/yast-installation) 4.4.50 等。

于前一天发布的快照 [20220322](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2U2QNDHOPR2GBVEORYVD2GUUGEKJJARI/) 提供了三个包更新。以太网和 IP 地址配对包 [arpwatch](https://ee.lbl.gov/downloads/arpwatch/) 3.2 添加了一个配置选项来指定发送邮件的路径。[aws-cli](https://github.com/aws/aws-cli) 1.22.65 更新了规范文件并进行了一些 [API](https://en.wikipedia.org/wiki/API) 更改，例如添加用于自定义插件删除 `DeleteCustomPlugin` 的操作以及添加 [Hybridcast](https://www.nhk.or.jp/strl/english/publica/bt/51/2.html) 作为 [Dash Origin Endpoints](https://docs.aws.amazon.com/mediapackage/latest/ug/endpoints-dash.html) 的可用配置文件选项。[python-pip](https://pypi.org/project/pip/) 更新至 22.0.4 版本；该包与 Python 3.6 不兼容，所以不适用于 [openSUSE Leap 15](https://get.opensuse.org/leap/)。但是，此次更新修复了 pip 不考虑依赖关系的问题。之前的 20.2.4 版本在滚动版本中有大量更新。

快照 [20220321](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/AMOCYGLFJM3PEMLEUKYXWNM7FBWUFOM5/) 中更新了另外三个包。此快照为 [GCC](https://gcc.gnu.org/) 11 提供了一个小更新，其中包含一个补丁来修复 i586 处理器上游戏 [0 A.D.](https://en.wikipedia.org/wiki/0_A.D._(video_game)) 的嵌入式预编译错误。C/C++ 代码分析工具 [cppcheck](http://cppcheck.wiki.sourceforge.net/) 更新到 2.7.1 版本。该工具对检查器进行了各种改进，并增加了对容器视图的支持；视图属性已被添加到容器库标签中，以指定该类是一个视图。寿命分析已被更新，以使用这个新属性来查找悬空的寿命容器。另一个要更新的包是 [rpm-config-SUSE](https://github.com/openSUSE/rpm-config-SUSE)，它改变了版本结构，从 0.g96 更新到了 20220317。

openSUSE 在本周末继续发布快照，其中快照 [20220320](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VOFY6P3ZET4DR3QX3IHKXD3SR3BGPIGC/) 更新了 15 个软件包。此快照将 [gnome-software](https://gitlab.gnome.org/GNOME/gnome-software) 更新到版本 41.5，以添加几个与 appstream 相关的修复；此更新还禁用了特色轮播上的鼠标滚轮。本次快照将 [container-selinux](https://github.com/containers/container-selinux) 从 2.171.0 更新到版本 2.180.0，并提供了几个附加选项，并允许用户角色使用容器域。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.94 的更新不再阻止扩展分区上的 [blkdiscard](https://man7.org/linux/man-pages/man8/blkdiscard.8.html)；[whois](https://github.com/rfc1036/whois) 客户端 5.5.12 更新了 [.pro](https://en.wikipedia.org/wiki/.pro) 顶级域服务器。其他值得注意的更新包是 [librsvg](https://gitlab.gnome.org/GNOME/librsvg) 2.52.8、[python-kiwi](https://pypi.org/project/kiwi/) 9.24.29、[yast2-installation](https://github.com/yast/yast-installation) 4.4.49 等。

快照 [20220319](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YTP74YJMFWHBNKWB5DFD5HYIIO3YB6QY/) 更新了 [NetworkManager](https://networkmanager.dev/) 1.36.2，现在可以加载插件目录中找到的所有已知插件。NetworkManager 还将 [iproute2](https://wiki.linuxfoundation.org/networking/iproute2) 和 [iputils](https://github.com/iputils/iputils) 从需求依赖转换为推荐依赖。[Flatpak](https://flatpak.org/) 1.12.7 在快照中进行了更新，并有一个变化，允许用 Flatpak 1.13.x 构建的应用程序在 share/metainfo 中导出 [AppStream](https://github.com/ximion/appstream) 元数据，这可能会在即将举行的 [Linux 应用程序峰会](https://linuxappsummit.org/)上讨论。[Linux 内核](https://www.kernel.org/) 5.16.15 似乎提供了一些 [ARM](https://www.arm.com/) 修复，并列出了 [CVE-2022-0886](https://nvd.nist.gov/vuln/detail/CVE-2022-0886) 的修复，这是 [CVE-2022-27666](https://nvd.nist.gov/vuln/detail/CVE-2022-27666) 的复制品。

于上周五发布，开启本周的快照是 [20220318](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ML2CNPEGJVSOYWVK7MGCA76RE346RXNZ/)。该快照将 [rubygem-formatador](https://rubygems.org/gems/formatador/versions/0.3.0) 从 1.1.0 恢复到 0.3.0。[gstreamer-plugins-rs](https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs) 0.8.2 版本中有一个 `cargo.lock` 的更新；[desktop-translations](https://github.com/openSUSE/desktop-file-translations) 84.87.20220316 的第六个月更新 9301f89b 完成了几百个翻译变更。快照中的其他更新包括 [fwupd-efi](https://github.com/fwupd/fwupd-efi) 1.2、[p11-kit](https://p11-glue.github.io/p11-glue/index.html) 0.24.1 和 [yast2-packager](https://github.com/yast/yast-packager) 4.4.26。

------

原文：[Tumbleweed Gets GNOME 42](https://news.opensuse.org/2022/03/25/tw-gets-gnome42/)，作者：Douglas DeMaio