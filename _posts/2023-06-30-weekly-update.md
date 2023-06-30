---
author: Poplar at twilight
date: 2023-06-30 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Kdump 和 firewalld 在 Tumbleweed 中更新
image: /assets/posts/2023-06/release.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 本周正在稳步推出快照。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

快照不大，但是一致的。

快照 [20230628] 提供了一些小更改，重点是删除一些过时的机制并在一些方面进行了清理，以帮助确定 [Python] 的未来方向。

[20230628]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LTA22K7AU76KPQ665J2725MAOWTMQRFD/
[Python]: https://www.python.org/

快照 [20230627] 是本周较大的快照之一，它提供了 [gegl]、[kdump]、[pipwire]、[strace] 等软件包的更新。图形包 [gegl] 更新至 0.4.46 版本。该软件包提供了一些错误修复和性能改进，并重新启用了弃用警告。内核崩溃转储包 [kdump] 更新至 1.9.2 版本；该更新提供了一些增强功能，例如重写 `kdump-save`，并更新其他部分，以确保挂载现在完全由 [dracut] 处理。音频压缩包 [flac] 更新至 1.4.3 版本，提高了所有预设的编码器速度，并且对最快预设以及 24 位和 32 位输入进行了重大改进。多媒体框架 [pipwire] 0.3.72 修复了拒绝更新 [JACK] 客户端的严重错误，并且对 [ALSA] 进行了一些音频增强。[Strace] 6.4 和 [perl-Bootloader] 1.4 是快照中更新的其他几个软件包之一。

[20230627]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ZACFCXQN24VNHQBWM2Y7S25VS2RZT5AL/
[gegl]: https://www.gegl.org/
[kdump]: https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html
[pipwire]: https://pipewire.org/
[strace]: https://strace.io/
[dracut]: https://dracut.wiki.kernel.org/index.php/Main_Page
[flac]: https://xiph.org/flac/
[JACK]: https://jackaudio.org/
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[Strace]: https://strace.io/
[perl-Bootloader]: https://github.com/openSUSE/perl-bootloader

快照 [20230626] 中唯一更新的软件包是低级信号处理库 [spandsp]；更新后的 3.0.0 git + 版本进行了一些修改，旨在减轻与缓冲区溢出、内存损坏以及因将过多数据复制到输出缓冲区中而可能出现的其他潜在问题有关的问题。

[20230626]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/5GFCFV42EGIJ7QJYCD6KQVCFESFKY7KQ/
[spandsp]: https://github.com/freeswitch/spandsp

快照 [20230625] 更新了两个软件包。[firewalld] 更新至新的主要版本。firewalld 2.0 获得了对 [nftables] flowtable 的支持，预计将加速 [TCP] 和 [UDP] 议流。firewalld 还获得了一个名为 “[Zone Priorities]” 的新功能，该功能允许用户控制数据包分类到区域的顺序；可以使用命令行选项 `--set-priority` 进行设置。快照中要更新的另一个软件包是身份管理客户端 [sssd] 2.9.1。sssd 修复了几个回归问题，其中包括当 `cache_first` 设置为 `true` 时，影响基于内核的自动挂载器 [autofs] 的查找的回归问题。

[20230625]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/KTFKAMUFYZWASIXYX3XNNZ5BIE4O3CKD/
[firewalld]: https://firewalld.org/
[nftables]: https://git.netfilter.org/nftables/
[TCP]: https://en.wikipedia.org/wiki/Transmission_Control_Protocol
[UDP]: https://en.wikipedia.org/wiki/User_Datagram_Protocol
[Zone Priorities]: https://github.com/firewalld/firewalld/pull/1101
[sssd]: https://sssd.io/
[autofs]: https://mirrors.edge.kernel.org/pub/linux/daemons/autofs/

快照 20230625 更新了 [Mesa] 和 [Linux 内核][kernel]，但 [LibVNCServer] 0.9.14 有几处变化需要强调。LibVNCServer 修复了与 [GnuTLS] 服务器的一些 [TLS] 互操作性，删除了 [CVE-2020-29260] 补丁并添加了对 [qemu] 扩展按键事件的支持。Mesa 23.1.3 更新修复了与 [boo#1209005] 相关的回归，该回归在某些情况下导致崩溃。[kernel-source][kernel] 更新至 6.3.9 版本，解决了与 [x86] 架构相关的问题，即在安装新的[全局描述符表（GDT）][GDT]后立即执行切换。与监管[无线设备通道验证][wifi]相关的无线网络子系统也发生了变化。快照中要更新的另一个软件包是 [sendmail] 8.17.2。该软件包改进了 TLS 设置失败的错误处理，引入了与[电子邮件地址国际化]支持相关的各种改进，并通过维护 [DANE] 要求来提高安全性。快照中更新了其他几个包。

[20230625]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/QSBXBWGHZS4ZX6YSNG4LPASXYY5FFC5V/
[Mesa]: https://www.mesa3d.org/
[kernel]: https://www.kernel.org/
[LibVNCServer]: https://libvnc.github.io/
[tls]: https://en.wikipedia.org/wiki/Transport_Layer_Security
[GnuTLS]: https://www.gnutls.org/
[CVE-2020-29260]: https://www.suse.com/security/cve/CVE-2020-29260.html
[qemu]: https://www.qemu.org/
[boo#1209005]: https://bugzilla.opensuse.org/show_bug.cgi?id=1209005
[x86]: https://en.wikipedia.org/wiki/X86
[GDT]: https://en.wikipedia.org/wiki/Global_Descriptor_Table
[wifi]: https://www.wi-fi.org/
[sendmail]: https://www.linuxfromscratch.org/blfs/view/svn/server/sendmail.html
[电子邮件地址国际化]: https://en.wikipedia.org/wiki/International_email
[DANE]: https://en.wikipedia.org/wiki/DNS-based_Authentication_of_Named_Entities

------

原文：[Kdump, firewalld update in Tumbleweed](https://news.opensuse.org/2023/06/30/kdump-firewalld-up-in-tw/)，作者：Douglas DeMaio
