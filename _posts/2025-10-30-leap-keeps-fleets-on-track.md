---
author: Fangzhou Liu
date: 2025-10-30 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Leap 助力车队跟踪车辆
image: /assets/posts/2025-10/island.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
- Leap
---
对于管理车队的公司而言，每一分钟都至关重要，而像 [openSUSE](https://get.opensuse.org/leap) 这样的 Linux 发行版则是此类运营的可靠支柱。

从印度尼西亚的安保巡逻到菲律宾的维修车辆，借助由 [openSUSE Leap](https://get.opensuse.org/leap) 提供支持的云平台，如 [Ntrack](https://ntrack.id/) 的 GPS 车辆跟踪系统，车队可以实现实时监控。

如 [Leap 16](https://get.opensuse.org/leap) 这样的版本可用于 GPS 车辆跟踪等场景，这也是该发行版的众多应用案例之一。

车辆跟踪系统处理来自 [Teltonika](https://www.teltonika-gps.com/)、[Concox](https://www.iconcox.com/)、[Atrack](https://www.atrack.com.tw/en) 等公司生产的第三方 GPS 物联网设备的原始数据。每个设备通过 3G、4G 和 5G 网络每分钟发送一次信号，形成持续的位置数据流。这些数据通过 [RabbitMQ](https://www.rabbitmq.com/) 进入队列，并存储在基于 [Leap](https://get.opensuse.org/leap) 服务器构建的 [PostgreSQL](https://www.postgresql.org/) 数据库集群中。

一位在[项目邮件列表](https://lists.opensuse.org/archives/list/project@lists.opensuse.org/thread/6EL3OTP7V7EKS5QZ35U6SSHY4Y6GCYJ7/)上分享其用例的开发人员表示：“它为数据库集群和系统监控提供了出色的支持，确保了数据层的可靠故障转移和可扩展性。该系统每秒处理 50 至 100 个数据包，而 openSUSE 保障了其稳定性。”

Ntrack 平台将这些数据包转化为车队运营商可采取行动的洞察数据。该平台基于 Leap 构建，提供实时跟踪、路线规划、驾驶员行为分析、地理围栏和报告等功能。

开发人员 Edwin 表示，这些应用案例已覆盖爪哇岛和巴厘岛的与私人安保相关的车队、菲律宾的电信维修车辆以及印度尼西亚各地的公司车辆。

诸如 Ntrack 之类的 GPS 跟踪系统，是该发行版为全球关键任务应用提供支持的又一例证；Leap 16 的延长生命周期提供了企业信赖其技术基础设施所需的可靠性和可升级性。

openSUSE 项目的成员正努力展示人们对 openSUSE 的使用方式。如果您有 Leap 16 的应用案例想要分享，请在[项目邮件列表](https://lists.opensuse.org/archives/list/project@lists.opensuse.org/thread/6EL3OTP7V7EKS5QZ35U6SSHY4Y6GCYJ7/)上发表评论。

---
原文：[Leap Keeps Fleets on Track](https://news.opensuse.org/2025/10/24/leap-keeps-fleets-on-track/)，作者：Douglas DeMaio
