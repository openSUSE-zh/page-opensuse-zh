---
author: Poplar at twilight
date: 2023-07-21 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Redis 和 HarfBuzz 在 Tumbleweed 中获得更新
image: /assets/posts/2023-07/hb.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE Tumbleweed 在本周更新了 harfbuzz、xterm、Redis、Audacity 等软件包。

本周快照不断推出。

快照 [20230718] 更新了两个包。[pentobi] 23.1 的更新修复了一个覆盖 Android 上的游戏文件相关的问题。数据压缩优化器 [zlib-ng-compat] 更新至 2.1.3 进行了改进和更新，使库更强大、更高效。zlib-ng-compat 还删除了一个因上游更改而不再需要的补丁。

[20230718]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WJ6JUZ5AHP4T7MQ2OEO5IY4Q227HEEFA/
[pentobi]: https://github.com/enz/pentobi
[zlib-ng-compat]: https://github.com/zlib-ng/zlib-ng

快照 [20230717] 更新了许多软件包。其中包括获得主要版本更新的 ext 整形引擎 [harfbuzz]。harfbuzz 8.0.1 包含了许多新功能，例如实验性 [WebAssembly]（WASM）整形器，以及许多错误修复。harfbuzz 通过利用嵌入在字体文件中的 WebAssembly 来提高字体整形的灵活性，但 WASM 整形器默认处于禁用状态，需要在构建过程中启用；该软件包还进行了一些优化。字体渲染 [freetype2] 2.13.1 有许多新功能和错误修复。最显着的变化是添加了新函数 `FT_Get_Default_Named_Instance` 和 `FT_GlyphSlot_AdjustWeight`，可用于水平或垂直调整字形权重。[fusion3] 3.15.1 将默认写入大小减少了一半。[poppler] 23.07.0 的更新进行了改进并解决了读取 UTF8-with-BOM 文件、渲染格式错误的文档等问题，并解决了与叠印预览和签名处理相关的崩溃问题。xterm 384 的更新还修正了位图字体双倍宽度字符的渲染，并修复了与远程图形指令集有关的问题，包括处理颜色初始化和颜色值的空白。总的来说，快照涵盖了一个共同的主题，即改进和增强与字体渲染、整形、文档处理和终端仿真相关的各种软件包。快照中更新的其他几个软件包包括 [krb5] 1.21.1 和 [rsyslog] 8.2306.0。

[20230717]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FK37KIDTONED64QWUPBL2RIR3WVELEQA/
[WebAssembly]: https://webassembly.org/
[harfbuzz]: https://github.com/harfbuzz/harfbuzz
[freetype2]: https://freetype.org/
[fusion3]: https://github.com/libfuse/libfuse
[poppler]: https://poppler.freedesktop.org/
[xterm]: https://invisible-island.net/xterm/
[krb5]: https://web.mit.edu/kerberos/
[rsyslog]: https://www.rsyslog.com/

快照 [20230716] 更新了 [Mozilla Firefox] 115.0.2。Firefox 修复了许多错误以及 [CVE]。[CVE-2023-3600] 是一个可通过崩溃来利用的释放后使用漏洞。[iproute2] 6.4 在 macvlan 组件中添加了一个名为 `bclim` 的新参数。在 openSUSE 的 bugzilla 发现 [issue 1012628] 后，[Linux 内核]更新到了 6.4.3。快照中另一个要更新的软件包是 [libvirt] 9.5.0。新版本包括重要的更改，例如在 [qemu] 中配置 `qcow2` 驱动程序的`discard-no-unref` 功能，这有望减少映像的集群碎片。其他改进还包括处理 CPU 兼容性以及正确处理非 DIMM 设备的内存插槽。快照中还更新了其他几个软件包。

[Mozilla Firefox]: https://www.mozilla.org/
[20230716]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YGU7CSYRDEB62V5LRRIGXMFUX6EUFVUL/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[CVE-2023-3600]: https://www.suse.com/de-de/security/cve/CVE-2023-3600.html
[iproute2]: https://git.kernel.org/pub/scm/network/iproute2/iproute2.git
[Linux 内核]: https://www.kernel.org/
[issue 1012628]: https://bugzilla.opensuse.org/show_bug.cgi?id=1012628
[libvirt]: https://libvirt.org/
[qemu]: https://www.qemu.org/

快照 [20230714] 将 [redis] 更新至 7.0.12，解决了两个 CVE。[CVE-2022-24834] 与可执行各种操作的 Lua 脚本有关。该漏洞允许特制的 Lua 脚本在 cjson 库中触发[堆溢出]。另一个漏洞 [CVE-2023-36824] 与从命令和参数列表中提取键名有关，在某些情况下，提取过程也可能触发堆溢出。[ibus-table] 1.17.1 更新了翻译和函数 `get_active_window_xprop()`，正如 [Fedora 已解决的问题]所指出的，函数 `get_active_window_xprop()` 预计会返回空值。快照添加了对 [Python] 3.12 的支持，并在 [python311-pyparsing] 3.1.0 更新中更新了与 railroad-diagrams 软件包的兼容性。Netfilter 库 [libnftnl] 1.2.6 引入了路由表的新表达式，[GTK4] 地图部件 [libshumate] 1.0.4 更改了动画中的下载过程。

[20230714]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JG7QUZZTXFYX3V75TXGDZ3IBRH4MR4FD/
[redis]: https://redis.io/
[CVE-2022-24834]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-24834
[堆溢出]: https://en.wikipedia.org/wiki/Heap_overflow
[CVE-2023-36824]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-36824
[ibus-table]: https://github.com/kaio/ibus-table
[Fedora 已解决的问题]: https://bugzilla.redhat.com/show_bug.cgi?id=2215466
[python]: https://www.python.org/
[python311-pyparsing]: https://pypi.org/project/pyparsing/
[libnftnl]: https://netfilter.org/projects/libnftnl/
[GTK4]: https://www.gtk.org/
[libshumate]: https://wiki.gnome.org/Projects/libshumate

快照 [20230713] 中没有软件包收到新版本，但对 [audacity] 进行了小改动，更新了 [RISC-V] 架构的约束条件。[glibc] 软件包也进行了修改，以提高其功能和可靠性。此外，快照还对软件包进行了修改，使其与最新的 [GCC] 12 版本兼容，这对本周晚些时候的构建很有帮助。快照还对 [libguestfs] 软件包进行了修改，以解决查找 [supermin] 工具时遇到的问题。

[20230713]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/J7QLLSKGUM3PQLNODZAERS6B6ZJBYW47/
[audacity]: https://www.audacityteam.org/
[RISC-V]: https://riscv.org/
[GCC]: https://gcc.gnu.org/
[glibc]: https://www.gnu.org/software/libc/
[libguestfs]: https://github.com/libguestfs/libguestfs
[supermin]: https://github.com/libguestfs/supermin

------

原文：[Tumbleweed Update Highlights Redis, HarfBuzz Changes](https://news.opensuse.org/2023/07/21/tw-up-highlights-redis-harfbuzz-changes/)，作者：Douglas DeMaio