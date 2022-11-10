---
author: Hanjingxue Boling
date: 2022-11-10 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Leap Micro 的候选发布版本现已公布
image: /assets/posts/2022-11/leapmicro.png
categories:
- 更新通告
tags:
- Leap Micro
- 翻译作品
- 官方新闻
---

[openSUSE](https://www.opensuse.org/) 的现代轻量级主机操作系统 [Leap Micro 5.3](https://get.opensuse.org/) 的候选版本现已在 [get.opensuse.org](https://get.opensuse.org/) 上提供。

该版本使 [NetworkManager](https://networkmanager.dev/) 作为默认的网络配置工具；[autoyast](https://github.com/yast/yast-autoinstallation) 确保了这一点。用户应该知道，只有在安装过程中启用了防火墙时，才会从 [ISO](https://en.wikipedia.org/wiki/Optical_disc_image) 安装 [firewalld](https://firewalld.org/)。

[Cockpit](https://cockpit-project.org/) 的新 [SELinux](https://github.com/SELinuxProject) 模块为用户排除配置故障提供了基本功能。

首次启动向导为用户提供了通过 [combustion](https://en.opensuse.org/Portal:MicroOS/Combustion)/[ignition](https://coreos.github.io/ignition/) 设置密码的替代方法，它允许格式化分区、配置用户以及写入常规文件、[systemd](https://freedesktop.org/wiki/Software/systemd/) 单元等。

此候选版本为 Leap Micro 引入了新生成的 [QEMU 写时复制](https://en.wikipedia.org/wiki/Qcow)镜像。

该版本基于 SUSE Linux Enterprise SUSE [(SLE) Micro 5.3](https://www.suse.com/download/sle-micro/)，基于 [SLE 15 Service Pack 4](https://www.suse.com/releasenotes/x86_64/SUSE-SLES/15-SP4/index.html) 更新进行构建。

从 SLE Micro 5.3 继承的一个已知问题是[缺少一个用户组](https://bugzilla.opensuse.org/show_bug.cgi?id=1204929)：`rpc:rpc`。[在启用 SELinux 的情况下启动时](https://www.suse.com/releasenotes/x86_64/SLE-Micro/5.3/index.html#issue-selinux-boot)，控制台上也会出现错误。

然而，这种超可靠、轻量级且不可变的操作系统可用于去中心化计算环境、边缘、嵌入式和物联网部署。

主机操作系统具有自动管理和修补功能，因此自动更新为用户提供了一个持久的可引导系统，用于他们的容器和虚拟化工作负载。

Leap Micro 的发布周期为六个月，因此其产品的生命周期将在第二次后续发布的时间范围内结束。这意味着 Leap Micro 5.4 将使 Leap Micro 5.2 进入 [EOL](https://en.wikipedia.org/wiki/End-of-life_product)，而 Leap Micro 5.5 将使 Leap Micro 5.3 版本 EOL。*在 Leap 5.4 发布后，[Leap Micro 5.2](https://get.opensuse.org/) 用户应升级到新版本或迁移到 [SLE Micro](https://www.suse.com/download/sle-micro/)，以获得长达四年的支持。

用户应该知道 Leap Micro 不使用 [zypper](https://en.opensuse.org/SDB:Zypper_usage)，而是使用 [transactional-update](https://opensuse.github.io/openSUSE-docs-revamped-temp/microos_getting_started/#transcational-update-default)。与 Leap Micro 相关的开发人员包之一是 [Podman](https://github.com/containers/podman/blob/main/RELEASE_NOTES.md#342)。Podman 为开发人员提供了在生产环境中使用 Podman 运行他们的应用程序的选项。

[Leap Micro](https://get.opensuse.org/leapmicro/5.3/) 与 [MicroOS](https://get.opensuse.org/microos/) 有相似之处，但 [Leap Micro](https://get.opensuse.org/leapmicro/) 不提供图形用户界面或桌面版本。但是，用户可以[使用 Cockpit 通过网络浏览器来管理他们的主机操作系统](https://youtu.be/uf5C5OMscDk)。Leap Micro 基于 [SUSE Linux Enterprise](https://www.suse.com/products/server/) 和 [Leap](https://get.opensuse.org/leap)，而并非与 [MicroOS](https://microos.opensuse.org/) 一样是基于 [Tumbleweed](https://get.opensuse.org/tumbleweed/) 的变体。

大型开发团队可以通过尝试 Leap Micro 并过渡到 SUSE 的 [SLE Micro](https://www.suse.com/download/sle-micro/) 来进行扩展维护和认证，从而为其运营增值。

开发人员和专业人士可以构建和扩展系统，用于航空航天、电信、汽车、国防、医疗保健、酒店、制造、数据库、Web 服务器、机器人、区块链等。

[Leap Micro 5.3 文档](https://www.suse.com/releasenotes/x86_64/SLE-Micro/5.3/index.html)可以帮助对运行这个现代操作系统版本有疑问的用户。

要下载 ISO 镜像，请访问 [get.opensuse.org](https://get.opensuse.org/)。

<sup>*<sup> <sup>这是一个预期的示例。版本号有时会发生变化。 这是提供连续编号系统作为示例。<sup>

------

原文：[Release Candidate of Leap Micro Now Available](https://news.opensuse.org/2022/11/09/rc-of-leapmicro-now-available/)，作者：Lubos Kocman & Douglas DeMaio