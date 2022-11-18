---
author: Hanjingxue Boling
date: 2022-11-17 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: 新版 Leap Micro 现已发布
image: /assets/posts/2022-11/lpm.png
categories:
- 更新通告
tags:
- Leap Micro
- 翻译作品
- 官方新闻
---

[openSUSE 项目](https://www.opensuse.org/)高兴地宣布其现代轻量级主机操作系统 [Leap Micro 5.3](https://get.opensuse.org/leapmicro) 的发布。

此版本有一个用于 [Cockpit](https://cockpit-project.org/) 的新 [SELinux](https://github.com/SELinuxProject) 模块，它为用户提供基本功能来解决配置问题，并使 [NetworkManager](https://networkmanager.dev/) 成为默认的网络配置工具。

此版本基于 SUSE Linux Enterprise SUSE [(SLE) Micro](https://www.suse.com/download/sle-micro/) 5.3，构建于 [SLE 15 Service Pack 4](https://www.suse.com/releasenotes/x86_64/SUSE-SLES/15-SP4/index.html) 更新之上。

这种超可靠、轻量级和不可变的操作系统可用于多种计算环境，如边缘、嵌入式、物联网部署等。

主机操作系统具有自动管理和修补功能，因此自动更新为用户的容器和虚拟化工作负载提供了一个持久的可启动系统。

用户应该知道 Leap Micro 不使用 [zypper](https://en.opensuse.org/SDB:Zypper_usage)，而是使用 [transactional-update](https://opensuse.github.io/openSUSE-docs-revamped-temp/microos_getting_started/#transcational-update-default)。与 Leap Micro 相关的开发人员包之一是 [Podman](https://github.com/containers/podman/blob/main/RELEASE_NOTES.md#342)。Podman 为开发人员提供了在生产环境中使用 Podman 运行其应用程序的选项。

Leap Micro 与 MicroOS 有相似之处，但 Leap Micro 不提供图形用户界面或桌面版本。但是，用户可以[使用 Cockpit 通过网络浏览器管理他们的主机操作系统](https://youtu.be/uf5C5OMscDk)。

大型开发团队可以通过尝试 Leap Micro 并过渡到 SUSE 的 [SLE Micro](https://www.suse.com/download/sle-micro/) 以获得扩展维护和认证，从而为其运营增加价值。

开发人员和专业人士可以构建和扩展用于航空航天、电信、汽车、国防、医疗保健、酒店、制造、数据库、网络服务器、机器人、区块链等领域的系统。

要下载 ISO 镜像文件，请访问 [get.opensuse.org](https://get.opensuse.org/)。

------

原文：[New Leap Micro Version Now Available](https://news.opensuse.org/2022/11/17/new-leapmicro-version-now-available/)，作者：Douglas DeMaio