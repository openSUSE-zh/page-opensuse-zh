---
author: Fangzhouu Liu
date: 2025-10-04 07:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Git 工作流采用进度：已完成一半
image: /assets/posts/2025-10/gitea.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
---
[Leap 16](https://get.opensuse.org/leap) 目前仅通过 [新的 Git 工作流](https://en.opensuse.org/openSUSE:Packaging_for_Leap) 接收贡献内容。这一转变体现了一种更广泛的趋势：Open Build Service 中的许多开发项目已采用 Git，且每天都有新项目加入这一行列。

[Tumbleweed](https://get.opensuse.org/tumbleweed) 尚未切换至新的 Git 工作流。openSUSE 发布团队正在评估新的暂存环境，以确保其能有效扩展——因为我们需要确保集成前验收测试保持有效性，从而应对每周多达 1,500 次的提交。

Leap 16.0 的开发已接近尾声。由于在其发布前，预计每周的提交数量较少，因此简化的集成前工作流不像 Tumbleweed 每周的提交那样需要重点关注。我们希望避免为 Leap 16 采用两套不同的源代码管理系统，并确保其在首个版本中就实现 Git 适配。

此次向 Git 的过渡应在今年年底前完成。一旦解决了扩展性问题，Tumbleweed 预计也将全面采用 Git。开发者如有任何疑问，可通过 [factory 邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/) 咨询。

本文旨在帮助贡献者理解 Leap 和 Tumbleweed 向基于 Git 的工作流转变的相关情况，以便他们调整自己的打包实践；同时，我们也鼓励大家阅读 [Git 打包工作流](https://en.opensuse.org/openSUSE:Git_Packaging_Workflow) 相关文档。

---
原文：[Project Halfway there with Git Workflow Adoption](https://news.opensuse.org/2025/09/09/project-halway-there-with-git-adoption/)，作者：Douglas DeMaio
