---
author: Hanjingxue Boling
date: 2023-01-27 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Firefox、Apache 和 LibreOffice 在 Tumbleweed 中更新
image: /assets/posts/misc/DragonFull.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在本周[从 2048 位 RSA 更改为 4096 位 RSA 密钥](https://suse.org.cn/%E7%A4%BE%E5%8C%BA%E6%96%B0%E9%97%BB/2023/01/22/Tumbleweed-%E7%9A%84%E6%96%B0-4096-%E4%BD%8D-RSA-%E7%AD%BE%E5%90%8D%E5%AF%86%E9%92%A5.html)，到目前为止共发布了四个快照。

基于一项安全建议，openSUSE 更换至新密钥；你可以在 `/usr/lib/rpm/gnupg/keys` 中找到新密钥。你也可以使用 `rpm -qi` 和[密钥名称](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FA542JUB5KTAAR37CSY3W43DVWPDTXC4/)查看密钥。有关该主题的更多信息详见 [Facotry 邮件列表讨论贴](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FA542JUB5KTAAR37CSY3W43DVWPDTXC4/)。

最新的快照是 [20230124](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LK6QJ6ETQGFLZL4ZXHWPX53AS7ZZXNY5/)。这个快照更新了 [apache2](https://httpd.apache.org/) 2.4.55 并处理了一些 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。[CVE-2022-37436](https://cve.report/CVE-2022-37436) 描述了一个缺陷，恶意后端可能导致响应标头被截断，因为在读取它们时发现错误时它们没有被清除。这可能会导致某些标头被合并到响应正文中，而不会被客户端解释。可能导致拒绝服务攻击的 [CVE-2006-20001](https://www.cve.org/CVERecord?id=CVE-2006-20001) 已修复。[gedit](https://wiki.gnome.org/Apps/Gedit) 44.2 的更新修复了一个插件错误并更新了翻译。[gnome-desktop](https://gitlab.gnome.org/GNOME/gnome-software) 43.1 版本修复了一个缩略图问题并使默认的 es-US 键盘更加合理。同时，[glib2](https://wiki.gnome.org/Projects/GLib) 2.74.5 也更新了翻译，并删除了一个由上游修复的补丁。[dracut](https://dracut.wiki.kernel.org/index.php/Main_Page) 在 059+suse 更新中添加的 [058 版本中缺失的条目](https://github.com/dracutdevs/dracut/releases/tag/058)；它还为一些脚本添加了可执行权限。[sudo](https://www.sudo.ws/) 1.9.12p2 的更新修复了编译错误、潜在的崩溃和 [CVE-2023-22809](https://cve.report/CVE-2023-22809)；该漏洞影响了 sudoedit 处理用户提供的环境变量的方式。用于 [Linux](https://www.kernel.org/) 操作系统的原子更新包 [transactional-update](https://github.com/openSUSE/transactional-update) 在 4.1.2 版本中进行了一些清理和小型代码优化。它还修复了以前的内部挂载可能会覆盖用户[绑定挂载](https://docs.docker.com/storage/bind-mounts/)的问题。[yast2-trans](https://software.opensuse.org/package/yast2-trans) 更新了葡萄牙语和马其顿语。快照还更新了文本编辑器 [vim](https://www.vim.org/) 9.0.1234 和其他一些软件包。

快照 [20230123](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FBPYNNKZ2XHAXA2XULYP3OI24W4BHEKR/) 中更新了一些 [RubyGems](https://rubygems.org/) 和 [pypi](https://pypi.org/)。[rubygem-rack](https://rubygems.org/gems/rack/) 更新到 2.2.6.2 和 3.0.4.1 修复了三个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)，它们都与 [ReDoS](https://en.wikipedia.org/wiki/ReDoS) 相关。[Python](https://www.python.org/) 2 和 Python 3 之间缺少的兼容层 python-future 更新到 0.18.3 版本并添加了 `docker push` 以优化[持续集成](https://en.wikipedia.org/wiki/Continuous_integration)。该软件包还投放了一个 [CVE-2022-40899](https://www.suse.com/security/cve/CVE-2022-40899.html) 补丁，该补丁可能允许远程攻击通过精心设计的 Set-Cookie 导致拒绝服务。快照中更新了其他几个软件包，包括 [CoreFreq](https://github.com/cyring/CoreFreq) 1.95.1，它是专为 64 位处理器设计的 CPU 监控软件；增加了对 [AMD](https://www.amd.com/en) 和 [Intel](https://www.intel.com/) 硬件的支持。

快照 [20230122](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/W3JUIWUPJ3CMGAEKH3PIEBWZ6Z5CBA2T/) 更新了 [Mozilla Firefox](https://www.mozilla.org/) 的主要版本。[Firefox 109.0](https://www.mozilla.org/en-US/firefox/109.0/releasenotes/) 对称为 [Manifest V3 (MV3)](https://extensionworkshop.com/documentation/develop/manifest-v3-migration-guide/) 的 WebExtensions [API](https://en.wikipedia.org/wiki/API) 进行了更改。现在默认启用扩展支持；它以看起来像拼图的[新扩展按钮](https://support.mozilla.org/en-US/kb/extensions-button?_gl=1%2Amv3fft%2A_ga%2AMzk0ODkwNzgzLjE2NzI2NTIxMDI.%2A_ga_MQ7767QQQW%2AMTY3NDc0MTAwMS4xLjAuMTY3NDc0MTAwMS4wLjAuMA..&redirectslug=unified-extensions&redirectlocale=en-US)的形式引入了用户界面变化。与 [GTK](https://www.gtk.org/) 包装器相关的，特定于 Linux 的 [CVE-2023-23598](https://www.mozilla.org/en-US/security/advisories/mfsa2023-01/#CVE-2023-23598) 已修复，同时改进了西班牙翻译。为 es-ES 和 es-AR 区域设置构建的 Firefox 浏览器现在带有一个用于 Firefox 拼写检查器的内置字典。[git](https://github.com/git) 2.39.1 的更新处理了日志格式和解析[整数溢出](https://en.wikipedia.org/wiki/Integer_overflow)问题。[iptables](https://linux.die.net/man/8/iptables) 1.8.9 的更新在[流控制传输协议](https://en.wikipedia.org/wiki/Stream_Control_Transmission_Protocol)扩展中支持更多的 chunk 类型；它的管理空间工具 [arptables](https://linux.die.net/man/8/arptables) 也支持 `--exac` 标志。[LibreOffice](https://www.libreoffice.org/) 7.4.4.2 的更新修复了 110 多个错误。例如 [tdf#152495](https://bugs.documentfoundation.org/show_bug.cgi?id=152495) 这样的，在使用退出按钮关闭引导对话框时会导致 [Writer](https://www.libreoffice.org/discover/writer/) 崩溃的错误。LibreOffice 还对[在“跟踪更改”模式下移动文本时删除段落分隔符](https://bugs.documentfoundation.org/show_bug.cgi?id=151954)的问题进行了修复。快照中更新了其他几个软件包，如 [yast2](https://github.com/yast/yast-yast2) 4.5.22、[xfsprogs](https://www.linuxfromscratch.org/blfs/view/svn/postlfs/xfsprogs.html) 6.1.1、[icewm](https://ice-wm.org/) 3.3.0、[llvm15](https://llvm.org/) 15.0.7 等。

快照 [20230119](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/7QREJJQ3TV5Y3JSQALTH3NUUEGHEZ32O/) 对 [GCC](https://gcc.gnu.org/) 13.0.1 进行了更新，它添加了一个补丁来修复 [AArch64](https://en.wikipedia.org/wiki/AArch64) 上使用指针签名的展开。[kernel-source](https://www.kernel.org/) 6.1.7 更新包含少量 [ALSA](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 修复和 [DRM](https://en.wikipedia.org/wiki/Direct_Rendering_Manager) 优化。面向行的文本编辑器 [ed](https://www.gnu.org/software/ed/ed.html) 1.19 将选项 `-s` 的长名称更改为 `--script`；选项 `-s` 现在只抑制字节数。[adwaita-xfce-icon-theme](https://github.com/hrdwrrsk/adwaita-xfce-icon-theme) 0.0.3 包也在快照中更新。

------

原文：[Firefox, Apache, LibreOffice update in Tumbleweed](https://news.opensuse.org/2023/01/26/firefox-apache-libreoffice-up-in-tw/)，作者：Douglas DeMaio