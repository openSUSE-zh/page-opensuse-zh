---
author: Poplar at twilight
date: 2023-08-11 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Perl、Pipewire 和 LibreOffice 在 Tumbleweed 中更新
image: /assets/posts/2023-08/gtw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[Tumbleweed] 本周的快照有许多令人兴奋的内容，因为多个软件包收到了更新，并且 [openSUSE] 本周为风滚草用户提供了数个主要版本更新。

[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[opensuse]: https://get.opensuse.org/

快照 [20230809] 更新了 [GCC]。GCC 13.2.1+git7683 版本为依赖编译器的开发人员提供了 gcc 13.2 以及各种修复。值得注意的是，该更新解决了 [libbacktrace] 中损坏的测试用例的补丁，从而解决了 [SLES] 12 上的构建问题。GNOME 用户收到了 [gtk4] 4.10.5 的更新。该版本解决了各种问题，包括修复过滤器模型信号的排序问题、避免徘徊的调整大小光标以及解决 [SPARC] 上的对齐问题。用户空间程序用于将文件系统导出到 Linux 内核的接口，[fusion3]，更新至 3.16.1；进行了一些增强，使得 fusion 能够从高级 [API] 启用 `readdir` 内核缓存。开源办公套件 [LibreOffice] 在更新至 7.5.4.2 版本后的第二天，再次更新至 7.6.0.2。该版本包含错误修复和捆绑依赖项更新，可确保提供更稳定、功能更丰富的办公体验。[libstorage-ng] 4.5.136 本周的第三次更新更新了印度尼西亚语翻译。用于电源管理和设备信息的 [upower] 已更新至 1.90.2 版本。值得注意的是，该版本标志着 UPower 中 lid 处理的结束，因为该功能现在将由 [logind] 提供。快照中更新了其他一些软件包，例如 [python-importlib-resources]，它更新到主要版本 6.0.1 并删除了 5.3 版本中弃用的遗留功能；它需要 [Python] 3.8 或更高版本。

[20230809]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JONO3B3IE6PM7XGJCDPLVCC7V7FYEY3A/
[GCC]: https://gcc.gnu.org/
[libbacktrace]: https://github.com/ianlancetaylor/libbacktrace/tree/master
[SLES]: https://www.suse.com/products/server/
[gtk4]: https://www.gtk.org/
[SPARC]: https://en.wikipedia.org/wiki/SPARC
[fusion3]: https://github.com/libfuse/libfuse
[API]: https://en.wikipedia.org/wiki/API
[libreoffice]: https://www.libreoffice.org/
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[upower]: https://upower.freedesktop.org/
[logind]: https://www.freedesktop.org/software/systemd/man/systemd-logind.service.html
[python-importlib-resources]: https://pypi.org/project/importlib-resources/
[python]: https://www.python.org/

快照 [20230808] 将 [LibreOffice] 从 7.5.4.2 更新至 7.6.0.1 版本，提供了广泛的功能、错误修复和改进，例如处理字体。LibreOffice 修复了更改文档语言时无限循环的问题，还添加了对 [RISC-V 64] 的 [JRE] 64bit 缺少的依赖项。多媒体框架 [pipewire] 更新至 0.3.77。此更新包括对 [ALSA] 源的修复，以防止 [xruns] 和强制节点链接的新 L 权限。虚拟广播音频网络模块现在支持 [MIDI]，并且对该软件包进行了一系列清理和修复。[KDE] 编辑器 [okteta] 更新至 0.26.13 版本，改进了翻译、解码表和结构工具。它还改进了现在可能的 [CMake] Unity 构建。

[20230808]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LA4RF3TGDYRMTLM5OJPLF7HHHQ4IISE7/
[JRE]: https://en.wikipedia.org/wiki/Java_(software_platform)#Java_Runtime_Environment
[RISC-V 64]: https://riscv.org/
[pipewire]: https://pipewire.org/
[alsa]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[xruns]: https://unix.stackexchange.com/questions/199498/what-are-xruns
[MIDI]: https://en.wikipedia.org/wiki/MIDI
[kde]: https://kde.org/
[okteta]: https://apps.kde.org/okteta/
[cmake]: https://cmake.org/

快照 [20230807] 对 [GNOME] 进行了更新。[gnome-software] 更新至 44.4 版本；此更新引入了一些值得注意的改进，例如增强来自失败的 [GPG] 检查的错误通知，以及改进涉及删除某些软件包以实现依赖项的更新的处理。[Perl] 爱好者会对 Tumbleweed 当前发布的主要版本感到高兴。Perl 5.38.0 版本引入了许多新功能，包括 [`class` 功能]和对 [unicode] 15.0 的支持。Perl 还改进了签名中的 `defined-or` 和 `logical-or` 赋值默认表达式等。在该版本中，作为软件包名称分隔符的 `‘` 被大量淘汰。openSUSE 的 [libstorage-ng] 4.5.135 更新为格鲁吉亚用户提供了一些翻译改进。快照中还更新了 [python-alembic] 1.11.1，这也是一个主要版本。它修改了调用签名并修复了 [SQLAlchemy] 类的键入使用以及错误处理方面的一些增强。

[20230807]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/KUZ7AJCYOKZO4D5ZMNIGSW5NBLP6LWZQ/
[gnome]: https://www.gnome.org/
[GPG]: https://gnupg.org
[gnome-software]: https://gitlab.gnome.org/GNOME/gnome-software
[perl]: https://www.perl.org/
[`class` 功能]: https://perldoc.perl.org/perlclassguts
[unicode]: https://unicode.org/
[python-alembic]: https://pypi.org/project/alembic/
[SQLAlchemy]: https://www.sqlalchemy.org/

快照 [20230806] 更新了数个软件包。[Plasma5-desktop] 5.27.7.1 的更新包括修复了按小程序快捷方式后小程序未返回焦点的问题，并修复了为桌面环境提供更流畅和无缝处理的缺失功能。[libvirt] 9.6.0 更新包括一个上游提交，用于修复 [systemd] 中的最大文件限制，从而有助于虚拟化环境的更顺畅操作。Python 开发人员获得了与 libvirt 最新更改保持一致的更新，以确保基于 Python 的虚拟化任务的兼容性和无缝集成。支持 openSUSE 软件管理的 [libzypp] 包管理库已更新至 17.31.18 版本。该版本在检查 zypp-rpm 锁时解决了 `ZYPP_READONLY_HACK` 的问题。[webkit2gtk3] 2.40.5 版本引入了多个崩溃和渲染修复程序，以及多个解决 [CVE-2023-38133]、[CVE-2023-38572] 等漏洞的安全修复程序。

[20230806]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WNQBSU7CYTLTMURJUMPVTWASGSBIUKHW/
[plasma5-desktop]: https://kde.org/plasma-desktop/
[libvirt]: https://libvirt.org/
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[libzypp]: https://github.com/openSUSE/libzypp
[webkit2gtk3]: https://webkitgtk.org/
[CVE-2023-38133]: https://www.suse.com/security/cve/CVE-2023-38133.html
[CVE-2023-38572]: https://www.suse.com/security/cve/CVE-2023-38572.html

快照 [20230805] 更新了 [Linux 内核][kernel-source]。[kernel-source] 6.4.8 修复了一些 [Btrfs] 问题，并进行了一些与 [s390] 架构的 [KVM] 相关的更改。GNU 多精度算术库 [gmp] 6.3.0 更新带来了对整数溢出的更好处理，增强了对格式错误文件的错误处理，并改进了对构建[链接时优化]的支持。[harfbuzz] 8.1.1 的更新解决了先前版本中引入的回归问题。还进行了优化以加速字体加载、子集化和整形。[yast2-installation] 4.6/6 更新修复了状态标签切换问题，并改进了软件安装过程中的用户界面和体验。本周三个 [libstorage-ng] 更新中的第一个更新是此快照中的 4.5.134 版本更新。

[kernel-source]: https://www.kernel.org/
[20230805]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/SUZUTCOUXGCXRUMNJ6C5G6VVGPTJC5Q4/
[btrfs]: https://btrfs.wiki.kernel.org/
[gmp]: https://gmplib.org/
[s390]: https://en.wikipedia.org/wiki/IBM_System/390
[链接时优化]: https://gcc.gnu.org/wiki/LinkTimeOptimization
[KVM]: https://www.redhat.com/en/topics/virtualization/what-is-KVM
[harfbuzz]: https://github.com/harfbuzz/harfbuzz
[yast2-installation]: https://github.com/yast/yast-installation

快照 [20230804] 更新了 [Mesa] 23.1.5，图形显示得到了改进。根据[发行说明]，Mesa 对不同的图形驱动程序进行了多项修复，包括 [Radeon]、[ANV] 等。[Intel] ANV 驱动程序在使用 Angle 进行[多重采样抗锯齿][MSAA]测试时不再遇到 GPU 挂起的情况。游戏玩家可能会喜欢 [SDL2] 2.28.2 更新。该软件包通过解决各种问题并确保更好的兼容性而实现了飞跃。根据变更日志，该更新修复了初始化某些非官方 PS4 仿制控制器时控制器锁定的问题。[openssl-3] 3.1.2 的更新解决了潜在的漏洞，包括检查 DH 参数值花费过多时间以及使用 AES-SIV 加密正确处理关联数据条目。[dracut] 的更新引入了一系列关键修复和功能。这些改进涵盖了广泛的领域，包括 systemd-udevd、systemd-journald、基本功能等等。openssl-3 3.1.2 更新包括针对使用 AES-SIV 加密正确处理关联数据条目的修复。快照中的另一个更新是针对 [SELinux] 的策略分析工具；[setools] 4.4.3 版本包括与 [Cython] 3.0.0 更好的兼容性和增强的[联机帮助页]。

[20230804]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ZAHKFUDUGIRMFFMJKIE3IQY3BOB3W4TA/
[联机帮助页]: https://manpages.opensuse.org/
[mesa]: https://www.mesa3d.org/
[发行说明]: https://docs.mesa3d.org/relnotes/23.1.4.html
[radeon]: https://www.amd.com/en/graphics/radeon-rx-graphics
[anv]: https://docs.mesa3d.org/drivers/anv.html
[intel]: https://www.intel.com/
[sdl2]: https://www.libsdl.org/
[openssl-3]: https://www.openssl.org/
[dracut]: https://dracut.wiki.kernel.org/index.php/Main_Page
[SELinux]: https://github.com/SELinuxProject
[setools]: https://github.com/SELinuxProject/setools/wiki
[cython]: https://github.com/cython/cython

Tumbleweed 用户可以在开放 GPU 内核模块和专有驱动程序之间进行选择，并且可以找到有关[在 openSUSE Tumbleweed 上使用 NVIDIA GPU 驱动程序]的指南。在 openSUSE 存储库中，NVIDIA 的专有驱动程序可通过 zypper 安装。重要的是要认识到，由于许可限制，这些专有驱动程序源自 NVIDIA 存储库。此外，用户还可以通过启用第三方 NVIDIA 存储库，通过改进下载可访问性并减少延迟来增强体验。此外，用户可以通过 Fastly.com 赞助 CDN 订阅来增强下载可访问性并减少延迟，从而提升体验，从而使 download.opensuse.org 受益。

> 有关于新 CDN 的使用，详见：[使用 openSUSE-repos 尝试新的 CDN](https://suse.org.cn/%E6%9B%B4%E6%96%B0%E9%80%9A%E5%91%8A/2023/07/30/try-new-cdn.html)

[在 openSUSE Tumbleweed 上使用 NVIDIA GPU 驱动程序]: https://en.opensuse.org/SDB:NVIDIA_drivers#openSUSE-repos

------

原文：[Perl, Pipewire, LibreOffice Update in Tumbleweed](https://news.opensuse.org/2023/08/11/perl-pipewire-libreoffice-up-in-tw/)，作者：Douglas DeMaio