---
author: Fangzhou Liu
date: 2026-03-09 10:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 社区完善 Git 打包工作流
image: /assets/posts/2026-03/gitea.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
---
[openSUSE 项目](https://www.opensuse.org/)的贡献者与开发者近期举行[会议](https://calendar.opensuse.org/teams/release/events/git-workflow-meeting)，协调面向 Leap 16 的基于 Git 的打包工作流，并讨论该流程今后如何应用于 Leap 发行版，而滚动发行版 Tumbleweed 仍需做一些工作才能完成过渡。

该工作流以 [Gitea](https://about.gitea.com/) 作为界面平台，标志着开发向更透明、以软件包为中心的方向转变。项目记录的架构决策包括：采用 Git 作为唯一版本控制系统，使用拉取请求进行变更管理，并在各仓库间统一工作流。

所有官方发行版的软件包源码托管在 [src.opensuse.org/pool](https://src.opensuse.org/pool)。社区软件包使用名为 leap-x.y 的分支，例如 leap-16.0。源自 SUSE Linux Enterprise（也被称为 [SUSE Linux Framework One(SLFO)](https://en.opensuse.org/SLFO) 的软件包使用 slfo-main 或带版本的 slfo-x.y 分支。当一个软件包同时存在这两类分支时，贡献者应基于 leap-x.y 分支开展工作。

该项目依托多项自动化工具来管理工作流。workflow-pr 机器人负责拉取请求的生命周期，包括审核与合并。workflow-direct 机器人在可信开发项目有代码推送时同步子模块。obs-staging-bot 机器人在 [Open Build Service](https://openbuildservice.org/) 中创建隔离的测试环境，用于端到端验证。这些自动化工具的源码可在 [AutoGits 仓库](https://src.opensuse.org/git-workflow/autogits)中获取。它们无需特殊权限即可运行，通常以普通用户身份在 Gitea 中运作。

项目鼓励贡献者使用标准工具：用于与 OBS 交互的 osc 客户端、处理大文件的 git-lfs，以及用于初始化新软件包仓库的 obs-git-init 都很实用。维护者列表、工作流配置和项目设置等直接存储在 Git 项目仓库中，由 obs-scm-bridge 服务按需生成 Open Build Service 元数据。git-obs 工具（属于 osc 软件包）作为与 Gitea 的交互接口，支持在终端直接调用 Gitea 的任意 API。

对于社区维护的软件包，工作流程为：Fork 仓库，在对应的 leap-x.y 分支中进行修改，然后提交拉取请求。拉取请求会自动关联构建结果以供验证。贡献者在提交前如需测试变更，可使用 osc fork 命令，该命令会创建个人分支并保留 OBS 项目结构。

出于认证要求，由 SUSE 维护的软件包遵循单独流程。不过，对这些软件包的公开变更请求应通过 [code.opensuse.org](https://code.opensuse.org/leap/features/issues) 上的 [Leap 功能跟踪器](https://code.opensuse.org/leap/features/issues)提交。提交内容会在每周的 [Leap 功能会议](https://calendar.opensuse.org/)上进行审核。

在此次[会议](https://calendar.opensuse.org/teams/release/events/git-workflow-meeting)期间，与会者讨论了过渡过程中遇到的挑战。有参会者指出，长期参与 openSUSE 的贡献者可能会对该工作流感到陌生，并提出了仓库初始化以及通过机器人复刻 OBS 前端功能复杂度的问题。另一位参会者则希望能更清晰地对应旧流程与新的基于 Git 的方案。

OBS 基础设施的核心贡献者强调，目标是让工作流透明且可复现。他邀请贡献者直接反馈问题，并指出在不涉及源码转换的情况下，应能实现二进制完全一致的构建。

与会者一致认为，需要改进工具以支持跨多个软件包的协同更新。

项目正寻求社区支持，以完成开发项目向基于 Git 工作流的迁移。[Git 工作流文档](https://src.opensuse.org/openSUSE/git-workflow-documentation)可在 [src.opensuse.org](https://src.opensuse.org/openSUSE/git-workflow-documentation)查看，反馈可通过 GitHub Issues 提交至 [github.com/openSUSE/openSUSE-git](https://github.com/openSUSE/openSUSE-git/issues)。

已知问题包括：非协作者无法在软件包仓库的不同分支之间发起拉取请求。目前正在改进 Factory 的暂存工作流，最终也将过渡到 Git 工作流。

更多信息可查看最近更新的 [Git 打包工作流](https://en.opensuse.org/openSUSE:Git_Packaging_Workflow) Wiki 页面。

---
原文：[Community Refines Git Packaging Workflow](https://news.opensuse.org/2026/02/19/comm-advances-gov-proposal-after-virtual-meeting/)，作者：Douglas DeMaio
