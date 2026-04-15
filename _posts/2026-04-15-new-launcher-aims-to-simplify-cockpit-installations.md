---
author: Fangzhou Liu
date: 2026-04-15 10:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 新启动器旨在简化 Cockpit 安装流程
image: /assets/posts/2026-04/cockpit.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
---
openSUSE 社区成员正在开发一套精简的系统管理界面，以应对从 YaST 迁移这一复杂工作。

在 [openSUSE bar](https://meet.opensuse.org/bar) 经过多次调整并吸纳社区意见后，成员们基于现有工具，为 openSUSE 用户推出了一款启动器。它提供基于网页的系统管理界面，让从传统 YaST 配置工具切换过来的用户更容易上手。

这款 cockpit-client [启动器](https://software.opensuse.org/package/cockpit-client-launcher) 解决了部分用户在尝试用 Cockpit 替代 YaST 时遇到的使用障碍。根据 [openSUSE 论坛](https://forums.opensuse.org/t/cockpit-the-easy-way-be-happy-without-yast/192270) 上的反馈，在此之前，整个使用流程既不简单也不直观。

该启动器为 openSUSE 专属设计，图标沿用了经典 YaST 的配色，针对用户反馈制作。经过测试与小幅优化后，该软件包已正式发布，可在 [Tumbleweed](https://get.opensuse.org/tumbleweed/) 和 [Leap](https://get.opensuse.org/leap/) 中作为 <span style="background-color: #6ba82f; color: white; padding: 4px 8px; border-radius: 4px; font-weight: bold; font-size: 12px; display: inline-block;"> Official </span> 软件包安装使用。

Lubos Kocman 表示：“由于 Cockpit-client 同时提供 Flatpak 和 RPM 两种启动器，我们需要给它们设置不同图标，方便用户区分。不同颜色的图标能让用户一眼就知道打开的是哪个，避免混淆。”

## 安装步骤

该启动器将原本多步骤的操作简化为直观流畅的工作流程。此前，用户在通过 `localhost:9090` 访问 Cockpit 时会遇到诸多问题，社区也将其列为使用痛点。

```bash
sudo zypper install cockpit-client-launcher
```

同时建议用户安装 `patterns-cockpit`，以确保所有 Cockpit 模块均可使用：

```bash
sudo zypper install -t pattern cockpit
```

最后，用户只需在桌面环境的应用菜单中启动该程序，并按照初始设置向导操作即可。启动器会自动启用所需的 systemd 服务与防火墙配置。

为符合安全规范，若 Cockpit 此前未启用并运行，安装程序会询问用户是否启用 `cockpit.socket`，并选择偏好的 [firewalld](https://firewalld.org/) 配置。

该软件包已在 Tumbleweed 和 Leap 16 上完成测试，结果证实其可在不同 openSUSE 变体、版本及安装场景下正常集成使用。

由 [Low Tech Linux](https://www.youtube.com/@LowTechLinux) 制作的演示视频展示了在 Tumbleweed 与 Leap 16 上的[安装与设置流程](https://youtu.be/edhoj-aS8s8?si=Hky6etVk-9FZjP1s)。

Cockpit 网页界面提供图形化系统管理功能，可替代传统命令行工具或 YaST 完成操作，包括软件包管理、用户管理、服务控制等。

---
原文：[New Launcher Aims to Simplify Cockpit Installations](https://news.opensuse.org/2026/03/18/new-launcher-aims-to-simplify-cockpit-installations/)，作者：Douglas DeMaio
