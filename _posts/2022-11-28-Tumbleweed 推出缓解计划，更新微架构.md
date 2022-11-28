---
author: Hanjingxue Boling
date: 2022-11-28 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Tumbleweed 推出缓解计划，更新微架构
image: /assets/posts/2022-11/tweet.png
categories:
- 社区新闻
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周，一项关于[微架构级别](https://en.wikipedia.org/wiki/X86-64#Microarchitecture_levels)变更的缓解计划和关于将 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 推进到 x86-64-v2 [微架构](https://en.wikipedia.org/wiki/X86-64#Microarchitecture_levels)的信息，为 [openSUSE 项目](https://www.opensuse.org/)的重大进展拉开了序幕。

[Tumbleweed](https://get.opensuse.org/tumbleweed/) 和 [openSUSE 的其他分支](https://get.opensuse.org/)是为旧的 x86-64-v1 硬件构建的，过渡到 x86-64-v2 需要社区协力支持无法将硬件更新到 x86-64-v2 [微架构](https://en.wikipedia.org/wiki/X86-64#Microarchitecture_levels)的用户。

Tumbleweed 发布经理 Dominique Leuenberger 在寄给 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4OIMNHRDMSRLUNZRA5OPHMVSPXRRQVSB/)的电子邮件中写道：“openSUSE Factory 存储库的目标架构将更新至 x86-64-v2。”一个新的存储库“将与 openSUSE Factory 存储库一同存在。此更改对于符合 [SUSE 的 factory 优先政策](https://opensource.suse.com/legal/policy)以与项目发起人的开发工作保持一致是必要的。”

这个为 x86-64-v1 用户设计的新存储库看起来将被命名为 openSUSE:Factory:LegacyX86，并且需要志愿者来维护该存储库的各个方面。

“我将帮助执行初始设置（包括 openQA），但一旦运行，我就不再碰它了（除非存储库的用户寻求特定帮助），”Leuenberger 在回复中写道。“我期待离线 ISO 安装镜像的发布，但我不期待有可用的 Live ISO。”

参加 openSUSE 的公开[发布工程会议](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/EDJ4ST6IYDVZ7ZY4VB7LBU3NQBKKADE5/)的人们讨论了这个话题并提出了一个行动计划。

讨论并达成一致的解决方案是将原有的 Tumbleweed 主存储库的目标架构更新至 x86-64-v2，[就像 ALP 将在其发布时一样](https://news.opensuse.org/2022/09/26/alp-architecture-baselevel-x86_64-v2/)。[i586](https://en.wikipedia.org/wiki/Pentium_(original)) 支持将从存储库中移除，仅保留特定软件包所需的 32 位软件包，但完整的 32 位存储库将不复存在。当存储库迁移到 x86-64-v2 时，除了 `zypper dup` 之外，用户无需执行任何操作，但预计会收到项目维护人员发送有关此更改的通知。

对于保留在 x86-64-v1 上的老式系统的用户，需要采取措施。

对于停留在基于 x86-64-v1 架构的老式系统的用户，需要手动将主存储库的地址从 `download.opensuse.org/tumbleweed/repo/oss` 变更为 `download.opensuse.org/ports/legacyx86/tumblewed/repo/oss`。

“通过这个解决方案和更新的 CPU 指令，我们为使用比 x86-64-v1 更新的机器的用户提供了开发优势，”他写道。 “同时，这也为用户提供了一条在可能没有所需硬件的机器上仍然运行 Tumbleweed 的途径。”

要检查运行 Tumbleweed 的硬件，用户可以在终端中使用以下命令：

```
/lib64/ld-linux-x86-64.so.2 --help
```

命令输出应该是如下文本：

```
x86-64-v4

x86-64-v3 (supported, searched)

x86-64-v2 (supported, searched)
```

最近 openSUSE 的 [Twitter 账户](https://twitter.com/openSUSE)进行的一项民意调查发现，51% 的受访者了解[微架构级别](https://en.wikipedia.org/wiki/X86-64#Microarchitecture_levels)以及它为开发人员和基础设施优化带来的好处。

有关更多信息，请关注 [openSUSE Factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4OIMNHRDMSRLUNZRA5OPHMVSPXRRQVSB/)中的讨论。

------

原文：[Tumbleweed to Roll Out Mitigation Plan, Advance Microarchitecture](https://news.opensuse.org/2022/11/28/tw-to-roll-out-mitigation-plan-advance-microarchitecture/)，作者：Douglas DeMaio
