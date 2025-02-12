---
author: Poplar at twilight
date: 2025-02-11 07:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Myrlyn 现在能处理社区软件源
image: /assets/posts/2025-02/myrlyn.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
---

有望成为新一代软件包管理工具的 [Myrlyn] 现在引入了一个备受期待的功能：配置软件源。用户使用 Myrlyn 简洁的 UI，轻松地[管理他们的软件源]，调整优先级，启动自动刷新，甚至快速添加广泛使用的社区软件源（如 [packman]、[openh264]、[libdvdcs]s 或 [NVIDIA]）。

[packman]: http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/
[openh264]: https://software.opensuse.org/package/openh264
[libdvdcss]: https://software.opensuse.org/package/libdvdcss
[NVIDIA]: https://www.nvidia.com/
[管理他们的软件源]: https://github.com/shundhammer/myrlyn/issues/69
[Myrlyn]: https://github.com/shundhammer/myrlyn

![](/assets/posts/2025-02/myrlyn3.png)

**重要功能：**

- 查看软件源的详细信息（包括优先级、自动刷新状态和 URL）。
- 直接在软件中修改软件源设置。
- 使用 libzypp 变量（如 `$releasever`）添加自定义软件源。
- 自动选择为 Leap，Tumbleweed 或 Slowroll 量身定制的社区软件源。
- 为非特权用户启用只读模式。

一些用户已经在专门使用 Myrlyn 管理其系统，以展示其可靠性。Myrlyn 是在 Hack Week 24 期间开发的，是一位独立的基于 QT 的软件包管理器，不依赖 Yast。

准备配置您的存储库了吗？前往 其他 → 配置存储库（Ctrl+Shift+O），然后开始修改！

![](/assets/posts/2025-02/myrlyn6.png)

----

原文：[Myrlyn Now Handles Community Repos](https://news.opensuse.org/2025/02/10/myrlyn-now-handles-community-repos/)，作者：Douglas DeMaio