---
author: Hanjingxue Boling
date: 2022-12-02 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Nano 和 VirtualBox 在 Tumbleweed 中更新
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周，[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 快照稳步到达用户手中，并且在 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)上有大量关于[推进滚动版本微架构](https://suse.org.cn/%E7%A4%BE%E5%8C%BA%E6%96%B0%E9%97%BB/2022/11/27/Tumbleweed-%E6%8E%A8%E5%87%BA%E7%BC%93%E8%A7%A3%E8%AE%A1%E5%88%92-%E6%9B%B4%E6%96%B0%E5%BE%AE%E6%9E%B6%E6%9E%84.html)的计划的对话，以及关于[缓解计划/求助呼救](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4OIMNHRDMSRLUNZRA5OPHMVSPXRRQVSB/)的讨论。

迁移至 [x86-64-v2](https://en.wikipedia.org/wiki/X86-64#Microarchitecture_levels) 的更改预计将在 2023 年新年第一季度进行，即将发生的更改将在邮件列表和博客上进行交流。

快照 [20221128](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4WASMYQT2JL6ASBZPUTBYWQU5JCTUQPL/) 更新了一个软件包。聊天客户端 [Pidgin](https://keep.imfreedom.org/pidgin/pidgin/) 的 [Skype](https://www.skype.com/) 插件 [skype4pidgin](https://github.com/EionRobb/skype4pidgin) 已更新到 1.7 版本。该插件更新修复了加入房间时失去管理员权限、通过客户端传输文件的问题以及人们不在线的问题。

[gawk 5.2.1](https://www.gnu.org/software/gawk/) 的更新出现在快照 [20221127](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/V5QTPPNAU45ZXBOLAVB7RM4RXGNSGVDO/) 中。该实用程序修复了调试器的问题，删除了一些补丁并解决了将无类型数组元素传递给函数的一些微妙问题。基于 [GnuPG](https://gnupg.org/) 源码的通用密码库 [libgcrypt](https://gnupg.org/software/libgcrypt/index.html) 已更新至 1.10.1 版本并修复了轻微的[内存泄漏](https://en.wikipedia.org/wiki/Memory_leak)。此次更新改进了对 [PowerPC](https://en.wikipedia.org/wiki/PowerPC) 架构的支持，并将硬件优化配置文件 [`hwf.deny`](https://www.gnupg.org/documentation/manuals/gcrypt/Configuration.html) 添加到 `/etc/gcrypt/` 目录。快照中还有 [kdump](https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html) 的 git+ 更新、[heaptrack](https://milianw.de/tag/heaptrack) 1.4.0、[iputils](https://github.com/iputils/iputils) 20221126 和添加了新的 [API](https://en.wikipedia.org/wiki/API) 接口调用并修复了一些编译问题的 [libeconf](https://github.com/openSUSE/libeconf/releases) 0.4.9 版本更新。

快照 [20221126](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/QXA5E6GUWDAWXKANCLFCS2UVWBCLISUZ/) 更新了五个软件包。[libpng16](http://www.libpng.org/pub/png/libpng.html) 1.6.39 的更新修复了内存泄漏和缓冲区溢出问题。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.53 更新进行了一些代码清理。[libzypp](https://github.com/openSUSE/libzypp) 17.31.6 避免在信息已知时调用 `getsockopt`，并且该补丁有望修复 [WSL](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux) 日志记录。[manpages-l10n](https://manpages-l10n-team.pages.debian.net/manpages-l10n/) 4.16.0 为即将到来的 Leap 15.5 和 Fedora 37 进行了宏升级。 [python-setuptools](https://pypi.org/project/setuptools/) 65.6.3 的更新修复了日志记录错误，并通过对源进行排序提高了 [clib](https://www.clibs.org/) 构建的可重复性。

快照 [20221125](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EGLLVRWJQZY3FE57XIOTYIWDZ3NAGVXA/) 发布了文本编辑器 [nano](https://www.nano-editor.org/) 的主要版本更新。Nano 7.0 允许（通过 `M-V`）输入没有前导零的 unicode 代码和完成短代码。nano 7.0 现在允许在大括号之间包含可绑定函数名称的字符串绑定。大括号函数名称可以与文字文本混合。Nano 并不是快照中唯一更新的文本编辑器。[vim](https://www.vim.org/) 9.0.0924 的更新在 more 提示符下执行 mapclear、unmenu 和 delfunc 时释放了内存。该软件包还修复了无法识别的 [Amazon Web Services](https://aws.amazon.com/) 配置文件。视频媒体播放器 [VLC](https://www.videolan.org/vlc/index.html) 3.0.18 的更新修复了颜色回归以及旧 GPU 的一些渲染和性能问题。快照中更新了更多软件包，包括 [apparmor](https://apparmor.net/) 3.1.2、图像处理框架 [gegl](https://www.gegl.org/) 0.4.40、[openvpn](https://openvpn.net/) 2.5.8 等。

由于更新日志的准备错误，快照 20221124 的电子邮件公告未发送，但快照确实已发布。

[virtualbox](https://www.virtualbox.org/) 7.0.4 版本更新在快照 [20221123](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CVTLTSY3TFSSUMVLNLI3NCXMDMYBEBZY/) 中发布。新的主要版本有多个[图形用户界面](https://en.wikipedia.org/wiki/Graphical_user_interface)更改，包括修复新虚拟机向导中的回归。virtualbox 还增加了对[安全启动](https://www.intel.com/content/www/us/en/support/articles/000006942/boards-and-kits/desktop-boards.html)功能的支持。[sudo](https://www.sudo.ws/) 1.9.12p1 的更新修复了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)，该漏洞在启用密码身份验证时可能会[越界写入小于八个字符的密码](https://www.suse.com/security/cve/CVE-2022-43995.html)。[CVE-2022-43995](https://www.suse.com/security/cve/CVE-2022-43995.html) 不会影响使用其他身份验证方法（如 PAM、AIX 身份验证或 BSD 身份验证）的配置。[mariadb](https://mariadb.org/) 10.10.2 的更新修复了 [InnoDB](https://en.wikipedia.org/wiki/InnoDB) 存储崩溃恢复并改进了与许多表（包括 [eq_ref 表](https://jira.mariadb.org/browse/MDEV-28852)）的连接优化。

------

原文：[Nano, VirtualBox update in Tumbleweed](https://news.opensuse.org/2022/12/01/nano-vb-up-in-tw/)，作者：Douglas DeMaio