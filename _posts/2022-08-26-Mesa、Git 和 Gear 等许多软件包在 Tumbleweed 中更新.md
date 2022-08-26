---
author: Hanjingxue Boling
date: 2022-08-26 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Mesa、Git 和 Gear 等许多软件包在 Tumbleweed 中更新
image: [](/assets/posts/2022-08/xfcegeeko.png)
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

这是又一整周不间断发布的 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 快照。

Tumbleweed 每天都在快速发布新版本的软件。

最近的快照是 [20220824](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/RVJAKRVM2CT6KI5I3IIQ6POXQ43HSJST/)，它更新了 Linux 蓝牙协议 [bluez](http://www.bluez.org/) 5.65；该软件包修复了一些[高级音频分发配置文件](https://en.wikipedia.org/wiki/List_of_Bluetooth_profiles#Advanced_Audio_Distribution_Profile_(A2DP))问题并添加了对 ISO 套接字的实验性支持。虚拟机管理程序 [xen](https://xenproject.org/) 更新至 4.16.2 版本，删除了新 tar 包中包含的几个补丁，其中包括针对 [AMD](https://www.amd.com/en) [x86](https://en.wikipedia.org/wiki/X86-64) 的 [CLFLUSH](https://www.felixcloutier.com/x86/clflush) 工作。更新后的 xen 修复了一些 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。本次快照有一些与 [Vulkan](https://www.vulkan.org/) 相关的更新，例如 [shaderc](https://github.com/google/shaderc) 2022.2 的更新，它增加了对[高级着色器语言](https://en.wikipedia.org/wiki/High-Level_Shader_Language)中 16 位类型的支持。[vulkan-loader](https://vulkan.lunarg.com/doc/sdk/1.3.224.0/windows/release_notes.html) 和 [vulkan-tools 1.3.224.0](https://vulkan.lunarg.com/doc/sdk/1.3.224.0/windows/release_notes.html) 也有更新。用于嵌入式系统的 [OpenGL](https://www.opengl.org//) 和 OpenGL 着色器 [glslang 11.11.0](https://github.com/KhronosGroup/glslang) 添加了 OpSource 支持，并避免了 vulkan 在宽松模式下的函数克隆出现双重释放。

[Mesa](https://www.mesa3d.org/) 及其驱动程序包在快照 [20220823](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/UWSUT4HJV4O3EAIOOK2ZGWEKF2GKY7TX/) 中更新到 22.1.7 版本。3d 图形库 Mesa 的新版本对整个代码树进行了修复和清理；大多数修复是针对发出 [Vulkan](https://www.vulkan.org/) [API](https://en.wikipedia.org/wiki/API) 调用的 [Zink](https://docs.mesa3d.org/drivers/zink.html) 驱动程序。快照中更新了几个 [YaST](https://yast.opensuse.org/) 包。[yast2-storage-ng](https://github.com/yast/yast-storage-ng) 4.5.8 进行了一些调整，以适应 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 的新型挂载，并且 [yast2-network](https://github.com/yast/yast-network) 4.5.5 添加了一个类来生成[以太网光纤通道](https://en.wikipedia.org/wiki/Fibre_Channel_over_Ethernet)所需的配置。快照中要更新的其他包是 [transactional-update](https://github.com/openSUSE/transactional-update) 4.0.1、[autoyast2](https://github.com/yast/yast-autoinstallation) 4.5.3 和许多其他库。

快照 [20220822](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EFHGJPJS6U776UTKDDJR3QAORBKNGDCV/) 更新了六个软件包。[aws-cli](https://github.com/aws/aws-cli) 1.25.55 的更新修复了导致为新配置文件设置配置值存在问题的回归。该软件包还从几个小版本的更新中收到了一些 [API](https://en.wikipedia.org/wiki/API) 更改。[xfce4-panel](https://docs.xfce.org/xfce/xfce4-panel/start/) 4.16.5 修复了在断开连接的设备上启动时出现的严重警告并更新了 [.gitignore](https://git-scm.com/docs/gitignore)。[Xfce](https://www.xfce.org/) 的桌面管理器 [xfdesktop](https://docs.xfce.org/xfce/xfdesktop/start) 4.16.1 删除了一个未使用的函数调用，并在错误处理后分配内存。其他要更新的软件包是 [lttng-ust](https://lttng.org/) 2.13.3、[python-matplotlib](https://matplotlib.org/stable/users/installing/index.html) 3.5.3 和 [python-pbr](https://pypi.org/project/pbr/) 5.10.0

[Mesa](https://www.mesa3d.org/) 在快照 [20220821](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3XLGQUH3JWVR2BSHGSETF3XPQI7U6MNO/) 中进行了本周的首次更新，更新至 22.1.5 版本。[Mesa](https://www.mesa3d.org/) 放弃了未处理的 [hwconfig](http://osr507doc.xinuos.com/en/man/html.C/hwconfig.C.html) 键的警告。[SDL2](https://github.com/libsdl-org/SDL) 2.24.0 更新添加了许多与键盘和操纵杆等输入设备相关的功能。它还增加了对 [NVIDIA](https://www.nvidia.com/) Shield 控制器的支持。另外两个要更新的软件包是 [libevdev](https://www.freedesktop.org/wiki/Software/libevdev/) 1.13.0 和 [libtirpc](http://git.linux-nfs.org/?p=steved/libtirpc.git;a=summary) 1.3.3，它们修复了一个拒绝服务漏洞。

快照 [20220820](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IYJNHUDCVYUEACPW6I37IQR54JL7SSDL/) 提供了 [ImageMagick](https://imagemagick.org/) 7.1.0.46 的更新，其[变更日志](https://github.com/ImageMagick/Website/blob/main/ChangeLog.md)称它已将构建依赖项移至单独的文件并消除了编译器警告。[bind](https://bind9.readthedocs.io/) 9.18.6 的更新修复了配置的转发器发送错误的响应时发生的一些崩溃，并使用 dnssec-policy 进行了一个修复。[Linux Kernel](https://www.kernel.org/) 5.19.2 在快照中更新，大部分代码与[高级 Linux 声音架构](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture)附件和 [KVM](https://www.linux-kvm.org/page/Main_Page) 修复补丁有关。[systemd](https://freedesktop.org/wiki/Software/systemd/) 251.4 更新删除了冲突的标头，并添加了一个补丁来解决与 [glibc](https://www.gnu.org/software/libc/) 2.36 的冲突。 快照还提供了一些 [Python 包索引](https://pypi.org/)更新。

在本周开始的三个快照中，即 [20220819](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EVQ3VTX4QNVPCNLOJQ7SKCWGL7O6TUGG/)、[20220818](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IRBUJJSBL25KCJFRMSDMRKJ47LKQUFKZ/) 和 [20220817](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/QFQEQDFEGADRPMWLYWUCHUC7CVLG5JZ6/)，其中有几个包脱颖而出。这些要更新的包中有 [KDE Gear 22.08.0](https://kde.org/announcements/gear/22.08.0/)，它允许你在使用 [Dolphin](https://apps.kde.org/dolphin/) 时也可以按文件扩展名对文件进行排序。[KWrite](https://apps.kde.org/kwrite/) 添加了另一个有趣的新功能，现在支持选项卡和屏幕拆分，因此你可以同时打开多个文档。[GTK4](https://www.gtk.org/) 4.7.2 为 [ffmpeg](https://www.ffmpeg.org/) 后端添加了音频支持，并修复了触摸板保持事件的处理。文本编辑器 [vim](https://www.vim.org/) 9.0.0224 重绘未明确命名的标志，并修复了可能重复虚拟文本的行拆分。版本控制处理程序 [git](https://git-scm.com/downloads) 更新至 2.37.2，修复了开发人员可见的多个错误；git 改进了 [`git p4`](https://git-scm.com/docs/git-p4) 的非 [ASCII](https://en.wikipedia.org/wiki/ASCII) 支持。其他要更新的软件包是 [gcc12](https://gcc.gnu.org/) 12.1.1 的一个 git 版本、[ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.3.20220813、[rsync](https://rsync.samba.org/) 3.2.5 和 [timezone 2022c](https://www.iana.org/time-zones)，它们更新了伊朗将在 2022 年之后不再遵守夏令时的事实。

------

原文：[Mesa, Git, Gear, More Update in Tumbleweed](https://news.opensuse.org/2022/08/26/mesa-git-gear-more-update-in-tw/)，作者：Douglas DeMaio