---
author: Fangzhou Liu
date: 2025-10-31 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 黑客周项目旨在弥合 YaST 与 Cockpit 之间的差距
image: /assets/posts/2025-10/hack.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
- Leap
---
[第 25 届黑客周](https://hackweek.opensuse.org/)期间，有一个项目旨在回应社区反馈，将 YaST 中广受欢迎的配置功能引入 [Cockpit](https://cockpit-project.org/) 和系统角色，这是朝着弥合 openSUSE Leap 16.0 中 YaST 弃用后留下的差距迈出的一步。

这个名为《将 YAST 的功能引入 Cockpit 和系统角色》（[Bring to Cockpit + System Roles capabilities from YAST](https://hackweek.opensuse.org/25/projects/bring-to-cockpit-plus-system-roles-capabilities-from-yast)） 的倡议，直接回应了部分用户对熟悉的桌面和系统管理工具消失的担忧。作为向现代化、自动化友好型基础设施转型的一部分，Cockpit 已在 Leap 16.0 中引入。

许多长期用户正确地指出，YaST 的关键功能仍有缺失，但 [Leap 的新篇章](https://suse.org.cn/%E6%9B%B4%E6%96%B0%E9%80%9A%E5%91%8A/2025/10/11/next-chapter-opens-with-leap-release.html) 需要一个现代化的 YaST 继任者，而不是独自另起炉灶；当这些改进在社区间共享并得到完善时，其发展会更加强劲。

[该黑客周项目](https://hackweek.opensuse.org/25/projects/bring-to-cockpit-plus-system-roles-capabilities-from-yast)的相关工作将于 12 月 1 日启动。若有人希望推进这些功能，可继续参与[实现清单](https://docs.google.com/spreadsheets/d/1ZhX-Ip9MKJNeKSYV3bSZG4Qc5giuY7XSV0U61Ecu9lo/edit)的开发。

已被弃用的 YaST 长期以来是该项目的标志性工具之一，其提供的多项配置和安装功能尚未纳入新版 Cockpit。放弃 YaST 的转型过程经过了大量研究和审慎考量。尽管 YaST 与项目的品牌标识紧密相连，开发团队仍全面评估了哪些功能和模块是核心必需的。目前，这些 [Cockpit 的功能缺口](https://docs.google.com/spreadsheets/d/1ZhX-Ip9MKJNeKSYV3bSZG4Qc5giuY7XSV0U61Ecu9lo/edit)仍在通过社区贡献以及与系统角色的持续整合逐步填补。

该项目的目标是在系统角色中实现服务配置，然后在其上层搭建 Cockpit 界面，让管理员能够直接操控。对于已配置现有资源的场景，预计将开发特定的 Cockpit 模块来处理相关交互。

若有人希望参与此项工作，项目已发布[缺失功能及建议实现的详细表格](https://docs.google.com/spreadsheets/d/1ZhX-Ip9MKJNeKSYV3bSZG4Qc5giuY7XSV0U61Ecu9lo/edit)供贡献者参考。贡献者可通过项目的黑客周页面跟踪进度并开展协作。

黑客周始于 2007 年，现已成为项目开源文化的核心支柱。众多如今已融入 openSUSE 生态系统的工具均源自黑客周，例如 openQA、Weblate 和 Aeon Desktop。黑客周还孕育了后来发展为广泛使用的产品的项目——ownCloud 及其衍生项目 Nextcloud，均起源于十多年前的一个黑客周项目。

如需了解更多信息，请访问[hackweek.opensuse.org](https://hackweek.opensuse.org/)。

---
原文：[Hack Week Project Aims to Bridge YaST, Cockpit Gaps](https://news.opensuse.org/2025/10/29/hw-project-aims-to-bridge-yast-cockpit-gaps/)，作者：Douglas DeMaio
