---
author: Hanjingxue Boling
date: 2022-02-04 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: 版本控制工具和 IRC 客户端在 Tumbleweed 中更新
image: /assets/posts/2022-02/hexchat.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

openSUSE Tumbleweed 本周发布了四个快照，更新了 Internet Relay Chat 客户端和 Ruby 新的默认版本。

版本控制包 [git](https://github.com/git) 在快照 [20220201](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/YWNQRTG5H47AML2HJKKIBFE7ML44YRUE/) 中更新。git 2.35.1 版本现在使用 `--show-stash` 显示存储条目的数量，就像正常输出一样。`git grep` 使用的调色板已更新以匹配 [GNU](https://www.gnu.org/) `grep`。[Mozilla Firefox](https://www.mozilla.org/) 96.0.3 更新修复了允许在某些搜索[遥测](https://en.wikipedia.org/wiki/Telemetry)中提交意外数据的问题。 Google 的数据交换格式 [protobuf](https://developers.google.com/protocol-buffers/) 3.19.4 修复了当消息中的可选字段数量是 32 的精确倍数时发生的数据丢失错误；这影响了快照中的 [Ruby](https://www.ruby-lang.org/en/) 和 [php](https://www.php.net/)。快照中要更新的其他包是 [yast](https://yast.opensuse.org/) 4.4.43、[python-fsspec](https://pypi.org/project/fsspec/) 2022.1.0、[suse-module-tools](https://github.com/openSUSE/suse-module-tools) 16.0.19) 和已转换为非对称通信的包容性命名的 [yast2-network](https://github.com/yast/yast-network) 4.4.35。

[IRC](https://en.wikipedia.org/wiki/Internet_Relay_Chat) 客户端 [hexchat](https://github.com/hexchat/hexchat) 是快照 [20220131](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/65GJNT2PZQPBH5XPITG6O6W4TH2KRXFC/) 中更新的单个包。hexchat 2.16.0 版本更新了网络列表，并将 [Libera.Chat](https://libera.chat/) 作为默认值。聊天客户端还修复了各种解析问题并增加了对~~删除线格式~~的支持。

快照 [20220130](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/HRHXQPD2YDB63GUHTJNKWEXRESZ7QRJW/) 更新 [pipewire](https://pipewire.org/) 0.3.44；这个音频和视频包更改了一些属性，可以将缓冲区大小配置为大于 8192，这是 [JACK](https://jackaudio.org/) 应用程序使用硬编码的限制。该软件包还可以在没有会话管理器的情况下运行最小的 [PipeWire](https://pipewire.org/) 服务器，足以运行 JACK 客户端。[Ruby](https://www.ruby-lang.org/en/) 默认版本已更新至 3.1 版。该版本带来了改进的调试性能，支持远程调试并合并了 YJIT，这是 [Shopify](https://www.shopify.com/) 开发的新的进程内[即时编译器](https://en.wikipedia.org/wiki/Just-in-time_compilation)。快照中的 [Salt 3004](https://docs.saltproject.io/en/master/topics/releases/3004.html) 带来了新功能。像 [MicroOS](https://microos.opensuse.org/) 这样的事务性系统的新模块带来了挑战，然而 Salt 3004 通过两个新模块， `transactional_update` 和 `rebootmgr`，以及一个新的执行器 `transactional_update` 支持[原子性](https://en.wikipedia.org/wiki/Atomicity_(database_systems))系统；这些模块将有助于透明地对待事务性系统。[glib2](https://wiki.gnome.org/Projects/GLib) 2.70.3 更新修复了在 [btrfs](https://btrfs.wiki.kernel.org/index.php/Main_Page) 上保存文件时由于缺少 [fsync](https://man7.org/linux/man-pages/man2/fdatasync.2.html) 而导致的潜在数据丢失。快照中要更新的其他软件包包括 [snapper](http://snapper.io/) 0.9.1、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.78、[bolt](https://gitlab.freedesktop.org/bolt/bolt) 0.9.2 和 [freeipmi](https://www.gnu.org/software/freeipmi/) 1.6.9 等。

快照 [20220128](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WUETGRQZC6LW4NZZU2IM3IUL5WI5HS4I/) 更新了 [libstorage-ng](https://github.com/openSUSE/libstorage-ng)；该更新提供了巴西葡萄牙语的翻译。本周初还更新了 [protobuf](https://developers.google.com/protocol-buffers/) 3.19.3 版本，改进了解析性能并对齐了构建包的依赖处理最佳实践。网络和硬件实用程序包 [ethtool](https://mirrors.edge.kernel.org/pub/software/network/ethtool/) 5.16 添加了一些新功能，例如使用内存映射来解析模块 [EEPROM](https://en.wikipedia.org/wiki/EEPROM)，并修复了使用 `--show-fec` 显示的 [FEC](https://en.wikipedia.org/wiki/Error_correction_code#Forward_error_correction) 模式的转储。[sendmail](https://www.proofpoint.com/us/products/email-protection/open-source-email-solution) 8.17.1 包解决了几个潜在的内存泄漏和其他与错误处理相关的类似问题。[PipeWire](https://pipewire.org/) 的策略管理器包 [wireplumber](https://pipewire.pages.freedesktop.org/wireplumber/) 0.4.7 修复了导致默认音频源选择延迟的回归，并修复了影响回声消除 pipewire 模块的回归。快照中还更新了几个 [YaST](https://yast.opensuse.org/) 和 [RubyGem](https://rubygems.org/) 包。

------

原文：[Version Control Tool, IRC Client Update in Tumbleweed](https://news.opensuse.org/2022/02/04/vc-tool-irc-client-update-in-tw/)，作者：Douglas DeMaio

