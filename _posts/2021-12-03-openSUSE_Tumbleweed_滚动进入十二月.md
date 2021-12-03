---
author: Hanjingxue Boling
date: 2021-12-03
layout: post
license: CC-BY-SA-3.0
title: openSUSE Tumbleweed 滚动进入十二月
image: /assets/posts/2021-12/bash.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE Tumbleweed 提供了强劲的 11 月快照，其中包括从 11 月 1 日到 11 月 29 日的 21 个版本。

由于是一个假日居多的季节，12 月传统上是风滚草发布新快照较慢的月份，但 openSUSE 项目已经发布了一个快照。快照 [20211201](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GZVV3AVPSJXRABVKHVJVFCNV6N2QJTUT/) 对 [Linux](https://www.kernel.org/) 用户空间应用程序进行了重大更新，用于修改[英特尔](https://www.intel.com/)的可扩展固件接口 (EFI) 引导管理器。[efibootmgr](https://github.com/rhboot/efibootmgr) 包从版本 14 更新到 17；更新包括对 [GCC](https://gcc.gnu.org/) 7 的修复，更好的解析，现在 efibootmgr 像 [fwupdate](https://github.com/rhboot/fwupdate) 一样使用 EFIDIR / `efibootmgr.efidir`。[webkit2gtk3](https://webkitgtk.org/) 2.34.2 更新修复了按 `Home` 和 `Page Down` 键时的滚动问题。[bash](https://www.gnu.org/software/bash/) 5.1.12 版本新增了四个补丁，修复了几个被困信号。[git](https://github.com/git) 2.34.1 版本更新修复了快照 [20211125](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GIWEHSCVVXI5DPCOWUIMG7S3STU77IGI/) 引起的问题；该 BUG 会导致当与 [pcre2](https://github.com/PhilipHazel/pcre2) 最新版本的某些版本链接时，具有非 UTF8 有效负载的 `git grep` 被破坏的问题。本月第一个快照中要更新的其他软件包是 [glslang](https://github.com/KhronosGroup/glslang) 11.7.1、[graphviz](https://graphviz.org/download/) 2.49.3、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.61、[mtools 4.0.36](https://www.gnu.org/software/mtools/manual/mtools.html) 和 [yast2-update](https://yast.opensuse.org/) 4.4.5。

快照 [20211129](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4Y4MQUPAJGOE6D4BV5TGU3DFVJOKGYGQ/) 提供了 [Linux 内核](https://www.kernel.org/) 5.15.5 的更新，其中对 Broadcom 的 StrataGX 通信处理器进行了一些 [arm](https://www.arm.com/) 修复。Tumbleweed 本月开始搭载 Linux Kernel 5.15。[iso-codes](https://salsa.debian.org/iso-codes-team/iso-codes) 4.8.0 的更新为一些国家添加了国旗 emojis 符号和更新了中文翻译。[LibreOffice](https://www.libreoffice.org/) 在 7.2.3.2 更新中也有一些翻译更新。图像查看器 [ristretto](https://docs.xfce.org/apps/ristretto/start) 0.12.1 修复了全屏模式下的指针行为以及直接关闭窗口时内存泄漏的问题。快照中要更新的其他软件包有 [Microsoft](https://www.microsoft.com/) 的[定理证明器](https://en.wikipedia.org/wiki/Automated_theorem_proving) [z3](https://github.com/Z3Prover/z3) 4.8.13、[libsoup](https://libsoup.org/) 3.0.3、[libsoup2](https://libsoup.org/) 2.74.2 和 [libwpe](https://github.com/WebPlatformForEmbedded/libwpe) 1.12.0 等软件包。

快照 [20211128](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6BG2V7AP4SSOVBWPYRTNSHG26SC425SH/) 中对 [ruby2.7](https://www.ruby-lang.org/en/) 2.7.5 和 [ruby3.0](https://www.ruby-lang.org/en/) 3.0.3 都进行了更新。新的 [Ruby](https://www.ruby-lang.org/en/) 版本修复了相同的三个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；[CVE-2021-41817](https://www.ruby-lang.org/en/news/2021/11/15/date-parsing-method-regexp-dos-cve-2021-41817/) 的安全修复处理可能允许攻击者利用该漏洞造成有效的[拒绝服务攻击](https://en.wikipedia.org/wiki/Denial-of-service_attack)的问题。[CVE-2021-41819](https://www.ruby-lang.org/en/news/2021/11/24/cookie-prefix-spoofing-in-cgi-cookie-parse-cve-2021-41819/) 和 [CVE-2021-41816](https://www.ruby-lang.org/en/news/2021/11/24/buffer-overrun-in-cgi-escape_html-cve-2021-41816/) 是另外两个在 Ruby 更新中修复的漏洞。[openvpn](https://openvpn.net/) 包更新到 2.5.4 版，并对文档和[手册页](https://en.wikipedia.org/wiki/Man_page)构建进行了改进。该软件包还修复了在与向系统添加路由相关的某些情况下的轻微内存泄漏。快照中更新了一些 [YaST](https://yast.opensuse.org/) 软件包，例如 [autoyast2](https://yast.opensuse.org/) 4.4.23、[yast2-installation](https://yast.opensuse.org/) 4.4.23 和 [yast2-bootloader](https://yast.opensuse.org/) 4.4.9，修复了由于缺少请求而导致的崩溃。

快照 [20211127](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2WPDGUR2YA6NDFCSRYXDKUET6PBBV2OT/) 中更新了两个软件包。指纹读取器包 [fprintd](https://fprint.freedesktop.org/) 1.94.1 修复了 [systemd](https://freedesktop.org/wiki/Software/systemd/) 单元，以便处理 [udev](https://en.wikipedia.org/wiki/Udev) 热插拔事件。由于 [Fedora Weblate](https://fedoraproject.org/wiki/L10N_Move_to_Weblate) 的贡献，指纹包还更改了 [PolicyKit](https://gitlab.freedesktop.org/polkit/polkit) 字符串并进行了大量的翻译更新。Linux 蓝牙配置工具 [blueberry](https://github.com/linuxmint/blueberry) 1.4.5 也有一些更新的翻译并添加了打开/关闭蓝牙选项。

[互联网浏览器](https://youtu.be/YDNmyyrEZho) [Mozilla Firefox](https://www.mozilla.org/) 94.0.2 在快照 [20211126](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2WFYVNMP3VSBSAYMYADA63DP2J2T5GVW/) 中有一个针对 Linux 版本的修复；该修复解决了使用 [WebGL](https://en.wikipedia.org/wiki/WebGL) 将选项卡移动到后台时由文件描述符泄漏引起的一般不稳定和崩溃问题。[ImageMagick](https://imagemagick.org/index.php) 7.1.0.16 的更新增加了对读取 [Photoshop](https://www.adobe.com/products/photoshop.html) 文档文件中额外通道的支持。该图形编辑包还修复了 [OpenCL](https://www.khronos.org/opencl/) 构建问题。GNU [gpg2](https://gnupg.org/) 已更新至 2.3.3 版并修复了 [Let's Encrypt](https://letsencrypt.org/) 证书链验证问题。该更新还提供了一个新的配置文件 `common.conf`，现在用于通过 `use-keyboxd` 启用密钥数据库守护进程；在 `gpg.conf` 和 `gpgsm.conf` 中使用此选项支持过渡期。[virtualbox](https://www.virtualbox.org/) 6.1.30 的更新修复了 X11 上的一个涉及在 VM 存储设置中单击鼠标启动拖放的错误；该软件包还开始引入对[内核](https://www.kernel.org/) 5.16 的初始支持。快照中要更新的其他软件包有 [xapps](https://github.com/linuxmint/xapp/) 2.2.5，[ncurses](https://en.wikipedia.org/wiki/Ncurses) 和 [ceph](https://ceph.io/) 的更新版本，以及在 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.58 更新中进行引入的加泰罗尼亚语翻译。

快照 [20211125](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GIWEHSCVVXI5DPCOWUIMG7S3STU77IGI/) 中仅更新了一个包。Perl 兼容的正则表达式库是一组 C 函数，它们使用与 Perl 5 相同的语法和语义实现正则表达式模式匹配。[pcre2](https://github.com/PhilipHazel/pcre2) 10.39 版本修复了一些不正确的检测，涉及其 [just-in-time (JIT) 编译器](https://zherczeg.github.io/sljit/pcre2_jit.html)并更新了 [Unicode 14.0.0](http://www.unicode.org/versions/Unicode14.0.0/) 支持。此快照中的更改在快照 [20211201](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/GZVV3AVPSJXRABVKHVJVFCNV6N2QJTUT/) 中得到修复。

------

原文：[openSUSE Tumbleweed Rolls into December](https://news.opensuse.org/2021/12/03/os-tw-rolls-into-dec/)，作者：Douglas DeMaio
