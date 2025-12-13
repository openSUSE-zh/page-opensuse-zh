---
author: Fangzhou Liu
date: 2025-12-12 10:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 英特尔 NPU 驱动现已登陆 openSUSE 各版本
image: /assets/posts/2025-12/npu.png
categories:
- 社区新闻
tags:
- 翻译作品
---
> 本文为社区投稿作品翻译。

作为 [openSUSE 创新者计划（openSUSE Innovator initiative）](https://en.opensuse.org/openSUSE:INNOVATORS) 发起人，同时也是 openSUSE 社区与英特尔创新者社区成员，我始终致力于将前沿技术带到 openSUSE Linux 发行版的全系列版本。

随着神经网络处理单元（NPU）设备的问世，在无需依赖专用图形处理器（GPU）的情况下运行大语言模型（LLM）和生成式人工智能应用已成为现实。基于这一技术进展，我们启动了为 openSUSE 生态系统将英特尔 NPU 驱动打包为 RPM 格式的工作。经过此番协作攻关，openSUSE 创新者计划荣幸地向社区宣布，该软件包已正式发布。

英特尔神经网络处理单元（NPU）是一款推理加速器，自英特尔® 酷睿™ Ultra 系列处理器（前称 Meteor Lake）起集成于处理器内部。该单元可支持人工神经网络负载在处理器上直接实现高效、低功耗的运行。

该神经网络处理单元（NPU）集成于处理器核心芯片中，专为高能效执行神经网络矩阵运算而设计。其架构可与中央处理器（CPU）和图形处理器（GPU）形成互补，能够为开放式神经网络交换格式（ONNX）模型、计算机视觉处理流程、量化模型，以及 CPU+GPU+NPU 协同运行的混合模型运算提供智能负载分流能力。

参与本项目是一件极具成就感的事，因为我们深知其将对未来各类应用产生深远影响。作为开源社区的一份子，我们肩负着普及前沿技术、助力缩小数字鸿沟的责任，本次软件包的交付正是朝着这一目标迈出的又一重要步伐。

如需了解更多信息，请访问 [software.opensuse.org](https://software.opensuse.org/package/linux-npu-driver)！

---
原文：[Intel NPU Driver Now Available in openSUSE Versions](https://news.opensuse.org/2025/12/02/NPU-arrives-in-os-distributions/)，作者：Alessandro de Oliveira Faria
