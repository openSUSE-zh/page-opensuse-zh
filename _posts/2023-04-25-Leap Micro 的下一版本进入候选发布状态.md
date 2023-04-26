---
author: Hanjingxue Boling
date: 2023-04-25 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Leap Micro 的下一版本进入候选发布状态
image: /assets/posts/2023-04/lmrc.png
categories:
- 更新通告
tags:
- Leap Micro
- 翻译作品
- 官方新闻
---

openSUSE 项目很高兴地宣布其现代轻量级主机操作系统 [Leap Micro 5.4](https://get.opensuse.org/leapmicro/5.4/) 已进入候选发布阶段。

上一个测试版为 Cockpit 引入了一个新的 SELinux 模块。这个版本中，新安装的 SELinux 的默认设置已经从 permissive 模式改为 enforcing 模式，你可以切换到 permissive 模式或禁用。

Leap Micro 5.4 RC 将 Podman 更新至 4.3.1 版本。这个新版本带来了许多新功能和一些改进，例如更好地支持多个网络中的容器、更好的 IPv6 支持和改进的性能。

[发行说明](https://www.suse.com/releasenotes/x86_64/SLE-Micro/5.4/index.html#general-podman-4-3)中有一条有关于 Podman，建议人们了解的警告信息。

> 在测试 Podman 4 和新的网络堆栈之前，你必须销毁当前所有的容器、镜像和网络。你必须在私有 registry 中导出/保存任何导入容器或镜像，或确保你的 Dockerfile 可用于重建，以及你的脚本/playbooks/states 可用于重新应用任何设置、重新生成 secret 等。

这个超可靠、轻量级和不可变的操作系统在 [Cockpit](https://cockpit-project.org/) 中集成了 [Performance Co-Pilot](https://github.com/performancecopilot) 容器。该版本有新的 Cockpit 模块，但由于依赖项的数量，并不是所有的 Cockpit 模块都是原始镜像的一部分；有些需要另外安装。安装程序现在包括了能够在[联邦信息处理标准](https://en.wikipedia.org/wiki/Federal_Information_Processing_Standards)模式下运行的软件包。

Leap Micro 不提供图形用户界面或桌面版本，但用户可以使用 Cockpit 通过网络浏览器管理他们的主机操作系统。

新版本装载了适用于 [s390x](https://en.wikipedia.org/wiki/IBM_System/390) 的硬件加密加速软件包。内核实时修补仅适用于 [x86-64](https://en.wikipedia.org/wiki/X86-64) 和 s390x 架构。

Leap Micro 5.4 RC 基于 [SLE Micro](https://www.suse.com/products/micro/) 5.4 进行构建；后者基于 [SLE](https://www.suse.com/products/server/) 15 SP 4 更新进行构建。

此系统的用户应该知道 Leap Micro 不使用 zypper，而是使用 [transactional-update](https://github.com/openSUSE/transactional-update) 更新系统。

Leap Micro 可用于多种计算环境，如边缘、嵌入式和物联网部署。开发人员和专业人士可以构建和扩展用于航空航天、电信、汽车、国防、医疗保健、酒店、制造、数据库、网络服务器、机器人、区块链等领域的系统。

更多详细信息，请查阅[发行说明](https://www.suse.com/releasenotes/x86_64/SLE-Micro/5.4/index.html)。

大型开发团队可以通过尝试 Leap Micro 并过渡到 SUSE 的 SLE Micro 以进行扩展维护和认证，从而为其运营增加价值。

请前往 [get.opensuse.org](https://get.opensuse.org/) 下载并测试 ISO 文件。

------

原文：[Next Version of Leap Micro Reaches Release Candidate](https://news.opensuse.org/2023/04/25/next-v-leap-micro-reaches-rc/)，作者：Douglas DeMaio