---
author: Hanjingxue Boling
date: 2022-11-24 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: PipeWire、Flatpak 和 YaST 在 Tumbleweed 中更新
image: /assets/posts/2022-11/Node.js_logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

到本周为止，[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 持续发布的快照达到 42 个。

本周发布的包更新包括 [Mesa](https://www.mesa3d.org/)、[bind](https://bind9.readthedocs.io/)、[Flatpak](https://flatpak.org/) 等。

以上三个软件包在快照 [20221122](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/M6FGFNBDAVM5MBSSPYL6AGIJ4ZTDQFAA/) 中发布。[Mesa](https://www.mesa3d.org/) 22.2.4 修复了[蜘蛛侠重制版](https://store.steampowered.com/app/1817070/Marvels_SpiderMan_Remastered/)中与 [AMD](https://www.amd.com/) 的 [RADV](https://docs.mesa3d.org/drivers/radv.html) 相关的一些闪烁问题，并修复了一些影响游戏的其他缺陷。[bind](https://bind9.readthedocs.io/) 9.18.9 的更新修复了启动期间与连接问题相关的恢复，并修复了某些解决方案中的溢出问题。跨发行版包 [Flatpak](https://flatpak.org/) 1.14.1 添加了新功能，例如 `httpbackend` 变量，允许 [GNOME](https://www.gnome.org/) Software 等依赖项目检测它们是否与 libflatpak 兼容。Flatpak 还修复了一个问题，使应用程序不会继承过时的 [Wayland](https://wayland.freedesktop.org/) 和 [X11](https://en.wikipedia.org/wiki/X_Window_System) 套接字地址。工具和脚本的集合 [hxtools](https://inai.de/projects/hxtools/) 在一年后，从 20211204 版本迁移到了 20221119 版本；hxtools 添加了一个新实用程序，并为选择性文件转储输出实现了纵横比校正。快照还更新了一些 [yast2](https://github.com/yast/yast-yast2) 软件包，例如 [yast2-storage-ng](https://github.com/yast/yast-storage-ng) 4.5.14，它建议使用 [D-Installer](https://news.opensuse.org/2022/10/27/call-for-testing-next-gen-installer/) 使用的可配置 [PBKDF](https://en.wikipedia.org/wiki/PBKDF2) 支持 [LUKS2](https://en.wikipedia.org/wiki/Linux_Unified_Key_Setup) 加密。其他几个软件包也进行了更新。

快照 [20221121](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/OSNBU7Z7FY4CDBC577AAINE4VUMUMFTU/) 只更新了两个包。用 [Rust](https://www.rust-lang.org/) 编写的 [GStreamer](https://gstreamer.freedesktop.org/) 插件 [gstreamer-plugins-rs](https://gitlab.freedesktop.org/gstreamer/gst-plugins-rs) 提供了最近 11 月的 [git](https://github.com/git) 0.9+ 更新。该软件包增加了对复用视频 [VP9](https://www.mux.com/video-glossary/vp9) 编解码器流的支持，并为容器格式添加了一个新的 [mux](https://www.mux.com/) 子目录。[xfce4-settings](https://gitlab.xfce.org/xfce/xfce4-settings) 4.16.5 更新了 [Xfce](https://www.xfce.org/) 的配置系统；该次要更新修复了版本 4.16.4 中引入的，导致 `exo-open` 无法使用内部的路径空间的回归。

快照 [20221120](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CNS3RPP5C2DR7BPY43XC72EJVEAZ3PKA/) 更新了一些软件包。其中包括终端模拟器 [xterm](https://invisible-island.net/xterm/) 376 的更新；此更新修改了配置脚本以始终检查 [GCC](https://gcc.gnu.org/) 属性，并修复了复制/粘贴错误。本次快照还更新了多精度浮点库 [mpfr](https://www.mpfr.org/mpfr-current/mpfr.html)。mpfr 4.1.1 版本改进了手动格式化，更新了密钥环并修复了[多个错误](https://www.mpfr.org/mpfr-4.1.0/#fixed)，其中包括一个特别针对宏实现功能的错误。用于压缩文件的库和命令行工具 [xz](https://tukaani.org/xz/) 5.2.8 进行了与 [GNU gzip](https://www.gnu.org/software/gzip/) 匹配的更改，现在它对输出文件进行了更合乎逻辑的处理，当 xz 无法删除输入文件时，它会成功关闭。该软件包还修复了在进度指示器中显示文件大小的问题。输入设备管理和事件处理库 [libinput](https://gitlab.freedesktop.org/libinput) 1.22.0 更新添加了适用于 [Lenovo](https://www.lenovo.com/)、[Acer](https://www.acer.com/) 的笔记本电脑以及基于 [arm](https://www.arm.com/) 的 Chromebook 的 [quirks](https://wayland.freedesktop.org/libinput/doc/latest/device-quirks.html) 文件。该软件包为跟踪点提供了一个新的平面加速曲线，使它们在某些情况下更有用。快照中要更新的最后一个包是便携式开源 UPnP 开发工具包 libupnp 1.14.15，它修复了 autotools 发行版中的一些 CMake 缺失文件。

PDF 渲染器 [poppler](https://poppler.freedesktop.org/) 在快照 [20221119](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6HRAZBBUCY56VI57SC3PI6PZ5IDOCB3G/) 中更新到 22.11.0 版本。该更新有一些次要的代码[重构](https://en.wikipedia.org/wiki/Code_refactoring)并防止文件损坏。[kdump](https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html) 1.0.2+git20 的更新禁用了针对 [32 位](https://en.wikipedia.org/wiki/32-bit_computing) [arm](https://www.arm.com/) 架构的构建。[NetworkManager-openvpn](https://gitlab.gnome.org/GNOME/NetworkManager-openvpn) 1.10.2 更新了翻译，修复了秘密标志初始化并增加了对 DOMAIN-SEARCH 选项的支持。快照中更新的其他软件包包括 [quota](https://sourceforge.net/projects/linuxquota/) 4.09、[libpipeline](https://libpipeline.gitlab.io/libpipeline/) 1.5.7 和 [taglib](https://taglib.org/) 1.13 等。

快照 [20221118](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6C3VDCFDQT6BVF6VPWRI3WMDY33NR4QZ/) 更新了数个 [YaST](https://yast.opensuse.org/) 包。[yast2-installation](https://github.com/yast/yast-installation) 4.5.9 的更新编写了一个配置脚本以启用安全策略，并修正了安装摘要中的帮助，以包括相应建议中的文本。[yast2-security](https://github.com/yast/yast-security) 4.5.3 的更新修复了测试工具 [RSpec](https://github.com/rspec/rspec-metagem) 预期的哈希与关键字参数，这也反映在 [yast2](https://github.com/yast/yast-yast2) 4.5.19 的更新中。[autoyast2](https://github.com/yast/yast-autoinstallation) 4.5.9 会在如果产品默认启用 [kdump](https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html)，但并对 kdump 部分进行定义时，自动为 kdump 添加必要的软件包。[llvm15](https://llvm.org/) 15.0.5 删除了几个补丁；[nodejs19](https://nodejs.org/en/) 19.1.0 对 [Node.js](https://nodejs.org/en/) 测试运行器的支持功能进行了模拟。音频包 [pipewire](https://pipewire.org/) 0.3.60 的更新添加了来自上游的补丁，修复了一些似乎无法在 48kHz 下工作的设备，并添加了一个新的[实时传输协议](https://en.wikipedia.org/wiki/Real-time_Transport_Protocol)模块，其中包含与 [PulseAudio](https://www.freedesktop.org/wiki/Software/PulseAudio/) RTP 模块兼容的发送器和接收器。[samba](https://www.samba.org/) 的 4.17.3+git 更新修复了在 32 位系统上存在[缓冲区溢出](https://en.wikipedia.org/wiki/Buffer_overflow)的 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。

本周结束时，[openSUSE factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4OIMNHRDMSRLUNZRA5OPHMVSPXRRQVSB/)上已经开始讨论即将针对 openSUSE 发行版[特定的 x86-64 微架构级别](https://en.wikipedia.org/wiki/X86-64#Microarchitecture_levels)进行的变更。关于这次讨论的新闻和前进的道路将在下周发布。

------

原文：[PipeWire, Flatpak, YaST packages update in Tumbleweed](https://news.opensuse.org/2022/11/24/pipewire-flatpak-yast-pack-up-in-tw/)，作者：	Douglas DeMaio
