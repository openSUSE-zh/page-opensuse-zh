---
author: Fangzhouu Liu
date: 2025-10-04 09:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openQA 新增 AI 友好型接口
image: /assets/posts/2025-10/openqa.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
---
[openSUSE 项目](https://www.opensuse.org/)成员将模型上下文协议（MCP）集成到项目的 [openQA](https://open.qa/) 框架中，推动自动化测试向前发展

此举标志着该项目在将人工智能融入其开源软件开发流程方面迈出了关键一步。

“初始版本将包含三款 MCP 工具，后续会根据用户反馈逐步扩展相关功能，”塞巴斯蒂安·里德尔（Sebastian Riedel）在[一篇宣布支持 MCP 的博客文章](https://www.suse.com/c/openqa-mcp-support/?utm_campaign=Oktopost-FY25+Global+News&utm_content=Oktopost-LinkedIn&utm_medium=social&utm_source=social_media)中写道，“该功能将主要供 SUSE 质量工程（QE）工程师以及 openSUSE 社区成员使用，这些人员通常需要花费大量时间审核测试结果，并排查自动化测试失败的原因。”

模型上下文协议（MCP）通过[应用程序编程接口](https://en.wikipedia.org/wiki/API)（API），规范了人工智能模型访问外部工具和数据的方式，这使得大型语言模型能够与 openQA 等网络服务进行交互。

此次更新意味着，人工智能助手可直接查询 openQA，以审核测试结果并生成任务运行摘要。例如，若请求总结任务 5324207，系统会返回基于 ARM 架构的 Tumbleweed 测试失败的相关详情；而任务 5265754 则显示，基于 x86_64 架构的网络测试套件已通过，仅存在少量跳过项。

目前，openQA 中的 MCP 支持仅限于只读访问，这使得人工智能工具可收集信息，但无法进行修改。未来的更新可能会支持写入操作，不过这类操作需要额外的安全设置和控制方法。如今，大多数 MCP 客户端都支持 bearer token 认证，因此 openQA 也采用了这一认证方式。

项目维护者表示，MCP 支持目前仍处于试验阶段，需在 `openqa.ini` 中手动启用。尽管如此，此次集成仍是人工智能与自动化测试融合进程中的重要一步。

对于 openSUSE 而言，这为贡献者、测试人员和开发人员带来了新机遇，他们可借助人工智能监控并提升该发行版的质量。

将 MCP 集成到 openQA 中，使得 openSUSE 这类开源项目在新兴的人工智能生态系统中占据了领先地位。这种方式有助于维护开放标准，同时实现复杂技术环境下的互操作性。专有方案面临供应商锁定风险，且缺乏透明度与标准化；而开源解决方案则能实现人工智能与现有工具之间安全、上下文感知的交互，并让各组织得以接入不断发展的协作网络。

对于该项目而言，在 openQA 中集成 MCP 支持是一个关键里程碑——它实现了开放、智能且自动化的测试流程，能够直接查询测试结果。这将进一步提升开发运维（DevOps）效率，并减少人工操作。预计未来的流程中，[openSUSE 构建服务（openSUSE Build Service）](https://build.opensuse.org/)、[openSUSE 缺陷追踪系统（Bugzilla）](https://bugzilla.opensuse.org/)等基础设施也将集成 MCP；此类基础设施自动化水平的提升，将有助于提高生产力、促进贡献工作开展，并提升整体效率。

目前，所有用户均可在 [openqa.opensuse.org](https://openqa.opensuse.org/) 上使用这项 MCP 功能。而 openSUSE 此次的实践，也充分展现了开放协作如何推动开源软件领域取得进步。

---
原文：[openQA Gains AI-Friendly Interface](https://news.opensuse.org/2025/09/23/openqa-gains-ai-friendly-interface/)，作者：Douglas DeMaio
