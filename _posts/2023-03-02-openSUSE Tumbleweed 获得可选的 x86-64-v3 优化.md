---
author: Hanjingxue Boling
date: 2023-03-02 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: openSUSE Tumbleweed 获得可选的 x86-64-v3 优化
image: /assets/posts/2023-03/twgrey.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

Tumbleweed 在过去几周滚动更新时，会为启用“推荐依赖”（默认启用）并具有匹配硬件的用户推送一个名为 `patterns-glibc-hwcaps-x86_64_v3` 的软件包更新。这是 Tumbleweed 的新特性，安装此软件包后，系统会自动安装以 `-x86-64-v3` 名称后缀命名的“推荐”依赖项，提供库的优化版本。

“人们将从这一变化中获得的性能优化是大量努力和讨论的结果，”openSUSE 发布团队成员 Douglas DeMaio 说道。“邮件列表上关于 [x86-64 架构](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JTFUDX72VB7WPCBH4CV5E4XYXFWWKHXQ/) 的讨论贴确实推动了讨论，讨论结果将立即为那些使用 x86-64-v3 硬件的人提供性能改进。如果人们写下这些改进，那么结果可以在我们滚动版本的用户之间共享，那就太好了。”

这是最近为利用于 glibc 2.33 中发布的 glibc HWCAPS 功能而完成的多日努力的结果。此功能允许 Tumbleweed 动态链接器向用户无缝和透明地加载共享库的硬件优化版本，这在某些情况下提供了可衡量的性能优势。使用不兼容硬件的 Tumbleweed 用户将回退到共享库的仍然可用的基准版本，因此不会遇到任何问题。这提供了良好的互操作性体验，同时允许在足够新的 x86-64 硬件上为使用该硬件用户提供一些性能改进。这对于没有自定义调度到优化应用程序的软件包最有用。对于容器化应用程序，这种方法提供了与各种硬件的兼容性，同时在可能的情况下优化了最新的 CPU 功能。

目前只启用了很少的软件包，但随着时间的推移我们可能会发布更多软件包，因为单独的基准测试证明创建额外版本是有好处的。对于 openSUSE 贡献者，这些优化版本的创建[隐藏在单个规范宏之后](https://en.opensuse.org/openSUSE:Packaging_Conventions_RPM_Macros#%{?suse_build_hwcaps_libs})，几乎不需要其他维护或打包工作。

如果出于某种原因你对该功能不感兴趣，你可以卸载 `patterns-glibc-hwcaps-x86_64_v3` 并“锁定（`zypper al`）它”，这样它就不会被再次选中。那么 Tumbleweed 以后也不会在你的系统上安装优化版本。

------

原文：[openSUSE Tumbleweed gains optional x86-64-v3 optimization](https://news.opensuse.org/2023/03/02/tw-gains-optional-optimizations/)，作者：	Dirk Müller