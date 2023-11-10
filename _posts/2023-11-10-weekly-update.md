---
author: Poplar at twilight
date: 2023-11-10 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: LLVM 和 VLC 在 Tumbleweed 中更新
image: /assets/posts/2023-11/llvm.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

在本周繁忙的 [Hack Week] 期间，[openSUSE] [Tumbleweed] 仍然设法发布了四个快照。

[Hack Week]: https://hackweek.opensuse.org/
[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

本周人们将收到 [LLVM]、[Linux 内核固件]、[VLC] 和 [fwupd] 等软件包的更新。

[LLVM]: https://llvm.org/
[Linux 内核固件]: https://www.kernel.org/
[VLC]: https://www.videolan.org/vlc/index.html
[fwupd]: https://fwupd.org/

快照 [20231108] 发布了 [kernel-firmware][Linux 内核固件] 20231107，增强了各种硬件，其中包括了针对 AX201、AX203、AX210、AX211 等多种设备的[英特尔]蓝牙固件更新。[sqlite3] 3.44.0 的更新添加了 `string_agg()`、`concat()` 和 `concat_ws()` 等聚合函数，这与其他 SQL 项目保持了兼容性。一些错误处理表语句得到了改进，有助于更直接的错误识别过程。数据压缩包 [brotli] 更新至 1.1.0，构建过程现在包含最佳标志并引入了新的  `--dictionary` 命令行选项。另一个要更新的软件包是 [libgusb] 0.4.8，它引入了新的 `busy` 设备错误代码，增强了其更有效地处理设备错误的能力。

[20231108]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/CI74LQRORMLGR5D473Y4BYWUJFBYBQKF/
[英特尔]: https://www.intel.com/
[sqlite3]: https://www.sqlite.org/index.html
[libgusb]: https://github.com/hughsie/libgusb
[brotli]: https://github.com/google/brotli

快照 [20231107] 将 Linux 蓝牙协议栈 [bluez] 更新至 5.70 版本。此更新修复了与通用属性配置文件（[GATT]）确认相关的问题，并引入了对媒体独立命令协议配置文件和网格独立控制服务的支持，同时添加了补丁以解决与游戏控制器配对时出现的回退问题。[gupnp] 1.6.6 的更新提高了自省期间处理异常格式的恢复能力，并添加了用于在 `ServiceProxy` 中创建操作的新 [API] 接口。它还解决了内存泄漏问题。快照更新了 [llvm17] 17.0.4，以确保与 17.0.0 版本的兼容性，并保持 API 和 [ABI] 的一致性。该软件包在 `libomp*-devel` 中包含了 `libomptarget.devicertl.a`，用于实现关键的 GPU 卸载功能。快照中还更新了其他一些软件包。

[GATT]: https://www.microchipdeveloper.com/wireless:ble-gatt-overview
[20231107]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WU2DHUIJXE5AIH7GQHYBOAZFMEEYEUDP/
[bluez]: http://www.bluez.org/
[gupnp]: https://github.com/GNOME/gupnp
[llvm17]: https://llvm.org/
[API]: https://en.wikipedia.org/wiki/API
[ABI]: https://en.wikipedia.org/wiki/Application_binary_interface

快照 [20231106] 通过 [Weblate] 对 [yast2-trans] 更新了斯洛伐克语、捷克语、荷兰语、加泰罗尼亚语、日语和印度尼西亚语等语言的翻译。yast2-trans 还引入了用于存储、安装和更新等文本域的新 POT 文件。[jasper] 4.1.0 的更新引入了对通过 [WASI] 支持为 [WebAssembly] 目标构建各种 JasPer 应用程序的支持。此更新还解决了[整数溢出]错误。快照还更新了一些其他软件包，其中包括 openSUSE 的用于管理 [systemd]-boot [sdbootutil] 的工具。此次 git+ 更新重点是增强 snapper hooks 中的 `sdboot`、使用特定快照安装命令以及改进 RPM scriptlet 中 sdbootutil 的行为。

[20231106]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JDNOBC5W6QWRXKZDI2FKUILK75RL3KSA/
[Weblate]: https://weblate.org/
[yast2-trans]: https://software.opensuse.org/package/yast2-trans
[WASI]: https://wasi.dev/
[WebAssembly]: https://webassembly.org/
[整数溢出]: https://en.wikipedia.org/wiki/Integer_overflow
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[sdbootutil]: https://github.com/openSUSE/sdbootutil
[jasper]: https://community.jaspersoft.com/

快照 [20231105] 更新了 DBus 接口上的超薄层——[fwupd]。fwupd 1.9.7 添加了一些附加内容，例如元数据中的子设备要求、对 Logitech Rally 系统设备的新硬件支持。该更新为 BIOS 封装更新添加了新的安全属性，并扩展了对解析扩展显示识别数据和简洁软件标识符有效负载部分的支持。[VLC] 3.0.20 的更新主要集中在错误修复和改进。此次更新有一些显着的变化，例如解决与某些旧版本 AMD 驱动程序相关的崩溃问题，以及修复双击鼠标滚轮时的事件传播问题。[git] 2.42.1 的更新解决了与 `git diff` 中的退出代码处理相关的问题，并改进了 `rebase -i` 在命令因冲突更改而中断的情况下的行为。其他一些软件包（例如 [openldap2] 2.6.6 和 [redis] 7.2.3）与几个 [RubyGems] 软件包一起更新，其中 [ruby​​gem-pairing_heap] 从 1.0.0 更新到 3.0.1。

[20231105]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/R6TMI2GFWCKKO4NAG6FSTIKXXKTI2AP6/
[git]: https://github.com/git
[redis]: https://redis.io/
[openldap2]: https://www.openldap.org/
[ruby​​gem-pairing_heap]: https://rubygems.org/gems/pairing_heap
[RubyGems]: https://rubygems.org/

------

原文：[LLVM, VLC updates in Tumbleweed](https://news.opensuse.org/2023/11/10/llvm-vlc-up-in-tw/)，作者：Douglas DeMaio