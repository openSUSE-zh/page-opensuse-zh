---
author: Hanjingxue Boling
date: 2022-12-05 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: openSUSE 论坛将从 vBulletin 迁移至 Discourse
image: /assets/posts/2021-12/openSUSE_party.jpg
categories:
- 社区新闻
tags:
- forums.opensuse.org
- 翻译作品
- 官方新闻
---

也许您已经在 [openSUSE 论坛上](https://forums.opensuse.org/)看到了这个公告，并对于使用论坛的方式产生了疑惑。也有可能您并不明白，或是只是模糊地理解 [vBulletin](https://en.wikipedia.org/wiki/VBulletin) 和 [Discourse](https://en.wikipedia.org/wiki/Discourse_(software)) 这两个词的意思。

vBulletin 是一个商业软件包，[forums.opensuse.org](https://forums.opensuse.org/) 使用它处理用户交互界面，存储和管理讨论贴和主题，执行论坛成员的用户管理。同时，这个商业软件包显而易见地为社区带来了不可忽视的负担。

因为所有活跃的软件都会迁移到新版本，vBulletin 也是如此。这意味需要在 openSUSE 的服务器上对 vBulletin 新版本进行兼容变更。在这样的时刻，是时候看看是否有更好的不同解决方案了。

我们不会事无巨细地展示全部的技术细节以增加您的负担；我们决定采用一种不同的开源解决方案替代原有的 vBulletin（适合 openSUSE 的产品方案：Discourse）

对于包括论坛工作人员在内的许多人来说，这并非易事。在我们迁移之后必须解决很多事情，但我们可以提及（我们认为）一些大多数成员首先想到的事情。

<strong>帐户</strong>：由于登录工具未绑定到 vBulletin，而是绑定到一般的 SUSE 登录功能，因此不会有任何变化，所有成员都可以像以前一样登录。

<strong>旧讨论贴</strong>：讨论贴将被迁移到新论坛并可浏览。但迁移的讨论贴的排版将出现乱版，我们希望能找到一个可行的解决办法。如前所述，它看起来会与旧版布局非常不同，请先使用吧。

我们预计会出现很多问题。当然还有一个“关于论坛”部分，您可以在此创建新的讨论贴。请做好工作人员无法及时回应你的反馈的准备（论坛维护者与您一样，也是普通人，他们只有在闲暇之余才能处理这些问题）。

计划中的论坛下线时间为 12 月 11 日至 13 日，我们会在此期间进行迁移。这包括导出和导入用户和讨论贴、测试和管理令人头疼的问题。

感谢您提前与我们联系。

------

原文：[The openSUSE forums move from vBulletin to Discourse](https://news.opensuse.org/2022/12/05/openSUSE-forums-move-from-vBulletin-to-Discourse/)，作者：	Victorhck
