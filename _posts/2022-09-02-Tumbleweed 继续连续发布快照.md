---
author: Hanjingxue Boling
date: 2022-09-02 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 继续连续发布快照
image: /assets/posts/misc/update_tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[Tumbleweed](https://get.opensuse.org/tumbleweed/) 连续每日发布快照的次数达到了惊人的 26 次。

[openSUSE](https://get.opensuse.org/) Tumbleweed 本周依旧快速滚动中，[glibc](https://www.gnu.org/software/libc/)、[ibus](https://github.com/ibus/ibus)、[Mozilla Firefox](https://www.mozilla.org/) 和 [sudo](https://www.sudo.ws/) 等软件包都收到了更新。

在快照 [20220829](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/7EMUFLAU26GUSRBO5375FR63YX5R3H5B/) 之后，这种情况还会继续吗？ 用户应该很快就会知道。

快照 20220829 为 AppArmor 和 libapparmor3.0.7 提供了更新。新版本修复了 `buildpath.py` 中的 setuptools-version 检测。日文用户手册 man-pages-ja 20220815 在本次快照中更新，进行了一些改进。tree 2.0.3 版本更新为 `.gitignore` 功能提供了多个修复，并修复了几个[段错误](https://en.wikipedia.org/wiki/Segmentation_fault)。

快照 [20220828](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ADNYZGI3BMQTOXE4WDBF2KGP5I5FGHB5/) 更新了十个包。其中包括 [ibus](https://github.com/ibus/ibus) 1.5.27，它在 [GNOME](https://www.gnome.org/) 桌面中启用了 ibus 重新启动，并在 [Plasma](https://kde.org/plasma-desktop/) [Wayland](https://wayland.freedesktop.org/) 中禁用了 [XKB 引擎](https://wiki.archlinux.org/title/X_keyboard_extension#Basic_information_on_XKB)。[webkit2gtk3](https://webkitgtk.org/) 2.36.7 的更新修复了几个崩溃和渲染问题，并解决了一个与 Apple 使用该软件包遇到的相关 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。[Python](https://www.python.org/) web 框架和异步网络库 [python-tornado6](https://www.tornadoweb.org/) 6.2 默认启用 [SSL 证书](https://www.ssl.com/)验证和主机名检查，其[持续集成](https://en.wikipedia.org/wiki/Continuous_integration)已从 [Travis](https://www.travis-ci.com/) 和 [Appveyor](https://www.appveyor.com/) 转移到 [Github Actions](https://github.com/features/actions)。快照中要更新的另一个包是字体处理程序 [libXfont2](https://gitlab.freedesktop.org/xorg/lib/libxfont) 2.0.6。libXfont2 新版本修复了一些拼写和措辞问题；它还修复了注释以反映删除了对旧版 [OS/2](https://en.wikipedia.org/wiki/OS/2) 的支持。

[Mozilla Firefox](https://www.mozilla.org/) 浏览器新的大版本在快照 [20220827](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/Z57FAHMW4QZDHDMWGMQVGCLRLFOY7P4Q/) 中发布。[Firefox](https://www.mozilla.org/) 104.0 解决了多个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)，包括地址栏欺骗以伪装 URL 的 CVE；另一个修复了一个漏洞，该漏洞可显示内存损坏的证据以及可被用于运行任意代码的可能性。[GNU](https://www.gnu.org/) C 库的更新增加了重要的新特性；[glibc](https://www.gnu.org/software/libc/) 2.36 添加了 [process_madvise](https://man7.org/linux/man-pages/man2/process_madvise.2.html) 和 [process_mrelease](https://lwn.net/Articles/864184/) 函数。glibc 添加了对 [DT_RELR](https://sourceware.org/bugzilla/show_bug.cgi?id=27924) 重定位格式的支持，并添加了套接字连接 [fsopen](https://www.php.net/manual/en/function.fsockopen.php) 和许多其他排序功能。[VMware](https://www.vmware.com/) 的 [open-vm-tools](https://github.com/vmware/open-vm-tools) 12.1.0 启用了多项功能，可以更好地管理用户与虚拟机的无缝交互，修复了允许本地权限提升的漏洞；它还修复了用于 32 位 Linux 版本的 [ContainerInfo](https://docs.vmware.com/en/VMware-Tools/12.0.0/com.vmware.vsphere.vmwaretools.doc/GUID-82490A5C-014C-46D9-815A-18B1C9E5312C.html) 插件的构建。快照中还更新了一些 [RubyGems](https://rubygems.org/)，例如 [rubygem-faraday-net_http](https://rubygems.org/gems/faraday-net_http/versions/3.0.0) 3.0.0、[rubygem-parser](https://rubygems.org/gems/parser/versions/2.2.3.0) 3.1.2.1 和 [rubygem-rubocop](https://rubygems.org/gems/rubocop) 1.35.1。

快照 [20220826](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/H5IU6SQW7APQ7G4ZXUY4HAOBKGUXD6Z6/) 总共更新了三个包。简单的 PIN 或密码短语安全阅读器 pinentry 更新到 1.2.1；[pinentry](https://gnupg.org/related_software/pinentry/) 改进了可访问性并修复了初始化期间的错误处理。更新后的 pinentry 还确保了始终从内存中清除输入的 PIN。它的图形用户界面 [pinentry-gui](https://gnupg.org/related_software/pinentry/) 也更新到了 1.2.1 版本。将 UNIX 密码文件转换为影子密码格式的 [shadow](https://github.com/shadow-maint/shadow) 已更新至 4.12.3 版本。shadow 修复了一个有 9 年历史的 CVE。[CVE-2013-4235](https://www.suse.com/security/cve/CVE-2013-4235.html) 修复了在复制和删除目录树时 [TOCTOU](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use) 的竞争条件存在的漏洞。该软件包还更新并修复了一些西班牙语和法语翻译。

[sudo](https://www.sudo.ws/) 1.9.11p3 的次要版本更新在快照 [20220825](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4QAT3JA6LVXCDNJ4DMF2UW4CJINQR4ER/) 中发布。sudo 修复了 Python 模块在某些系统上与 Python 3.9.10 的崩溃，并且 [AppArmor](https://apparmor.net/) 集成可用于 Linux，因此 sudoers 规则现在可以指定一个 APPARMOR_PROFILE 选项来运行一个由命名的 AppArmor 配置文件限制的命令。[sudo](https://www.sudo.ws/) 还修复了 1.9.11p1 中引入的回归，该回归从未在 Tumbleweed 快照中发布；如果命令没有返回输出，则在登录到 sudo_logsrvd 时此漏洞会导致警告。开源磁盘加密包 [cryptsetup](https://gitlab.com/cryptsetup/cryptsetup) 更新到 2.5.0 。这个新版本从项目中删除了 cryptsetup-reencrypt 工具，并将 reencryption 移动到已经存在的 `cryptsetup reencrypt` 命令。快照中要更新的其他软件包包括 [gnome-bluetooth](https://wiki.gnome.org/Projects/GnomeBluetooth) 42.3、设备内存启用程序 [ndctl](https://github.com/pmem/ndctl) 74、[yast2-tune](https://github.com/yast/yast-tune) 4.5.1 等。

------

原文：[Tumbleweed Continues Release Streak](https://news.opensuse.org/2022/09/02/tw-continues-release-streak/)，作者：Douglas DeMaio