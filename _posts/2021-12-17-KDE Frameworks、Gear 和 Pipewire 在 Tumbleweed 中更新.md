---
author: Hanjingxue Boling
date: 2021-12-17 20:00:00 +0800
layout: post
license: CC-BY-SA-3.0
title: KDE Frameworks、Gear 和 Pipewire 在 Tumbleweed 中更新
image: /assets/posts/2021-12/plasma.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- KDE
---

本周快照并没有放慢速度，因为新软件继续随着每日发布的 openSUSE Tumbleweed 而流动。风滚草本周共有七个快照！

快照 [20211214](https://rsync.opensuse.org/tumbleweed/iso/Changes.20211214.txt) 中只有两个更新。远程访问包 [remmina](https://remmina.org/) 1.4.22 提供了对 [freerdp3](https://github.com/FreeRDP/FreeRDP) 兼容性的修复，并且 remmina 还修复了主窗口关闭时崩溃的问题。[libcap-ng](https://github.com/stevegrubb/libcap-ng) 0.7.11 软件包会分析具有过多权限的应用程序的系统，删除了不需要的规则。

在快照 [20211213](https://rsync.opensuse.org/tumbleweed/iso/Changes.20211213.txt) 更新的众多软件包中，有 [KDE](https://kde.org/) [Gear 21.12.0](https://kde.org/announcements/gear/21.12.0/) 和 [Frameworks 5.89.0](https://kde.org/announcements/frameworks/5/5.89.0/)。Gear 21.12.0 有一些 [Dolphin](https://apps.kde.org/dolphin/) 文件管理器增强功能，例如 `Ctrl + i` 过滤器功能，可在主面板下显示一个框，通过右键单击空白区域添加新的详细视图功能；从弹出菜单中选择 查看模式 > 详细信息。截图应用程序 [Spectacle](https://apps.kde.org/spectacle/) 为 KDE 用户提供了更清晰的图像外观，他们可以将图像从 Spectacle 的预览面板拖放到 Dolphin 或在线图像存储站点以进行共享。Gear 的视频编辑器 [Kdenlive](https://kdenlive.org/) 改进了运动跟踪工具；你只需使用监视器中的框覆盖要跟踪的区域，单击效果面板中的分析，即可愉快地使用新功能！该视频编辑器还有一个新的音频效果，可以去除录音中的背景噪音；噪声抑制器允许将音频效果选项卡中的语音抓取放到音轨上进行清理。Frameworks 5.89.0 对[微风图标](https://develop.kde.org/frameworks/breeze-icons/)进行了大量错误修复，其中包括添加了[缺失的 kmail 微风图标](https://bugs.kde.org/show_bug.cgi?id=392534)。[KContacts](https://api.kde.org/frameworks/kcontacts/html/index.html) 修复了仅限国家/地区地址的地址格式，并弃用了 [countryToISO/ISOToCountry](https://rdrr.io/github/Dmirandae/geocleaMT-1/man/ISOTocountry.html) 以支持 [KCountry](https://api.kde.org/frameworks/ki18n/html/classKCountry.html)。[KIO](https://api.kde.org/frameworks/kio/html/index.html) 和 [Kirigami](https://kde.org/products/kirigami/) 都有一些变化； 后一个包让退出键关闭并推动对话层。应用库 [exo](https://www.xfce.org/) 更新至 4.16.3 版本，修复编译警告；针对 [Xfce](https://www.xfce.org/) 应用程序开发的 exo 还添加了类型检查验证以防止 [GTK](https://www.gtk.org/) 错误警告.[mpg123](https://www.mpg123.de/) 1.29.3 包修正了拼写错误，并在手册页中添加了关于均衡器频段的注释。[xterm](https://invisible-island.net/xterm/) 370 版本提高了慢速连接的性能，并在启用 [colorITmode](https://invisible-island.net/xterm/manpage/xterm.html#VT100-Widget-Resources:colorITMode) 时抑制了一些地方的斜体字体的加载。其他要更新的软件包是 [yast2-bootloader](https://github.com/yast/yast-bootloader) 4.4.10 和 [yast2-storage-ng](https://github.com/yast/yast-storage-ng) 4.4.23，它们增加了对与 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 一起使用的挂载选项的支持，以确定 [efibootmgr](https://github.com/rhboot/efibootmgr) 是否可用。

[高级 Linux 声音体系](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture)的本周第二次更新在快照 [20211212](https://rsync.opensuse.org/tumbleweed/iso/Changes.20211212.txt) 中发布。[alsa](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 1.2.6.1 版本修复了设备解析的配置；并在 [kernel-source](https://www.kernel.org/) 5.15.7 更新中进行了几项 alsa 更改。Linux Kernel 还有几个 [KVM](https://www.linux-kvm.org/page/Main_Page) 修复程序，包括一个没有[用户空间保护密钥](https://www.kernel.org/doc/html/latest/core-api/protection-keys.html)的影子嵌套分页。由于现在有一个依赖关系，[wireplumber](https://gitlab.freedesktop.org/pipewire/wireplumber) 成为快照中 [pipewire](https://pipewire.org/) 0.3.40 的会话管理器；根据更新日志，"当有疑问时，会选择建议的软件包"。[python-cryptography](https://pypi.org/project/cryptography/) 包从 3.4.8 版本更新到 36.0.0，在 9 月份经历了版本号更改。新的 [Python Package Index](https://pypi.org/) 包含用 [Rust](https://www.rust-lang.org/) 编写的整个 [X.509](https://en.wikipedia.org/wiki/X.509) 层；这允许替代的非对称密钥实现，这些实现可以支持云密钥管理服务或硬件安全模块，前提是它们实现了必要的接口。 快照中还有大约 10 个更新。

相当多的 [GNOME](https://www.gnome.org/) 软件包在快照 [20211211](https://rsync.opensuse.org/tumbleweed/iso/Changes.20211211.txt) 中收到了版本更新。虽然 [gnome-maps](https://wiki.gnome.org/Apps/Maps) 41.2 有翻译更新，但 [gnome-software](https://www.gnome.org/) 41.2 修复了仅在项目未安装/删除应用程序时处理年龄评级和重新加载应用程序详细信息时的崩溃。[gupnp](https://gitlab.gnome.org/GNOME/gupnp) 1.4.1 包修复了异步弃用的 [API](https://en.wikipedia.org/wiki/API) 中的回归。[Mozilla Firefox](https://www.mozilla.org/) [95.0](https://www.mozilla.org/en-US/firefox/95.0/releasenotes/) 在快照中更新，并修复了一些 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。该版本似乎是对 [Windows 95](https://en.wikipedia.org/wiki/Windows_95) 的认可，因为该浏览器已上架 Microsoft Store。[glib2](https://wiki.gnome.org/Projects/GLib) 2.70.2 更新修复了使用带有 [journald](https://www.freedesktop.org/software/systemd/man/journald.conf.html) 名字空间的默认日志编写器的问题。快照中要更新的其他软件包包括 [hwdata](https://github.com/vcrhonek/hwdata) 0.354、[FireEye](https://fireeye.dev/) 的 [hxtools](https://github.com/fireeye/HXTool) 20211204、[LibreOffice](https://www.libreoffice.org/) 7.2.4.1、[Node.js](https://nodejs.org/en/) 16.13.1、[vte](https://wiki.gnome.org/Apps/Terminal/VTE) 0.66.2 和 [yast2-installation](https://github.com/yast/yast-installation) 4.4.28 等等。

快照 [20211210](https://rsync.opensuse.org/tumbleweed/iso/Changes.20211210.txt) 中更新了三个包。在 [gnome-remote-desktop](https://wiki.gnome.org/Projects/Mutter/RemoteDesktop) 41.2 更新中添加了断开代理信号的方法；该软件包也可使用截屏，使警告消息更加明确。Linux 笔记本电池优化包 [tlp](https://github.com/linrunner/TLP) 1.4.0 将 “Battery Features” 重命名为 “Battery Care”，并引入插件在非 ThinkPad 笔记本上支持 Battery Care；华硕、华为、LG、联想和三星率先受益于这些插件。内核头文件在 [linux-glibc-devel](https://software.opensuse.org/download.html?project=Base%3ASystem&package=linux-glibc-devel) 5.15 版本中更新。

除了 [libffi](https://github.com/libffi/libffi) 3.4.2 和 [nvme-cli](https://github.com/linux-nvme/nvme-cli) 1.16 更新之外，快照 [20211209](https://rsync.opensuse.org/tumbleweed/iso/Changes.20211209.txt) 中的大部分更新都是 [PyPi](https://pypi.org/) 更新。快照 [20211208](https://rsync.opensuse.org/tumbleweed/iso/Changes.20211208.txt) 提供了第一个 [asla](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) [1.2.6](https://www.alsa-project.org/wiki/Changes_v1.2.5.1_v1.2.6#alsa-lib) 更新，它改进了[脉冲编码调制](https://en.wikipedia.org/wiki/Pulse-code_modulation)中对多种格式的支持。[sudo](https://www.sudo.ws/) 1.9.8p2 包修复了一些小的内存泄漏，`sudo_logsrvd` 现在只为会话的第一个命令发送日志 ID，因此不需要为每个子命令发送日志 ID。快照中还更新了其他几个包，如屏幕阅读器 [orca](https://gitlab.gnome.org/GNOME/orca) 41.1、[soundtouch](https://www.linuxfromscratch.org/blfs/view/svn/multimedia/soundtouch.html) 2.3.1 和 [yast2-journal](https://github.com/yast/yast-journal) 4.4.1，它们正在为 [Ruby3](https://www.ruby-lang.org/en/news/2021/11/09/ruby-3-1-0-preview1-released/) 以及许多其他 [YaST](https://yast.opensuse.org/) 包准备代码。

------

原文：[Frameworks, Gear, Pipewire Update in Tumbleweed](https://news.opensuse.org/2021/12/17/frame-gear-pipewire-update-in-tw/)，作者：Douglas DeMaio