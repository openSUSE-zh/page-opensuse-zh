---
author: Poplar at twilight
date: 2024-11-12 07:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 简化 openSUSE 翻译上游
image: /assets/posts/2024-11/translate.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
---

管理桌面菜单和应用程序的本地化需要一种特定的工具和方法，这种工具和方法填补了空白，但却留下了不一致的上游翻译。

多年来，开源翻译标准不断进步，目前使用的仅下游（downstream-only）模式已被证明效率低下，这也是 [Update-Desktop-Files Deprecation] 被淘汰的原因。

[Update-Desktop-Files Deprecation]: https://en.opensuse.org/openSUSE:Update-desktop-files_deprecation

在过去的二十年里，SUSE 的翻译系统已经覆盖了超过 5,747 个软件包，共有约 380,000 个翻译字符串。这些工作都是劳动密集型的，而且往往是多余的，因为上游已经存在许多翻译。`update-desktop-files` 工具与上游优先策略相矛盾。SUSE 特定的翻译会覆盖上游版本，造成不一致和重复翻译工作。它还限制了软件包维护者的控制能力，因为翻译通常是在运行时集成的，然后就会出现与软件包维护者预期不同的情况。该工具增加了复杂性，需要 SUSE 特定的基础设施（如 SUSE 内部网和 OpenQA VPN），使维护工作复杂化，并使其难以与某些开源实践保持一致。

鉴于这些挑战，过渡到上游优先的方法符合 openSUSE 减少冗余、提高翻译质量和支持社区协作的目标。

从 2024 年 11 月向 Factory 发布新的 update-desktop-files 开始，我们鼓励软件包维护者检查构建日志，查看上游 SUSE 特定翻译的说明。

下面是这些工作的路线图：

- **2024 年 11 月**： Factory 中的新版本可以将过去 20 年完成的翻译上传到上游。
- **2025 年初**：使用不透明翻译过程的软件包将开始向上游变更。
- **2025 年 3 月**：软件包维护者审核并提出对上游项目的更改。
- **2025 年底**：整合上游响应；软件包维护者将更改导入到 Factory。
- **2026 年**：所有剩余的特定于 SUSE 的桌面文件都将得到修补。到年底，使用 `update-desktop-files` 将触发错误，从而完全逐步淘汰。

为帮助实现这一过渡，软件包维护者应根据上游标准验证 **Name**、**GenericName**、**Comment** 和 **Keywords** 的翻译。在适用的情况下，可以使用 `update-desktop-files.tar.gz` 文件生成补丁，该文件提供了多种补丁格式（例如，`-downstream-translated.diff` 用于直接翻译）。软件包维护者还应更新规范文件，移除 `%suse_update_desktop_file` 并使用适当的上游翻译机制。有疑问，希望获得帮助的人可以阅读 [openSUSE wiki] 页面中列出的指导原则。

[openSUSE wiki]: https://en.opensuse.org/openSUSE:Update-desktop-files_deprecation

预计该更改将尽可能使用上游翻译，因此社区可以专注于 openSUSE 的翻译。

欲了解更多信息，请访问 [openSUSE wiki] 或订阅[翻译邮件列表]。

[翻译邮件列表]: https://lists.opensuse.org/archives/list/translation@lists.opensuse.org/

----

原文：[Streamlining openSUSE Translations Upstream](https://news.opensuse.org/2024/11/11/streamlining-translations/)，作者：Douglas DeMaio