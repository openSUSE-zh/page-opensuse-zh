---
author: Hanjingxue Boling
date: 2022-07-08 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Vim、Plasma 和 PipeWire 在 Tumbleweed 中更新
image: /assets/posts/2022-07/Vimlogo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE [Tumbleweed](https://get.opensuse.org/tumbleweed/) 将在本月和七月继续发布稳定的快照。

一些大大小小的快照已经发布，本周还有一些大版本更新。

在最近 24 小时内最新发布的是快照 [20220706](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NWPAORP4NQB5YRSUZFT6XFGHQQEBCTMO/)。该版本将 [Linux 内核](https://www.kernel.org/)更新至 5.18.9。新内核为 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 增加了几项功能，包括修复了一些缺失的哔声设置，并为 [HP](https://www.hp.com/) Omen 笔记本电脑[添加了静音 LED quirk](https://patchwork.kernel.org/project/alsa-devel/patch/1406022137-7363-1-git-send-email-david.henningsson@canonical.com/)。新内核还启用了 MLX90614 远程温度传感器的配置。[xfce4-settings](https://www.xfce.org/) 4.16.3 的更新有一些小的变化，修复了 [libX11](https://www.x.org/wiki/) 中的递归锁。[yast2-network](https://github.com/yast/yast-network) 和 [yast2-schema-default](https://github.com/yast/yast-schema) 都更新到了 4.5.4，其中软件包向网络部分添加了一个缺少的路由元素。

快照 [20220705](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/W4WGFUTZ6TV3PR2HD76GUWM5RPOZDV3W/) 涉及的大版本更新是 [7zip](https://www.7-zip.org/) 22；新版本具有 [Linux](https://www.kernel.org/) TAR 档案的开关，现在可以以一纳秒或十亿分之一秒的高精度存储额外的文件时间戳。本周发布的另一个主要版本更新来自于 [vim](https://www.vim.org/)。文本编辑器 vim 本周收到了第二次更新，更新至 9.0.0032 版本，修复了几个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；其中之一是 [CVE-2022-2285](https://www.suse.com/de-de/security/cve/CVE-2022-2285.html) 中反映的中度整数溢出。[Mesa](https://www.mesa3d.org/) 22.1.3 新增了一些 [X11](https://en.wikipedia.org/wiki/X_Window_System) 性能修复和许多 [Zink](https://docs.mesa3d.org/drivers/zink.html) 驱动程序修复。[GNOME](https://www.gnome.org/) 的个人信息管理器 [evolution](https://wiki.gnome.org/Apps/Evolution) 更新了翻译并修复了在 3.44.3 版本中将任务列表打印为 pdf 时出现崩溃的问题。[firewalld](https://firewalld.org/) 更新至 1.2.0 版本，添加了 [Kubernetes](https://kubernetes.io/) 控制器平面组件的安全版本并添加了分布式网络 [IPFS](https://ipfs.io/) 服务。音频和视频包 [PipeWire](https://pipewire.org/) 更新到 0.3.53，ALSA 插件现在应该能够处理不支持的采样率并回退到最近的支持采样率。开发者们重构了音频转换插件，这应该使它更易于维护。快照中要更新的其他软件包包括 [pango](https://pango.gnome.org/) 1.50.8、[harfbuzz](https://github.com/harfbuzz/harfbuzz) 4.4.1、[kernel-firmware](https://www.kernel.org/) 20220622 和 [sssd](https://sssd.io/) 2.7.3 等。

[GNOME](https://www.gnome.org/) 的 [sushi](https://gitlab.gnome.org/GNOME/sushi) 在快照 [20220704](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GRODNGY52L2FQIEMEZC76XL7LWHPRZDJ/) 中更新到 42.0 版本；更新后的文件预览器启用了 [WebKit](https://webkitgtk.org/) 沙盒，以提高安全性和响应能力。sushi 还允许右键单击以显示 [GtkSourceView](https://wiki.gnome.org/Projects/GtkSourceView) 的上下文菜单。[gnome-software](https://gitlab.gnome.org/GNOME/gnome-software) 和 [gnome-remote-desktop](https://gitlab.gnome.org/GNOME/gnome-remote-desktop) 都更新到了 42.3。本次更新修复了与固件更新失败相关的错误重启通知，并分别修复了未初始化的大写锁定。相机、访问和控制库 [libgphoto2](https://github.com/gphoto/libgphoto2) 更新至 2.5.30 版本，提供了与 Canon EOS Rebel T8i、Sony DSC-WX220、Nikon Z9、Fuji X-E4 和 GoPro HERO10 相关的相机更新。该快照还更新了一些 [Perl](https://www.perl.org/)、[Python](https://www.python.org/) 和 [Ruby](https://www.ruby-lang.org/en/) 支持库。

快照 [20220703](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XRFO7GVHUCIQKH4ADQIH3IENBQJR4C6M/) 只更新了一个软件包。[adwaita-xfce-icon-theme](https://github.com/hrdwrrsk/adwaita-xfce-icon-theme) 更新到 0.0.2 版本，添加了一些多媒体和相机图标。

依赖管理器 [Yarn](https://yarnpkg.com/) 在快照 [20220702](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/7GQCS7HIQAYPYAARBTQ4SANX57JPKAQJ/) 中更新到 1.22.19 版本，并在 [npm registry](https://www.npmjs.com/) 上添加了与 Web 标准 [WebAuthn](https://webauthn.io/) 的兼容性。本次快照还更新了 [kmod](https://github.com/kmod-project/kmod) 30，同时删除和添加了一个补丁。此次更新还提供对 [SM3 哈希算法](https://en.wikipedia.org/wiki/SM3_(hash_function))的支持。电源管理工具 [tlp](https://github.com/linrunner/TLP) 更新至 1.5.0 版本，新增了适用于 Sony、ASUS 和 ThinkPads 笔记本电脑的新功能。tlp 还添加了对切换近场通信 (NFC) 设备的无线电设备支持，并删除了对无线工具 `iwconfig` 的支持。本次快照还更新了许多其他语言包库。

快照 [20220701](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/T6VL27U6RR5APKS6PZPQRZ27KMYCDSHX/) 发布了 [vim](https://www.vim.org/) 9 的第一次大版本更新。文本编辑器 vim 修复了导致诸多问题的 `CTRL` 键组合。根据更改日志，编辑器在更改终端大小后仍可能访问无效内存。在发布三天后，openSUSE Tumbleweed 在本次快照中实装了 [KDE](https://kde.org/) [Plasma 5.25.2](https://kde.org/announcements/plasma/5/5.25.2/)。此次桌面环境更新更新了 [KWayland Integration](https://invent.kde.org/plasma/kwayland-integration) 的一些 [Qt 5](https://www.qt.io/) 要求，以及 Plasma 的许多其他包。 更新后的 X 窗口管理器和 Wayland 混成器 [KWin](https://invent.kde.org/plasma/kwin) 确保 modeset 属性被正确重置并修复了过滤时损坏的键盘导航。[Plasma Desktop](https://invent.kde.org/plasma/plasma-desktop) 在构建 [kglobalaccel](https://api.kde.org/frameworks/kglobalaccel/html/index.html) 时修复了 [dbus](https://www.freedesktop.org/wiki/Software/dbus/) 接口，并且为 Plasma 用户提供了许多其他修复。

------

原文：[Tumbleweed Gets Vim, Plasma, PipeWire Updates](https://news.opensuse.org/2022/07/08/tw-gets-vim-plasma-pipewire-updates/)，作者：Douglas DeMaio