---
author: Fangzhou Liu
date: 2025-10-12 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Leap 准备启航
image: /assets/posts/2025-10/air.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
- Leap
---

社区用户正为 [openSUSE Leap](https://get.opensuse.org/leap) 的下一个长期版本做准备，与此同时，他们也在踊跃分享 [openSUSE](https://get.opensuse.org/) 等 Linux 发行版如何为其项目或兴趣提供支持。

像 [Leap 16](https://get.opensuse.org/leap) 这样的版本可用于航空追踪，这也是该发行版的多个应用场景之一。

一位 openSUSE 用户在 [项目邮件列表](https://lists.opensuse.org/archives/list/project@lists.opensuse.org/thread/6EL3OTP7V7EKS5QZ35U6SSHY4Y6GCYJ7/) 上写道：“我自 2018 年起就开始向 FlightRadar24 提供数据，几年前又开始向 OpenSky Network 和 Plane Finder 发送数据。我的监测平均距离约为 170 海里。”

该用户名为 Malcolm，他在密西西比三角洲地区将 openSUSE 用作这些高科技空中交通监测系统的核心支柱。

[FlightRadar24](https://www.flightradar24.com/)、[OpenSky Network](https://opensky-network.org/) 和 [Plane Finder](https://planefinder.net/) 会从全球各地的 [ADS-B](https://en.wikipedia.org/wiki/Automatic_Dependent_Surveillance%E2%80%93Broadcast) 接收器收集并共享实时航空器数据，用户可借此在交互式地图上追踪航班。

Malcolm 使用搭载 [Intel Celeron J4125](https://www.intel.com/content/www/us/en/products/sku/197305/intel-celeron-processor-j4125-4m-cache-up-to-2-70-ghz/specifications.html) 处理器的迷你主机，搭配 26 英寸 ADS-B 天线、滤波器与放大器，并依托 openSUSE 的可靠性，每天能追踪超过 2,000 架航空器。

这套系统基于 x86_64 硬件运行，同时一台 [Raspberry Pi 3](https://www.raspberrypi.com/products/raspberry-pi-3-model-b/) 兼任 GPS 时间服务器，确保系统与本地网络保持同步。[systemd](https://github.com/systemd/systemd) 服务负责管理各追踪网络提供的各类软件包。Leap 版本的稳定性以及长期的维护与安全支持，使其成为用户部署和使用的理想发行版。

此类案例凸显了将影响 Leap 16 版本发布的各类应用场景。作为一款衔接社区驱动开发与企业级可用性的发行版，Leap 16 预计将服务于更广泛的使用场景。从物联网设备、实验室环境，到生产服务器及专业爱好者的定制化系统，Leap 16 标志着该发行版全新生命周期计划的开启。

openSUSE 项目成员正致力于展示人们如何使用 openSUSE，或计划如何采用 Leap 版本。若你有关于 Leap 16 的应用场景想要分享，可在 [项目邮件列表](https://lists.opensuse.org/archives/list/project@lists.opensuse.org/thread/6EL3OTP7V7EKS5QZ35U6SSHY4Y6GCYJ7/) 上发表评论。

用户还可通过 [survey.opensuse.org](https://survey.opensuse.org/) 平台，就 Leap 16 版本的发布提供反馈意见。

---
原文：[openSUSE Leap Ready for Liftoff](https://news.opensuse.org/2025/10/06/os-leap-ready-for-liftoff/)，作者：Douglas DeMaio
