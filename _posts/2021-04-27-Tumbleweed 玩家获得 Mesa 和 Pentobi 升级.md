---
author: Hanjingxue Boling
date: 2021-04-27 00:24:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 玩家获得 Mesa 和 Pentobi 升级
image: /assets/posts/2021-04/Tumbleweed 玩家获得 Mesa 和 Pentobi 升级-图片.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

使用 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 的玩家在滚动发布中至少有两个软件包的更新，它们增强了系统的性能并提供了新的功能。

3D图形库 [Mesa](https://www.mesa3d.org/) 和竞争的计算 [Pentobi](https://pentobi.sourceforge.io/) 软件包都在一个单独的快照中登陆。到目前为止，本周已经有四个 Tumbleweed 快照发布。

快照 [20210420](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VMQENQKVLYKYSO5LKDVHUUW3GA43YSDD/) 带来了近十种软件包的更新，其中包括 [GNU 编译器集合](https://gcc.gnu.org/) 10.3.0 的更新。更新后的 GCC 禁用了[并行线程执行、nvptx](https://en.wikipedia.org/wiki/Parallel_Thread_Execution)、[AArch64](https://en.wikipedia.org/wiki/AArch64)的卸载，[ffmpeg-4](https://www.ffmpeg.org/) 4.4 改进了对 AV1 的支持，以及单色编码。几个 YaST 软件包被更新。更具体地说，yast2-installation 更新到 4.4.4 ，删除了一些系统目录冲突，并对 spec-cleaner 做了一些修改。在快照中需要更新的其他软件包有 CPU 平衡器 [irqbalance](https://github.com/Irqbalance/irqbalance) 1.8.0、 [kdenetwork-filesharing 20.12.3](https://kde.org/announcements/releases/20.12.3) 和 [rpm](https://rpm.org/) 4.16.1.3。

[Mesa](https://www.mesa3d.org/) 的 21.0.2 版本和 Mesa-drivers 已添加至快照 [20210418](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/W7KFVWTTFJXTPEMFNKJLPMNFZGLPU7MJ/) 中。在支持稀疏内存的 Radeon Vulkan（RADV）驱动方面有一些优化和补充。由于 swrast 驱动已经从 Mesa 中移除，此次更新还将 [osmesa](https://docs.mesa3d.org/osmesa.html) 构建转移到了 Mesa-drivers 。快速流式 XML 解析器 [expat](https://libexpat.github.io/) 2.3.0 有一个错误修复，不再触发未定义行为。[graphene](https://ebassi.github.io/graphene/) 1.10.6 是一个薄层的图形数据类型，在 x86_64 上启用了 [Streaming SIMD Extensions 2](https://en.wikipedia.org/wiki/SSE2) 。[iso-code](https://salsa.debian.org/iso-codes-team/iso-codes) 4.6.0 的更新完成了几处翻译。谷歌的正则表达式库 [re2](https://github.com/google/re2) 有两个月的更新，其中一个让它更容易换上可扩展的 reader-writer 锁。Linux 内核从 5.11.12 更新到 5.11.15，还有几个用于 [x86_64](https://en.wikipedia.org/wiki/X86-64) 的 [KVM](https://www.linux-kvm.org/page/Main_Page)。在快照中需要更新的其他软件包有 [libxcrypt](https://github.com/besser82/libxcrypt/) 4.4.19、[librsvg](https://gitlab.gnome.org/GNOME/librsvg) 2.50.4 和 [pipewire](https://github.com/PipeWire/pipewire) 0.3.25。

棋牌游戏玩家在快照 20210417 中收到了 [Pentobi](https://pentobi.sourceforge.io/) 的一个重要版本更新。新的 pentobi 19.0 版本用外部浏览器显示手册，取消了对 Qt WebView 库的依赖。不再需要 Qt SVG 库，也不再支持以 UTF-8 以外的编码加载游戏文件。快照中唯一的其他软件包是 [rubygem-tmuxinator](https://rubygems.org/gems/tmuxinator/versions/2.0.3) 2.0.3，它有一个小的更新，增加了对终端复用器 tmux 3.2 的支持。

本周开始的快照 [20210415](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ESXPANB4H5LJ67RZE5DYUTOAD7J5RI7H/) 更新了 [Mozilla Thunderbird](https://www.thunderbird.net/) 78.9.1，它解决了一个[常见的漏洞和暴露](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures)；该漏洞会导致在导入一个精心制作的 OpenPGP 密钥后，造成无法发送加密的 OpenPGP 电子邮件。PDF 渲染器 [poppler](https://poppler.freedesktop.org/) 21.04.0 修复了单词排序和具有畸形签名的文件中的崩溃。网络开发包 [perl-Mojolicious](https://mojolicious.org/) 9.17 废弃了一些格式参数，邮件服务器包 [postfix](http://www.postfix.org/) 3.5.10 对之前的版本进行了安全修复，该版本在 [smtp(8)](http://www.postfix.org/lmtp.8.html) 到 [tlsproxy(8)](http://www.postfix.org/tlsproxy.8.html) 的握手过程中存在一些内部输入和输出错误。
