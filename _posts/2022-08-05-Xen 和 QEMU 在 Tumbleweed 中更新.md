---
author: Hanjingxue Boling
date: 2022-08-05 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Xen 和 QEMU 在 Tumbleweed 中更新
image: /assets/posts/2022-08/qemu.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

自上周四以来，openSUSE [Tumbleweed](https://get.opensuse.org/tumbleweed/) 已经连续发布了四个快照。

除了本文标题中列出的软件包之外，本周更新的一些软件包还有 [curl](https://curl.se/)、[ffmpeg](https://www.ffmpeg.org/)、[fetchmail](https://www.fetchmail.info/) 和 [vim](https://www.vim.org/) 等。

快照 [20220801](http://ftp.uni-erlangen.de/opensuse/tumbleweed/iso/Changes.20220801.txt) 发布了 [xen](https://xenproject.org/) 4.16.1_06，本次更新提供了几个补丁。其中之一是修复了 [GCC](https://gcc.gnu.org/) 13 编译错误；此次更新还解决了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposure)：[CVE-2022-33745](https://www.suse.com/security/cve/CVE-2022-33745.html)，由于代码移动而错误地使用了变量，该漏洞会导致错误的 [TLB](https://en.wikipedia.org/wiki/Translation_lookaside_buffer) 刷新条件。快照发布的另一个包是 [fetchmail](https://www.fetchmail.info/) 6.4.32；该软件包更新了翻译并添加了一个补丁来清理一些脚本。[mozilla-nss](https://firefox-source-docs.mozilla.org/security/nss/index.html) 更新至 3.80 版本，进行了许多更改，此次更新添加了一些证书并支持异步客户端身份验证挂钩。该软件包还删除了 [Hellenic Academic 2011 根证书](https://bugzilla.mozilla.org/show_bug.cgi?id=1759815)。终端多路复用器 [tmux](https://github.com/tmux/tmux)，更新到 3.3a 版本并添加了 [systemd](https://freedesktop.org/wiki/Software/systemd/) 套接字激活支持，编译软件时可以使用 `-enable-systemd` 启用此功能。

快照 [20220731](http://ftp.uni-erlangen.de/opensuse/tumbleweed/iso/Changes.20220731.txt) 更新了许多软件包。[ImageMagick](https://imagemagick.org/index.php) 跳了几个小版本直接更新至 7.1.0.44。ImageMagick 本次更新消除了一些警告和可能的缓冲区溢出。curl 更新至 7.84.0，删除了两个过时的 [OpenSSL](https://www.openssl.org/) 选项并修复了四个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposure)。Daniel Stenberg 的[视频](https://bit.ly/3BK9Kb8)详细介绍了 [CVE-2022-32205](https://www.suse.com/security/cve/CVE-2022-32205.html)，这可能有效地导致了同层级站点可能的拒绝服务。[kdump](https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html) 的更新修复了[固件辅助转储](https://www.kernel.org/doc/html/latest/powerpc/firmware-assisted-dump.html)的与网络相关的 [dracut](https://dracut.wiki.kernel.org/index.php/Main_Page) 处理。[codec2](https://github.com/drowe67/codec2) 更新至 1.0.5，修复了先前次要版本中的 [FreeDV](https://freedv.org/) [API](https://en.wikipedia.org/wiki/API) 向后兼容性问题。[inkscape](https://inkscape.org/) 更新至 1.2.1，修复了 5 个崩溃、超过 25 个错误并改进了 15 个用户界面翻译。PDF 渲染库 [poppler](https://poppler.freedesktop.org/) 更新到 22.07.0 版本并修复了在某些文件中填写表单时的崩溃。它还为发布 tarball 添加了 [gpg](https://gnupg.org/) 密钥环验证。[gpg2](https://dev.gnupg.org/) 更新至 2.3.7 版本，修复了 [CVE-2022-34903](https://www.suse.com/security/cve/CVE-2022-34903.html)，在不寻常的情况下，此漏洞可能允许通过注入状态行来伪造签名。快照中要更新的其他关键包是 [unbound](https://unbound.net/) 1.16.1、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.33、[yast2-bootloader](https://github.com/yast/yast-bootloader) 4.5.2 和 [kernel-firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/) 20220714。

快照 [20220729](http://ftp.uni-erlangen.de/opensuse/tumbleweed/iso/Changes.20220729.txt) 跳过四个小版本，直接发布了 [yast2](https://yast.opensuse.org/) 4.5.10；新版本添加了根据模组查找包的方法，并修复了 [libzypp](https://github.com/openSUSE/libzypp) 初始化。文本编辑器 [vim](https://www.vim.org/) 9.0.0073，修复了 [CVE-2022-2522](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-2522) 和几个编译器警告。[Linux 内核](https://www.kernel.org/)安全模块 [Apparmor](https://apparmor.net/) 3.0.5 修复了一个构建错误，添加了几个配置文件和抽象附件，并删除了几个上游补丁。GCC 12 和 [ceph](https://ceph.io/) 分别在 12.1.1 和 16.2.9 版本中进行了一些小 [git](https://github.com/git) 更新。

快照 [20220728](http://ftp.uni-erlangen.de/opensuse/tumbleweed/iso/Changes.20220728.txt) 有两个主要版本更新。[qemu](https://www.qemu.org/) 更新至 7.0 版本，对规范文件进行了大量修改，并正确修复了 [CVE-2022-0216](https://www.suse.com/de-de/security/cve/CVE-2022-0216.html)。qemu 添加了几个 [RISC-V](https://riscv.org/) 附件；默认支持 [KVM](https://www.linux-kvm.org/page/Main_Page) 并启用 Hypervisor 扩展。根据变更日志，该包还添加了新的 audio-dbus 和 ui-dbus 子包。另一个大版本更新是 [adobe-sourcehanserif-fonts](https://fonts.adobe.com/fonts/source-han-serif-traditional-chinese) 2.001。新版本为装饰字体添加了针对所有地区的香港特定子集字体和可变字体。另一个要在快照中更新的包是 [ffmpeg](https://www.ffmpeg.org/)。ffmpeg 5.1 版本引入了 [IPFS](https://ipfs.tech/) 协议支持并删除了 [XvMC](https://wiki.archlinux.org/title/XvMC) 硬件加速。该快照还更新了 [bind](https://bind9.readthedocs.io/) 9.18.5、[sqlite2](https://www.sqlite.org/index.html) 3.39.2、[virtualbox](https://www.virtualbox.org/) 6.1.36、[zypper](https://github.com/openSUSE/zypper) 1.14.55 和许多其他包。


------

原文：[Xen, QEMU update in Tumbleweed](https://news.opensuse.org/2022/08/04/xen-qemu-update-in-tw/)，作者：Douglas DeMaio