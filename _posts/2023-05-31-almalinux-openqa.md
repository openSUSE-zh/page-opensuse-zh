---
author: Hanjingxue Boling
date: 2023-05-31 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: AlmaLinux 为 OpenQA 项目做出贡献，增加了额外的架构支持和新功能
image: /assets/posts/2023-05/aqa.png
categories:
- 社区新闻
tags:
- OpenQA
- 翻译作品
- 官方新闻
---

德国纽伦堡（2023 年 5 月 30 日）——开源项目和贡献通过使全世界的人之间的交流和合作，带来了显着的技术进步。

这方面的一个例子是 [openQA] 测试工具，它使 Linux 生态系统集体受益。

[openQA]: http://open.qa/

openQA 于 [2011] 年由 [openSUSE] 社区发起，至今仍在积极发展，已被 Fedora、Debian、Kali Linux、Qubes OS、GNOME 和 KDE 等项目[广泛使用]。最近，作为可靠且稳定的 RHEL 克隆的 [AlmaLinux] 加入了该小组，并且 AlmaLinux 社区为 openQA 做出了贡献，展示了互补的开源项目如何协同工作。

[openSUSE]: https://www.opensuse.org/
[2011]: https://news.opensuse.org/2011/10/11/opensuse-announces-first-public-release-of-openqa/
[广泛使用]: https://en.opensuse.org/openSUSE:OpenQA/Partners
[AlmaLinux]: https://almalinux.org/

根据社区帖子：“为了向我们的用户保证我们非常认真地对待测试并致力于提供尽可能最好的体验，我们已经实施了 openQA 工具来自动测试所有支持架构的 AlmaLinux 操作系统，”

“我要感谢 AlmaLinux 的这些贡献！”openSUSE zSystems 维护者兼[开放大型机项目][omp] Linux 发行版工作组（联合）主席 Sarah Julia Kriesch 说，“除了 openSUSE/SUSE，openQA 已经被 Fedora 和 Debian 使用。共同努力并改进我们的测试是 Linux for s390x 协作维护的一部分。”

[omp]: https://www.openmainframeproject.org/

“现在通过为 RedHat KVM 启用测试，我们还可以在 Fedora 和 RHEL 上测试所有其他 Linux 发行版，”她说，“这也是一个测试扩展，我们都可以从中受益。openQA 是一个开源项目，可用于每个操作系统的自动化测试。”

简而言之，openQA 使用虚拟机来重现预定义的过程，并根据它预期的输出检查实际输出。openQA 可用的架构有 Intel/AMD (x86-64)、ARM64 (aarch64)、IBM PowerPC (ppc64le) 和 IBM Z (s390x)。

将[企业 Linux 支持][els]添加到 QEMU 后端的拉取请求开始了 AlmaLinux 对 openQA 的贡献，预计社区会有更多贡献。像 Kriesch 提到的那样更新 QEMU-KVM 选项，使它们与 RHEL 的 QEMU-KVM 构建兼容，以及使 QEMU 后端与 s390x 一起工作的几个更新都为开发者带来了变化。

[els]: https://hackmd.io/m6yHTPphQqadnSHfcBf1mg

"扩大对像 openQA 这样的质量测试软件的架构支持真的很好，看到这种支持已经被 AlmaLinux 项目投入使用就更好了。”IBM zSystems 和 LinuxONE 的开源软件项目办公室以及开放主机项目的 Linux 发行工作组（联合）主席 Elizabeth K. Joseph 说道。

在开发过程中，AlmaLinux 的贡献者经历了调整 openQA 以适应 RHEL 虚拟化堆栈，并在 AlmaLinux 9 的 ppc64le 架构中恢复 KVM 支持的过程。它已从 RHEL9 中删除，因此不能成为 AlmaLinux 9 的一部分（因为 AlmaLinux 承诺是 RHEL 的 1:1 二进制克隆），但修改后的内核和 qemu-kvm 包现在是 AlmaLinux 的 openQA 仓库的一部分。

AlmaLinux 社区还在 openQA 中实现了对 s390x 架构的虚拟化支持。负责 openQA 改进的 AlmaLinux 操作系统工程师 Elkhan Mammadli 即将提供更多关于开发过程和 AlmaLinux 团队所克服的挑战的细节。

Elkhan 向 openQA 的开发者表示感谢，称这是一个很棒的项目，并感谢 Fedora 项目提供的测试和灵感，同时还感谢了 Sam Thursfield；他在 FOSDEM 上做了关于[使用 openQA 测试 GNOME OS Nightly 构建][gnome-night]的[演讲][fosdem]，这对 Elkhan 使用和贡献这个测试工具起到了很大作用。

[fosdem]: https://youtu.be/a8LmqhwpVvg
[gnome-night]: https://fosdem.org/2023/schedule/event/openqa_for_gnome/

该团队准备了一份包含更多细节的 openQA 用户指南，并通过帮助 AlmaLinux 定义针对开发者需求的测试套件来邀请大家做出贡献。

在 Richard Brown [为 Fedora 编写了一个测试套件][2014]之后，openQA 的使用范围从 2014 年开始扩大。他在 2015 年 openSUSE 大会和其他活动中的演讲逐渐帮助扩大其在整个开源生态系统中的使用。

[2014]: https://rootco.de/2014-12-23-testing-fedora-with-openqa/

------

原文：[AlmaLinux Contributes to OpenQA Project, Adds Additional Architectures Support, New Features](https://news.opensuse.org/2023/05/30/almalinux-contributes-to-openqa-addes-support-features/)，作者：Douglas DeMaio & Andrew Lukoshko
