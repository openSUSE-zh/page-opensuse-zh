---
author: Poplar at twilight
date: 2023-10-12 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Leap Micro 5.5 现已发布，Leap Micro 5.3 现已退役
image: /assets/posts/2023-10/leapmicro54-rpi.jpg
categories:
- 更新通告
tags:
- Leap Micro
- 翻译作品
- 官方新闻
---

openSUSE 的现代轻量级主机操作系统的新版本，[Leap Micro 5.5] 现[已发布]。所有文档（包括 [SLE Micro 5.5 文档空间]中的[发行说明]）也适用于 Leap Micro，因为 Leap Micro 本质上是重新命名的 SLE Micro。

[Leap Micro 5.5]: https://get.opensuse.org/leapmicro/5.5/
[已发布]: https://en.opensuse.org/openSUSE:Roadmap#Schedule_for_openSUSE_Leap_Micro_5.5
[发行说明]: https://www.suse.com/releasenotes/x86_64/SLE-Micro/5.5/index.html
[SLE Micro 5.5 文档空间]: https://documentation.suse.com/sle-micro/5.5/

<strong>值得一提的是，这也意味着 Leap Micro 5.3 现已结束生命周期 (EOL)。</strong>我们强烈建议 Leap Micro 5.3 用户考虑升级到 Leap Micro 5.4 或 5.5 版本。这可确保获得最新功能、安全增强功能和持续支持。

Leap Micro 5.5 的突出特点之一是其 [SELinux 增强功能]。SELinux 得到了显着提升。它为 [AArch64] 带来了 podman-docker 和 hyper-v 支持，为用户提供更强大、更安全的计算体验。

[SELinux 增强功能]: https://news.opensuse.org/2023/09/06/new-leap-micro-alpha-enhances-selinux/
[AArch64]: https://en.wikipedia.org/wiki/AArch64

Leap Micro 5.5 搭载了 podman 4.4；新版本的 podman 引入了 [Podman Quadlet]。如果你还没有尝试过 Quadlet，请务必检查一下我们[使用 Quadlet 部署的 Nextcloud]。我们还发布了 podman-docker，它是一个 podman 包装器，可以与 docker-compose 一起使用，或者至少在针对 SLE 和 Leap Micro 发布 [Bug #1215926] 的修复后使用。

[Podman Quadlet]: https://www.redhat.com/sysadmin/quadlet-podman
[Bug #1215926]: https://bugzilla.suse.com/show_bug.cgi?id=1215926
[使用 Quadlet 部署的 Nextcloud]: https://www.youtube.com/watch?v=mlqWeLkG55U

[Cockpit 298] 容器管理界面明显成熟，因为我终于能够使用 Cockpit 来管理我所有的家庭工作负载。

![](/assets/posts/2023-10/cockpit-298.png)

[Cockpit 298]: https://cockpit-project.org/blog/cockpit-298.html

我们建议刚接触不可变操作系统空间（更目录只读的系统）的用户阅读 [transactional-update 指南]。用户还可以使用 [Toolbox] 安装其​​他软件，而无需重新启动到新快照，这对于无法重新启动的调试尤其方便。

[transactional-update 指南]: https://kubic.opensuse.org/documentation/transactional-update-guide/transactional-update.html
[Toolbox]: https://kubic.opensuse.org/blog/2019-10-22-toolbox/

我们制作了一个简短的 YouTube [播放列表]，其中包含一些有关如何在家中实际使用 Leap Micro 的教程。

[播放列表]: https://www.youtube.com/watch?v=j8kWT7HSjbw&list=PL_AMhvchzBacAxIOv3_lRHBRrIUNo6Abp

![](/assets/posts/2023-10/hqdefault.jpg)

------

原文：[Leap Micro 5.5 availability and Leap Micro 5.3 EOL](https://news.opensuse.org/2023/10/12/leap-micro-55-hands-on/)，作者：Lubos Kocman