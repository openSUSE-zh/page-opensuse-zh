---
author: Poplar at twilight
date: 2024-04-10 08:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 默认壁纸在 openSUSE、SUSE 之间具有共同路径
image: /assets/posts/2024-04/apple-icon-touch.png
categories:
- 社区新闻
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

在 [openSUSE] [Tumbleweed] 以及即将推出的 [Leap] 和 [Leap Micro]  分支中，我们将新采用 [png] 作为默认墙纸格式。

[png]: https://github.com/openSUSE/branding/pull/149
[openSUSE]: https://www.get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[Leap]: https://get.opensuse.org/leap
[Leap Micro]: https://get.opensuse.org/leapmicro

这一决定背后的驱动力是通过兼容符号链接与 [SLE] 统一壁纸路径，因为格式必须相同。自上次在 [SLE 15 SP 3] 中改版以来，[SLES] 和 [SLED] 一直使用 PNG 格式，而 openSUSE 直到现在一直使用 JPG 格式。

[SLE]: https://www.suse.com/
[SLES]: https://www.suse.com/products/server/
[sled]: https://www.suse.com/download/sled/
[SLE 15 SP 3]: https://www.suse.com/releasenotes/x86_64/SUSE-SLES/15-SP3/index.html

用通用的默认壁纸路径允许使用壁纸或类似系统品牌的应用程序在 SLES 和 openSUSE 上无需重新构建，就可以重新运行。

使用无损格式的小代价是尺寸略有增加，不过，我们使用 [optipng]，因此所有壁纸分辨率加起来的单位都在兆字节以内。

[optipng]: https://github.com/openSUSE/branding/pull/148/files#diff-76ed074a9305c04054cdebb9e9aad2d818052b07091de1f20cad0bbac34ffb52R80

`ls -la /usr/share/wallpapers/openSUSEdefault/contents/images/1600x1200.png -rw-r--r-- 1 root root 417791 Apr 5 13:14 /usr/share/wallpapers/openSUSEdefault/contents/images/1600x1200.png`

`ls -la /usr/share/wallpapers/SLEdefault/contents/images/1600x1200.png -rw-r--r-- 1 root root 417791 Apr 5 13:14 /usr/share/wallpapers/SLEdefault/contents/images/1600x1200.png`

`ls -la /usr/share/wallpapers/SLEdefault lrwxrwxrwx 1 root root 15 Apr 5 13:15 /usr/share/wallpapers/SLEdefault -> openSUSEdefault`

我们还提供了新的 [apple-touch-icon] 图标，它是 SLE 发行版徽标的一部分，而 openSUSE 方面却缺少这个图标。

[apple-touch-icon]: https://github.com/openSUSE/distribution-logos/pull/7/files

**由于这实际上是对默认壁纸的更改，我们建议使用默认壁纸的用户注销后再登录，以避免出现任何故障。**请确保系统能够重新读取 `/usr/share/wallpapers/openSUSE-default-static.xml`

好消息是，我们计划为 openSUSE Leap 16 和 openSUSE Tumbleweed 推出一个新的壁纸系列，因为 openSUSE Tumbleweed 已经有一段时间没有更换壁纸了；就当是一次小小的消防演习吧。

----

原文：[Default wallpaper has common path across openSUSE, SUSE](https://news.opensuse.org/2024/04/09/common-wallpaper-path/)，作者：Lubos Kocman