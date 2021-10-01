---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-10-01 22:15:00 +0800
layout: post
license: CC-BY-SA-3.0
title: GNOME 和 Plasma 版本在风滚草滚动时取得进展
image: /assets/posts/2021-10/2021_10_01_GNOME_和_Plasma_版本在风滚草滚动时取得进展.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- GNOME
- Plasma
---

[GNOME 41](https://help.gnome.org/misc/release-notes/41.0/) 已经进入 [openSUSE Factory 阶段](https://en.opensuse.org/openSUSE:Factory_development_model#Staging_Projects)，而 [KDE Plasma 5.23](https://kde.org/announcements/plasma/5/5.22.90/) 即将在 openSUSE Tumbleweed 快照中发布，因为它正在逐步升级。

openSUSE 的滚动分支本周发布了四个快照，更新了 [Mesa](https://www.mesa3d.org/)、[curl](https://curl.se/)、[catfish](https://docs.xfce.org/apps/catfish/start)、[PipeWire](https://pipewire.org/) 和 [Perl](https://www.perl.org/) 等软件包。

快照 [20210928](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IWOA4ZCTB7232UASJPCTDHISIMMP6Y3U/) 通过对 [curl](https://curl.se/) 7.79.1 的更新改进了数据的传输，使其能够与 [OpenSSH 8.7](https://www.openssh.com/txt/release-8.7) 一起工作；这个命令行工具和库也调整了一个设置，在重复调用时不改变连接数据。 [inkscape](https://inkscape.org/) 1.1.1 的更新修复了一个崩溃，并改善了这个图形编辑程序的启动时间。在快照中更新的另外两个软件包是 [yast2-network](https://yast.opensuse.org/) 4.4.26 和 [yast2-nfs-client](https://yast.opensuse.org/) 4.4.1；后者有一个更新，支持 [fstab](https://en.wikipedia.org/wiki/Fstab) 中的 [systemd](https://freedesktop.org/wiki/Software/systemd/) 挂载选项。

文件搜索工具 [catfish](https://docs.xfce.org/apps/catfish/start) 在快照 [20210927](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DPINW76V5KUALYSPX657SHP347GRKD6G/) 中更新，4.16.3 版本完成了更好的图标更新和侧边栏背景颜色修复。[Intel](https://www.intel.com/) 的 [dleyna-renderer](https://github.com/intel/dleyna-renderer) 包更新到 0.7.1； 这个包允许客户端发现和操作数字媒体渲染器，提供了一个构建修复和一个到 [GUPnP 1.2](https://github.com/GNOME/gupnp) 面向对象框架的端口。桌面环境包 [menulibre](https://bluesabre.org/menulibre/) 2.2.3 修复了在 KDE 上可选择诊断文本的问题，并添加了对 [GNOME 特定类别](https://www.gnome.org/)的支持。

[Mozilla Thunderbird](https://www.thunderbird.net/) 91.1.1 在快照 [20210926](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/SQLYSZI6GCYEOXADHGL7PKES4MOZDILC/) 中发布；添加了用于禁用单个消息主题加密的菜单项，不再支持打印当前未显示的电子邮件消息，包括一次打印多条消息。 [dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html) 2.86 版本修复了一个错误，该错误导致 dnsmasq 在重负载下无法跟踪处理[传输控制协议](https://en.wikipedia.org/wiki/Transmission_Control_Protocol)[域名系统](https://en.wikipedia.org/wiki/Domain_Name_System)连接的分叉进程。 [Perl](https://www.perl.org/) 5.34.0 添加了一个补丁来修复 [gdbm](https://www.gnu.org.ua/software/gdbm/) 1.20 的构建并修复了正则表达式中的内存泄漏。 [gnome-shell](https://www.gnome.org/) 40.5 更新优化了全屏缩放的渲染，[pipewire](https://pipewire.org/) 0.3.37 提供了一些 JACK 稳定性改进，并在某些应用程序中更改了缓冲区大小和采样率。 快照中的其他更新包括 [php7](https://www.php.net/) 7.4.24、[mousepad](https://docs.xfce.org/apps/mousepad/start) 0.5.7、[ceph](https://ceph.io/) 的版本升级、[mutter](https://download.gnome.org/sources/mutter/) 40.5、[python-numpy 1.21.2](https://pypi.org/project/numpy/) 和一些 [YaST](https://yast.opensuse.org/) 软件包的更新。

快照 [20210924](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2W73XWYC4UURVPARVPIMPXWHJHRM3IBE/) 带来了 [Mesa](https://www.mesa3d.org/) 21.2.2 的更新；3D 图形包提供了一些错误修复，并且做了大量工作使 [panfrost](https://gitlab.freedesktop.org/panfrost) 更接近于一致。 创作套件 [ImageMagick](https://imagemagick.org/index.php) 7.1.0.8 修复了一些颜色转换并添加了一个选项来读取原始图像的缩略图并将其存储为名为 `dng:thumbnail` 的配置文件。 聊天客户端 [pidgin](https://www.pidgin.im/) 2.14.7 删除了一些过时的翻译并修复了一些漏洞。 其他在快照中更新的软件包是 [bubblewrap](https://github.com/containers/bubblewrap) 0.5.0、[webkit2gtk3](https://webkitgtk.org/) 2.32.4、[gnome-control-center](https://gitlab.gnome.org/GNOME/gnome-control-center) 40.1 和 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.37 。

------

原文：[GNOME, Plasma Releases Make Progress While Tumbleweed Rolls](https://news.opensuse.org/2021/10/01/gnome-plasma-releases-make-progress-while-tw-rolls/)，作者：Douglas DeMaio
