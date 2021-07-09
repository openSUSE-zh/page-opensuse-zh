---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-07-09 21:10:00 +0800
layout: post
license: CC-BY-SA-3.0
title: RubyGems 和 systemd 在 Tumbleweed 中更新
image: /assets/posts/2021-07/RubyGems 和 systemd 在 Tumbleweed 中更新.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- RubyGems
- systemd
---

RubyGems 和 systemd 在 Tumbleweed 中更新。

自上次更新以来，总共有四个 openSUSE Tumbleweed 快照被发布。

三个较小的快照，包括一个新的 [systemd](https://freedesktop.org/wiki/Software/systemd/) 更新，和一个大的快照，包括一堆 [RubyGems](https://rubygems.org/) 更新，为滚动发布的用户提供了几个上游软件包。

终端用户可以使用的最新快照是 [20210703](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/QLPJGOTMXU456LOE7QN6ROLOG4SI3G3S/)，它只带来了两个更新包。第一个软件包的更新是针对数据压缩库 [zlib-ng-compat](https://github.com/zlib-ng/zlib-ng) 的；更新到 2.0.5 版本，对小数据块做了一些小的改进，并修复了 [AArch64](https://en.wikipedia.org/wiki/AArch64) 上的膨胀损坏。[GNU Compiler Collection](https://gcc.gnu.org/) 11 更新了 headbranch，并修复了一些遗留的 [Fortran](https://en.wikipedia.org/wiki/Fortran) 代码，这是一种通用的，已编译的命令式编程语言，在 20 世纪 50 年代由 [IBM](https://www.ibm.com/) 开发，用于数字计算和科学计算。

最大的快照是 [20210702](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/O2C3ONUNNZFPUAYP4DUL7TGBIA72UP7W/) 。该快照主要由 RubyGems 构成。[rubygem-rails](https://rubygems.org/gems/rails/) 6.0.4 和 5.2.6 都已更新。6.0.4 版本修复了 `ActiveSupport::Cache::RedisCacheStore` 中的一个问题，即没有向 `read_multi` 传递选项，这导致 `fetch_multi` 不能正常工作。4.6.0 版本的 [rubygem-commander](https://rubygems.org/gems/commander)，它连接了终端相关的库，放弃了对 [Ruby](https://www.ruby-lang.org/en/) 2.4 的支持，并修复了 Ruby 3.0 上 `SortedSet` 的错误。用于捆绑应用的补丁级验证包 [rubygem-bundler-audit](https://rubygems.org/gems/bundler-audit) 0.8.0 增加了一些配置，现在支持 `--database` 选项，用于指定替代 `ruby-advisory-db` 副本的路径。[PipeWire](https://pipewire.org/) 更新到了 0.3.31 版，并为 [Advanced Linux Sound Architecture-Library](https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture) 1.2.5 提供了一些修复，蓝牙现在使用硬件数据库来禁用列出设备上的非工作功能。[GNOME](https://www.gnome.org/) 的 IRC 应用 [Polari](https://wiki.gnome.org/Apps/Polari) 更新到了 40.0 版，它将 [Libera.Chat](https://libera.chat/) 加入了预定义网络。其他在快照中要更新的软件包是 GNOME 的库，有很多用于手机的 GTK+ 部件 [libhandy 1.2.3](https://gitlab.gnome.org/GNOME/libhandy)，文本编辑器 [vim](https://www.vim.org/) 8.2.3075，[sendmail](http://ftp.sendmail.org/snapshots/) 8.17.0.3 和 openSUSE 的 [libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.19 软件包。

更新频率不高的 systemd 软件包在快照 [20210701](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DC754T4KB6HRILY5KCBFVFH5XTRPT4LK/) 中到来。从版本 246.13 升级至 248.3，带来了一个新的 [systemd-sysext](https://www.freedesktop.org/software/systemd/man/systemd-sysext.html) 工具，可以用来合并、取消合并、列出和刷新系统扩展层次结构。新版本引入了系统扩展映像（system extension images）的概念，现在允许在系统安装过程中覆盖 sysusers 配置文件，这些文件是由 systemd rpms 提供的。如果 systemd 被安装到 sysuser-shadow，3.1 版的 [sysuser-tools](https://software.opensuse.org/package/sysuser-tools) 会增加了对那些大于或等于 systemd 238 的依赖。[YaST](https://yast.opensuse.org/) 跳了几个版本到 4.4.14，并增加了一个 [RISC-V](https://en.wikipedia.org/wiki/RISC-V) 64 位架构的助手。远程桌面客户端软件包 [remmina](https://remmina.org/) 1.4.19 为 [remmina snapcraft](https://snapcraft.io/remmina) 增加了一个进程控制，并做了一些用户界面的改进。其他在快照中更新的软件包有蓝牙工具包 [blueberry](https://software.opensuse.org/package/blueberry) 1.4.4 和 [python-gst](https://github.com/GStreamer/gst-python) 1.18.4。

就在上周更新前不久发布的快照是快照 [20210629](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ZZEP5NMHMXWLIGAJOE2DM7QBADM3QZLQ/)。这个快照更新了四个 RubyGems 软件包。这些软件包包括 [rubygem-virtus 2.0.0](https://rubygems.org/gems/virtus/versions/2.0.0)，它增加了一个新的方法，并用一个内部 virtus/equalizer 替换了一个均衡器；以及 [rubygem-webpacker 5.4.0](https://rubygems.org/gems/webpacker)，它增加了对 [Yarn 2](https://yarnpkg.com/) 包管理器的实验性支持。[rubygem-tzinfo-0 0.3.60](https://rubygems.org/gems/tzinfo/versions/0.3.60) 和 [rubygem-websocket-driver 0.7.5](https://rubygems.org/gems/websocket-driver) 也都包含在快照中。针对重复性劳损的 [KDE](https://kde.org/) 软件包名为 [rsibreak](https://userbase.kde.org/RSIBreak)，在更新到 0.12.14 时清理了规范文件、镜像代码并做了一些翻译方面的改进；该软件包帮助人们在电脑前坐得太久时定期休息。

------

原文：[Tumbleweed Gets RubyGems Updates, New systemd](https://news.opensuse.org/2021/07/09/tw-gets-rubygems-update-new-systemd/)，作者：Douglas DeMaio