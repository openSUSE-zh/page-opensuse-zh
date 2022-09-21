---
author: Hanjingxue Boling
date: 2022-09-21 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Virtualbox、grep 和 gawk 在 Tumbleweed 中更新
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 本周继续以稳定的节奏发布新快照。

自快照 [20220903](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NGLGIEHGPWUYWF5WLPNNNFBR5K7Z3DJG/) 以来，Tumbleweed 似乎一直在连续发布快照。

快照 [20220919](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FB3PBVZ4SB6HQ3DIC4CAQ4JYISOW5GQ7/) 更新了两个包。其中之一是与 [X.509](https://en.wikipedia.org/wiki/X.509) 证书一起使用的 [libksba](https://gnupg.org/software/libksba/index.html) 1.6.1，它修复了 [rpmlint](https://github.com/rpm-software-management/rpmlint) 警告，并现在确保在线证书状态协议服务器不会返回发送的 [Nonce](https://en.wikipedia.org/wiki/Cryptographic_nonce)。另一个要更新的软件包是 [xfce4-pulseaudio-plugin 0.4.5](https://docs.xfce.org/panel-plugins/xfce4-pulseaudio-plugin/start)，它修复了意外切换静音开关和使用 [GCC](https://gcc.gnu.org/) 10 进行编译的问题。

快照 [20220918](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/OJRDN6OHLCBTV7PG6V2EVZKC4PHLC5T6/) 更新了 [virtualbox](https://www.virtualbox.org/) 6.1.38。此次版本更新修复了数个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)。[CVE-2022-21571](https://www.suse.com/de-de/security/cve/CVE-2022-21571.html) 和 [CVE-2022-21554](https://www.suse.com/de-de/security/cve/CVE-2022-21554.html) 都可能允许虚拟机未经授权获得造成挂起或重复崩溃的能力。[virtualbox-kmp](https://software.opensuse.org/package/virtualbox-kmp-default) 在本次快照中更新，引入了对 [Linux Kernel](https://www.kernel.org/) 6.0 的原始支持。该软件包还修复了 `/dev/vboxuser` 的权限问题。快照中要更新的其他软件包是 [ibus-m17n](https://github.com/ibus/ibus-m17n) 1.4.17、[python-charset-normalizer](https://github.com/ousret/charset_normalizer) 2.1.1 和 [python-idna](https://pypi.org/project/idna/) 3.4，它们已更新到最近发布的 [Unicode 15.0.0](https://unicode.org/versions/Unicode15.0.0/)。

快照 [20220917](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/L6BCPBL5VMOK2MGJCIWGA4A2ACDLNPCM/) 中更新了数个包。静态代码分析工具 [cppcheck](https://github.com/danmar/cppcheck) 2.9 从外部函数调用传播条件值，它支持在 `valueflow` 中评估更多数学函数。[dracut](https://github.com/dracutdevs/dracut) 的更新更改了默认的持久性策略并修复了由不属于包的 bash-completion 目录引起的[“不属于包的目录”](https://forums.opensuse.org/showthread.php/464077-directories-not-owned-by-a-package)。[yast2](https://github.com/yast/yast-yast2) 4.5.14 的更新从代码中删除了一些模式；[yast2-network](https://github.com/yast/yast-network) 4.5.7 的更新进行了一次变更，现在会在导入和读取网络配置之前激活 [s390](https://en.wikipedia.org/wiki/IBM_System/390) 设备；否则相关的 [Linux](https://www.kernel.org/) 设备将不存在并且会被忽略。快照中更新的其他一些软件包是 [microos-tools](https://github.com/openSUSE/microos-tools) 2.17 和 [python310 3.10.7](https://www.python.org/downloads/release/python-3107/)，解决了 python 语言中一个被标记为 [CVE-2020-10735](https://www.suse.com/de-de/security/cve/CVE-2020-10735.html) 的缺陷。

快照 [20220916](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/N3WFZ3GUTKOH466MTFG2PVQNL7L24D6C/) 更新了 [grep](https://www.gnu.org/software/grep/) 3.8；该软件包现在警告 `egrep` 和 `fgrep` 都已过时，取而代之的是 `grep -E` 和 `grep -F`。[pipewire](https://pipewire.org/) 0.3.58 的更新修复了启动系统流时的一些回归和潜在的崩溃。当使用过滤器链，并在配置文件中使用不存在的控件属性时，grep 会发出警告。文件类型识别包 [file](https://www.darwinsys.com/file/) 5.43 增加了 [zstd](https://facebook.github.io/zstd/) 解压支持和对 [ndjson.org](http://ndjson.org/) 的支持。[gawk](https://www.gnu.org/software/gawk/) 5.2.0 的更新现在支持 Terence Kelly 的[持久化 malloc](https://queue.acm.org/detail.cfm?id=3534855)，允许实用程序解释器在运行之间保留其变量、数组和用户定义的函数。快照中要更新的其他一些软件包是 [fuse3](https://github.com/libfuse/libfuse) 3.12.0、[hdparm](https://sourceforge.net/projects/hdparm/) 9.65 和 [ncurses](https://en.wikipedia.org/wiki/Ncurses) 等。

本周开始更新的是快照 [20220915](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3SIOZZQ5YRGJZGYQGBKSS24N27RPOCRP/)。此快照更新了 [ffmpeg-5](https://www.ffmpeg.org/) 5.1.1，解决了 [CVE-2022-2566](https://www.suse.com/security/cve/CVE-2022-2566.html)。ffmpeg-5 还修复了未初始化值的使用。[rsync](https://rsync.samba.org/) 3.2.6 对文件列表验证代码进行了一些改进，并为文件传输包添加了安全检查。快照中更新了其他一些软件包。

你可在[邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)中阅读有关 Tumbleweed 快照的软件包更新的更多信息。

------

原文：[Virtualbox, grep, gawk update in Tumbleweed](https://news.opensuse.org/2022/09/21/vb-grep-gawk-up-in-tw/)，作者：Douglas DeMaio