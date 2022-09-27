---
author: Hanjingxue Boling
date: 2022-09-27 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: ALP 原型 “Les Droites” 预计将于本周晚些时候推出。
image: /assets/posts/2022-09/alp-boot-screen.png
categories: 
- 社区新闻
tags:
- ALP
- 翻译作品
- 官方新闻
---

所有 [ALP 工作组](https://en.opensuse.org/openSUSE:ALP/Workgroups)都在努力交付承诺于 9 月发布的 ALP 原型，代号为 [“Les Droites”](https://en.wikipedia.org/wiki/Les_Droites)。SUSE 将继续为所有即将推出的原型使用山脉命名主题，这些原型将在三个月后交付。

自适应 Linux 平台（Adaptable Linux Platform, ALP）以开放的方式进行规划、开发和测试，因此用户可以简单地从 [OBS](https://download.opensuse.org/repositories/SUSE:/ALP/images/) 获取安装镜像并在 [openQA](https://openqa.opensuse.org/group_overview/100) 中查看测试结果

就 “Les Droites” 而言，用户可以期待 ALP 是一个像 HostOS 这样具有自我修复能力的 SLE Micro，为我们的操作系统即服务/零配置的故事做贡献。ALP 的大理念是用户专注于应用程序而不是底层主机，底层主机会自我管理、修复和优化。Salt（预装）和 Ansible 都可以用来进一步简化管理工作。

用户可以期待在 x86_64 上默认支持 TPM 的全盘加密 (FDE)。可交付成果的另一部分是众多容器化系统组件，包括 yast2、podman、k3s、cockpit、Display Manager ([GDM](https://github.com/fcrozat/gdm-container)) 和 KVM。所有这些用户都可以进行试验，这些试验被简单地称为[工作负载](https://build.opensuse.org/project/show/SUSE:ALP:Workloads)。

无缝系统集成将稍后推出，并且可能因工作负载类型而异。一个例子是通过 rpm 部署的 /usr/bin 包装器，等等。在 ALP 或实际上任何支持 podman 的 Linux 系统上运行 YaST 工作负载的 ncurses 变体的示例如下：

```
$ podman container runlabel run \
registry.opensuse.org/suse/alp/workloads/tumbleweed_containerfiles/suse/alp/workloads/yast-mgmt-ncurses:latest
```

![01](/assets/posts/2022-09/yast-curses.png)

我们强烈建议用户阅读以下文章，了解有关 ALP 工作负载的更多信息：

- [yast-report-2022-7](https://yast.opensuse.org/blog/2022-08-23/yast-report-2022-7)
- [yast-report-2022-8](https://yast.opensuse.org/blog/2022-09-06/yast-report-2022-8)
- [Cockpit_at_ALP wiki](https://en.opensuse.org/openSUSE:ALP/Workgroups/SysMngmnt/Cockpit#Cockpit_at_ALP)

------

原文：[ALP prototype 'Les Droites' is to be expected later this week.](https://news.opensuse.org/2022/09/26/alp-les-droites/)，作者：Lubos Kocman