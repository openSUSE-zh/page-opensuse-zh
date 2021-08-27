---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-08-27 8:50:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 更新 Kismet 、PulseAudio 、Python
image: /assets/posts/misc/pulseaudio.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE Tumbleweed 的快照版本本周开始为滚动版本提供流量。

摆脱了上周的构建失败和 ISO 介质尺寸过大的障碍，本周发布了三个快照。

最新的快照 [20210824](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TI4L56TZS6TVK4GOA5A56JGLJDJQH7TC/) 将 [Mozilla Thunderbird](https://www.thunderbird.net/) 的版本从 78.13.0 更新到了 91.0.1 ，这是下一个长期支持版本的代码库。新的电子邮件客户端提供了许多[新的功能](https://www.thunderbird.net/en-US/thunderbird/91.0/releasenotes/#whatsnew)，如访问 To/CC/BCC 字段的键盘快捷键，而且现在 Thunderbird 中还包括一个 PDF JavaScript 浏览器。在快照中，有两个主要的版本更新；[nftables](https://netfilter.org/projects/nftables/) 更新至 1.0.0 ，现在可以识别命令行选项 `-define` 。基于 [GTK](https://www.gtk.org/) 的音量控制工具 [pavucontrol](https://freedesktop.org/software/pulseaudio/pavucontrol/) 5.0 支持切换蓝牙编解码器，这在 [PulseAudio](https://www.freedesktop.org/wiki/Software/PulseAudio/) 15.0 中是新出现的，后者在 24 小时前的快照 [20210823](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/K2LJ7BDXF6X2QU3VPNW3LMSHTD5VQWCB/) 中发布。[GNU 编译器集](https://gcc.gnu.org/)的版本更新至 11.2 ，并修复了 glibc 2.34 的 One-time Passwords In Everything 包。一些 [GNOME](https://www.gnome.org/) 和 [RubyGems](https://rubygems.org/) 软件包在快照中更新。命令行工具 [grep](https://www.gnu.org/software/grep/) 更新至 3.7 版，跳过了 [qemu](https://www.qemu.org/) 构建中的堆栈溢出测试。运行时 [nodejs16](https://nodejs.org/en/) 的 16.6.2 更新修复了域名中非典型字符的不当处理，并修复了三个[常见漏洞和披露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。

网络检测器、数据包嗅探器和入侵检测包 [Kismet](https://www.kismetwireless.net/) 在快照 [20210823](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/K2LJ7BDXF6X2QU3VPNW3LMSHTD5VQWCB/) 中更新到最新的 2021.08 版本；该包做了一些小的改进，并有一个新的无线入侵检测系统警报。[PulseAudio](https://www.freedesktop.org/wiki/Software/PulseAudio/) 15.0 弃用了几个 BlueTooth 补丁，并改进了硬件支持。PDF 渲染包 [poppler](https://poppler.freedesktop.org/) 21.08.0 增加了一个[应用程序接口](https://en.wikipedia.org/wiki/API)，允许在 PDF 中添加和修改大纲。 [sudo](https://www.sudo.ws/) 更新至1.9.7 版本，启用了 [OpenSSL](https://www.openssl.org/) 支持，以实现安全的中心会话记录收集。 [yast2-bootloader](https://yast.opensuse.org/) 4.4.6 用 [dracut](https://dracut.wiki.kernel.org/index.php/Main_Page) 替换了 [mkinitrd](https://linux.die.net/man/8/mkinitrd) 。

快照 [20210820](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/UCB426DWSMO5HVMFEHXTMBSDLJ54SIVE/) 将 [Linux 内核](https://www.kernel.org/)更新到 5.13.12 版本，其中有几个网络设备支持的修复。[Mozilla Firefox](https://www.mozilla.org/) 的 91.0.1 版本更新修复了一个导致隐私窗口的标签在非隐私窗口可见的问题，新更新的浏览器版本中有几个 CVE 修复。[python38 3.8.11 ](https://www.python.org/downloads/release/python-3811/) 版本更新解决了一些安全问题，并修复了先前版本中引入的一个回归问题。图形包 [Mesa](https://www.mesa3d.org/) 更新至 21.2.0 ，启用了 Gallium3D OpenGL 驱动，以防某些视频硬件加速出现问题。快照中更新的其他软件包有：文档阅读器 [okular 21.08.0](https://okular.kde.org/) 、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.35 、[diffutils](https://www.gnu.org/software/diffutils/) 3.8 和几个 [YaST](https://yast.opensuse.org/) 软件包。

------

原文：[Tumbleweed Updates Kismet, PulseAudio, Python](https://news.opensuse.org/2021/08/25/tw-updates-kismet-pulseaudio-python/)，作者：Douglas DeMaio