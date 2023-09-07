---
author: Poplar at twilight
date: 2023-09-06 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 新的 Leap Micro Alpha 增强了 SELinux
image: /assets/posts/2023-09/lm.png
categories:
- 更新通告
tags:
- Leap Micro
- 翻译作品
- 官方新闻
---

openSUSE 项目很高兴地宣布，其现代轻量级主机操作系统 [Leap Micro 5.5] 刚刚进入 Alpha 阶段。

[openSUSE]: https://get.opensuse.org/
[Leap Micro 5.5]: https://get.opensuse.org/leapmicro/5.5/

该版本带来了大量增强功能和新增功能，有望使其成为用户更通用、更高效的选择。

最明显的变化是增加了 settroubleshoot 服务器并将其与 [cockpit-selinux] 模块集成。

[cockpit-selinux]: https://cockpit-project.org/guide/latest/feature-selinux

Leap Micro 还增加了可轻松集成 UEFI 固件更新的 fwupdate 和 fwupdate-efi 软件包。

此外，Leap Micro 还添加了 git、用于图像处理的 skopio 和使用 podman 模拟 Docker CLI 的 podman-docker。新增了适用于 x86_64 和 aarch64 的 QEMU Copy On Write (QCOW) RAW 镜像版本。

Leap Micro 不提供图形用户界面或桌面版本。用户可使用 [Cockpit] 通过网络浏览器管理主机操作系统。

[Cockpit]: https://cockpit-project.org/

Leap Micro 5.5 Alpha 基于 [SLE Micro 5.5 Beta]，并构建在 [SLE 15 SP 5] 更新之上。在 2023 年 9 月下旬发布 SLE Micro 5.5 RC 后不久，用户就能看到 Leap Micro 5.5 Beta。我们计划于 2023 年 10 月中旬与 SLE Micro 5.5 一起在全球发布。该时间表完全由 SLE Micro 准备情况决定。

[SLE Micro 5.5 Beta]: https://www.suse.com/c/suse-linux-enterprise-micro-5-5-public-beta-is-out/
[SLE 15 SP 5]: https://www.suse.com/releasenotes/x86_64/SUSE-SLES/15-SP5/index.html

更多详情请参见[路线图]。

[路线图]: https://en.opensuse.org/openSUSE:Roadmap

用户应该知道，Leap Micro 不使用 `zypper`，而是使用 `transactional-update`。

Leap Micro 可用于边缘、嵌入式和物联网部署等多种计算环境。开发人员和专业人士可以构建和扩展用于航空航天、电信、汽车、国防、医疗保健、酒店、制造、数据库、Web 服务器、机器人、区块链等领域的系统。

我们建议用户查看[发行说明]以了解更多内容。

[发行说明]: https://www.suse.com/releasenotes/x86_64/SLE-Micro/5.5/index.html

用户可[在此] [提交]错误报告。

[提交]: https://en.opensuse.org/openSUSE:Submitting_bug_reports
[在此]: https://bugzilla.suse.com/enter_bug.cgi?product=openSUSE%20Leap%20Micro

大型开发团队可以尝试使用 Leap Micro，并过渡到 SUSE 的 SLE Micro 进行扩展维护和认证，从而为其业务增值。

要下载 ISO 镜像文件，请访问 [get.opensuse.org]。

[get.opensuse.org]: https://get.opensuse.org/

你可在[此处]查找有关该版本的最新文档。

[此处]: https://documentation.suse.com/sle-micro/

------

原文：[New Leap Micro Alpha Enhances SELInux](https://news.opensuse.org/2023/09/06/new-leap-micro-alpha-enhances-selinux/)，作者：Lubos Kocman 和 Douglas DeMaio
