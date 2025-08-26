---
author: Fangzhou Liu
date: 2025-08-26 09:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: openSUSE Welcome 迎来全新改版
image: /assets/posts/2025-08/legacy.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
---

曾为数百万台桌面设备用户送上问候的经典 [openSUSE-welcome](https://github.com/openSUSE/openSUSE-welcome) 窗口已临近 “退休”，一套全新方案即将取代其位置。

openSUSE 发布团队并未选择 “另起炉灶”，而是决定对现有解决方案进行调整与优化 —— 例如针对 [GNOME](https://www.gnome.org/) 桌面的 [gnome-tour](https://github.com/openSUSE/gnome-tour)，以及针对 [KDE Plasma](https://kde.org/) 桌面的 [plasma-welcome](https://invent.kde.org/plasma/plasma-welcome)。具体做法是开发一个全新的控制器和 [opensuse-welcome-launcher](https://build.opensuse.org/package/show/X11:Utilities/opensuse-welcome-launcher)，通过这两个组件协调上述现有工具，并提供适配特定桌面环境的专属内容。

这款全新的欢迎启动器（welcome-launcher）会根据当前运行的桌面环境，自动判断应启动哪款欢迎程序。这一设计让 openSUSE 发布团队能更精准地控制欢迎界面的显示时机与方式，而非依赖各款欢迎程序自身的自动启动机制。

值得一提的是，该启动器的功能并非局限于系统首次启动场景。在系统完成重大更新后，它同样可以触发欢迎程序的显示，确保用户能及时了解更新带来的新功能、体验优化及各项变更。

新版欢迎程序的启用将分多阶段推进.

1）初期阶段，启动器（launcher）仍会调用大家熟悉的旧版 openSUSE-welcome 程序。唯一的区别在于，旧版程序中 “下次启动时显示” 的勾选框将被移除 —— 因为此后该程序不再负责自动启动相关功能。

![Geeko](/assets/posts/2025-08/welcome.png)

2）启动器将触发带有 openSUSE 品牌标识的 [gnome-tour](https://github.com/openSUSE/gnome-tour) 和 [plasma-welcome](https://invent.kde.org/plasma/plasma-welcome)，同时将 openSUSE-welcome 保留为备用选项（如该程序已安装）。

3）基于 Qt5 框架的旧版欢迎程序最终将被停用。对于没有专用欢迎程序的桌面会话，我们需确定一个统一的备用方案。

这种分阶段推进的方式支持与 [openQA](https://openqa.opensuse.org/) 测试流程集成，并为未来的改进提供了灵活性。

![Geeko](/assets/posts/2025-08/welcome1.png)

由于 [opensuse-welcome-launcher](https://build.opensuse.org/package/show/X11:Utilities/opensuse-welcome-launcher) 被视作旧版组件，且是为数不多仍依赖 Qt5 框架的应用程序之一，此次调整将有助于在整个发行版中逐步淘汰部分残存的 Qt5 组件。

---
原文：[openSUSE Welcome Receiving Makeover](https://news.opensuse.org/2025/08/21/os-welcome-makeover/)，作者：Douglas DeMaio
