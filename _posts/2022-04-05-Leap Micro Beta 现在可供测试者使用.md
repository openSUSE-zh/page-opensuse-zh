---
author: Hanjingxue Boling
date: 2022-04-05 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Leap Micro Beta 现在可供测试者使用
image: /assets/posts/2022-04/lmb.png
categories:
- 社区新闻
tags:
- Leap
- 翻译作品
- 官方新闻
---

浏览 [openSUSE](https://www.opensuse.org/) 网站的人可能会在 [get.opensuse.org](https://get.opensuse.org/testing/) 上发现一些新内容。

目前正在展示的 [Leap Micro](https://get.opensuse.org/leapmicro/5.2/) 已更新至 5.2 beta 版本，主要用于容器化和虚拟化工作负载。它是不可变的，是主机容器的理想选择，被描述为面向专家用户，可用于计算部署的超可靠、轻量级操作系统。Leap Micro 的社区版本基于 [SUSE Linux Enterprise Micro](https://www.suse.com/products/micro/)，并利用 [SUSE Linux Enterprise](https://www.suse.com/products/server/) 和 [openSUSE Leap](https://get.opensuse.org/leap) 的企业强化安全性，将其合并为一个现代、不可变、对开发人员友好的操作系统平台。

Leap Micro 有几个用于[边缘计算](https://en.wikipedia.org/wiki/Edge_computing)、嵌入式/物联网部署等方面的产品实例。Leap Micro 非常适合去中心化计算环境、微服务、分布式计算项目等。该版本将帮助开发人员和 IT 专业人士构建和扩展用于航空航天、电信、汽车、国防、医疗保健、机器人、区块链等领域的系统。 Leap Micro 提供自动化管理和补丁。

Leap Micro 与 [MicroOS](https://get.opensuse.org/microos/) 有相似之处，但 Leap Micro 不提供图形用户界面或桌面版本。另外，它基于 SUSE Linux Enterprise 和 Leap，而非与 MicroOS 一样基于 [Tumbleweed](https://get.opensuse.org/tumbleweed/)。

Leap 发布经理 [Luboš Kocman](https://github.com/lkocman) 在 [factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/)中宣布了[相关的镜像文件已开放下载](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LWO4OGGY3N2KKOWNJXIRUV76I3FJX3HV/)供测试者进行测试。

想要测试 Leap Micro 的用户应该查看 [openSUSE wiki 页面](https://en.opensuse.org/openSUSE:Most_annoying_bugs_5.2)。那些使用[树莓派](https://www.raspberrypi.org/)或 [Intel](https://www.intel.com/) Base 的预配置镜像的用户应该查看 [the combustion and ignition](https://documentation.suse.com/sle-micro/5.0/single-html/SLE-Micro-installation/index.html#sec-slem-combustion) 的文档。用户需要在 USB 驱动器上将卷名标记为 ignition。这可以通过磁盘实用程序（格式化分区）或 `sudo e2label /dev/sdY ignition` 点火来完成。 如果 `config.ign` 文件有以下内容： `passwordHash` : `O9h4s2UUtAtok`，则密码为 `password`。Leap Micro 当前使用了 openSUSE 的默认值，即 `PermitRootLogin = without-password`。因此用户需要通过 [combustion](https://documentation.suse.com/sle-micro/5.0/single-html/SLE-Micro-installation/index.html#sec-slem-combustion) 提供公钥；这是一个已知问题，后续将得到修复。

用户应该知道不应该在 Leap Micro 使用 [zypper](https://en.opensuse.org/SDB:Zypper_usage)，而应使用 [transactional-update](https://opensuse.github.io/openSUSE-docs-revamped-temp/microos_getting_started/#transcational-update-default)。

------

原文：[Leap Micro Beta Available for Testers](https://news.opensuse.org/2022/04/05/leap-micro-beta-available-for-testers/)，作者：Douglas DeMaio