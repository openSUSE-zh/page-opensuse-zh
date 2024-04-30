---
author: Poplar at twilight
date: 2024-04-30 08:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 在 Leap 候选发布版本中试用 Cockpit
image: /assets/posts/2024-04/cockpit.png
categories:
- 更新通告
tags:
- Leap
- 翻译作品
- 官方新闻
---

[openSUSE] Leap 15.6 于上周结束了 Beta 测试，并进入了候选发布[阶段]，版本号为 [669.1]。您可以从 [get.opensuse.org] 获取 Leap 15.6 RC 安装镜像。

[openSUSE]: https://opensuse.org/
[阶段]: https://en.opensuse.org/openSUSE:Roadmap
[669.1]: https://openqa.opensuse.org/tests/overview?distri=opensuse&version=15.6&build=669.1&groupid=50
[get.opensuse.org]: https://get.opensuse.org/leap/15.6/

这意味着该版本被认为是功能齐全的，贡献者应该专注于错误修复并消除任何剩余的构建失败。

迫切想在自己的机器上安装 Leap 15.6 的用户应检查该版本的[已知问题]，看看是否有任何妨碍使用 RC 的问题。

[已知问题]: https://en.opensuse.org/openSUSE:Known_bugs_15.6

openSUSE 发布团队为 Leap 和 [SUSE Package Hub] 用户提供了期待已久的 [Cockpit]。用户可以从 [Leap Micro 教程]中熟悉 Cockpit 基于 Web 的管理界面。

[Cockpit]: https://cockpit-project.org/
[SUSE Package Hub]: https://packagehub.suse.com/
[Leap Micro 教程]: https://www.youtube.com/playlist?list=PL_AMhvchzBacAxIOv3_lRHBRrIUNo6Abp

我们建议用户不要公开暴露使用管理接口的 9090 端口；就像人们不应该向公众公开路由器的网络接口一样。

```
$ sudo zypper in cockpit

$ sudo systemctl enable --now cockpit.socket

$ firefox https://localhost:9090 #以 root 用户身份登录，获取管理员权限
```

我们之前曾尝试将 Cockpit 加入 Leap 15.5，但存在一些阻碍。得益于 python311 堆栈的更新，此次加入成为可能，这是 SLES 15 SP 6 大规模更新工作以及[统一品牌]的一部分。openSUSE 团队能够一次性构建 Cockpit 并通过此 RC 版本为 SLES 和 Leap 用户提供它。

[统一品牌]: https://suse.org.cn/社区新闻/2024/04/10/wallpaper.html

<strong>Leap 15.X 上没有现有的 [SELinux] 策略，因此 Cockpit 的 SELinux 部分预计无法工作。</strong>发布团队希望在 Leap 16 中制定 SELinux 政策，因此相关部分将在未来的版本中正常工作。

[SELinux]: https://github.com/SELinuxProject/selinux

祝玩得愉快！

----

原文：[Try Cockpit in Leap Release Candidate](https://news.opensuse.org/2024/04/29/try-cockpit-in-leap-rc/)，作者：Lubos Kocman 和 Douglas DeMaio