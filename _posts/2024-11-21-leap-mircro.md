---
author: Poplar at twilight
date: 2024-11-21 07:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Leap Micro 6.1 Alpha 现已发布。为 Leap Micro 5.5 结束生命周期做好准备。
image: /assets/posts/misc/lpm.png
categories:
- 更新通告
tags:
- Leap Micro
- 翻译作品
- 官方新闻
---

Leap Micro 6.1 Alpha ISO 文件可在 [get.opensuse.org] 上找到。除非发现一些严重问题，否则用户有望在数周内看到 6.1 版本的正式发布。

[get.opensuse.org]: https://get.opensuse.org/leapmicro/6.0/

## 关于 Leap Micro

Leap Micro 6.1 是 SUSE 推出的超可靠容器和虚拟机主机，[SUSE Linux Enterprise Micro 6.1] 的重命名版本。Leap Micro 每年发布两次，维护两个以上的版本。

[SUSE Linux Enterprise Micro 6.1]: https://www.suse.com/products/micro/

## Leap Micro 5.5 将随着 Leap Micro 6.1 的发布而 EOL

随着 Leap Micro 6.1 的发布，Leap Micro 5.5 结束生命周期（EOL）；用户将不再收到维护更新，社区建议用户升级到 6.1。

更保守的用户可以继续使用 Leap Micro 6.0，直到 Leap Micro 6.2 发布前，它将继续收到更新。

## 显着变化

执行全新安装的用户将注意到首次启动向导的明显变化。现在，jeos-firstboot 向导可以创建额外的用户和可选的 2FA 密钥，但缺少 PAM 配置。缺少的功能将在 GM 版本中加入。

我们添加了 [soft-reboot support]（软重启支持）。

[soft-reboot support]: https://microos.opensuse.org/blog/2024-06-13-soft-reboot/

- 为 SAP 虚拟化加入 vhostmd。
- 新增 chrony-pool-empty 和 pf-bb-config。
- 针对 Arm 的 PREEMPT_RT 内核、ZRAM 支持以及主要用于 cockpit 的 TOTP 2fa pam 登录支持。
- 对 eBPF 规则进行 JIT 编译。

SLE Micro 6.1 获得了对 ppc64le 的额外支持，但我们打算让 Leap Micro 仅支持 x86_64 和 aarch64。主要原因是社区没有支持这些架构的需求。

## 理解单个镜像

用户可以参考 [Leap Micro 6.0 公告]，我们已经介绍过这部分内容。

[Leap Micro 6.0 公告]: https://news.opensuse.org/2024/06/25/leap-micro-60-availability/

## 从旧版本升级

从 5.X 迁移的建议是进行全新安装，因为 6.1 是一个全新的主要版本。

对于那些想尝试迁移的用户，请按照[升级指南]进行操作。

[升级指南]: https://en.opensuse.org/SDB:System_upgrade_to_LeapMicro_6.0

从 6.0 迁移应该可以使用 `zypper --releasever 6.1 dup inside transactional-update shell`

我们有可能会包含[一个新的迁移工具]，该工具预计将作为 Hackweek 的一部分在 Leap Micro 6.1 Beta 中开发。这将使未来的升级变得更加简单。

[一个新的迁移工具]: https://hackweek.opensuse.org/projects/new-migration-tool-for-leap

## 发行说明

用户可以参考 [SLE Micro 6.1 发行说明]。

[SLE Micro 6.1 发行说明]: https://www.suse.com/releasenotes/index.html

Leap Micro 6.1 使用 [openSUSE-repos] 进行存储库管理。社区强烈建议用户留意这个细节，尤其是对于迁移至新版本的人。这是一篇[解释 openSUSE-repos 如何工作]的文章。

[openSUSE-repos]: https://github.com/openSUSE/openSUSE-repos
[解释 openSUSE-repos 如何工作]: https://news.opensuse.org/2023/07/31/try-out-cdn-with-opensuse-repos/

与 6.0 一样，Leap Micro 6.1 不再有[专用的 SLE 更新软件源]。它已被并入[主软件源]。

[专用的 SLE 更新软件源]: https://github.com/openSUSE/openSUSE-repos/blob/main/opensuse-leap-micro5-repoindex.xml
[主软件源]: https://github.com/openSUSE/openSUSE-repos/blob/main/opensuse-leap-micro6-repoindex.xml

----

原文：[Leap Micro 6.1 Alpha is now available. Get ready for Leap Micro 5.5 End of Life.](https://news.opensuse.org/2024/11/20/leap-micro-61-alpha-availability/)，作者：Lubos Kocman