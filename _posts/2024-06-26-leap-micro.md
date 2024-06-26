---
author:  Poplar at twilight
date: 2024-06-26 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Leap Micro 6.0 现已正式发布，Leap Micro 5.4 已终止生命周期。
image: /assets/posts/2024-06/lpm.png
categories:
- 更新通告
tags:
- Leap
- 翻译作品
- 官方新闻
---

openSUSE 现已推出新的 Leap Micro 主要版本。你可以从 [get.opensuse.org] 下载 ISO 文件。

[get.opensuse.org]: https://get.opensuse.org/leapmicro/6.0/

Leap Micro 6.0 使用全新的代码库，装载了大量新工具，并首次发布了云镜像。

## 关于 Leap Micro

Leap Micro 6.0 与 SUSE Linux Enterprise Micro 6.0 二进制兼容，后者是 SUSE 推出的超可靠容器和虚拟机主机。Leap Micro 每年发布两次，并支持两个以上版本。

## Leap Micro 5.4 生命周期结束

随着 Leap Micro 6.0 的发布，Leap Micro 5.4 生命周期结束，不再发布更新；我们建议用户建议升级至新系统。

对技术更保守的用户可以升级至 Leap Micro 5.5，该版本会继续收到更新，直至 Leap Micro 6.1 发布。

## 了解变种版本

所有 Leap 和 SLE Micro 通常都有两种变体：Base（基本版）和 Default（默认版）。

Base 和 Default 都有容器堆栈，但只有 Default 变体才有虚拟机堆栈。

如果您不打算使用虚拟机并且关心存储空间，那么 Base 可能是适合您的变体。

我们在 [get-o-o] 提供的所有镜像都是 Default 镜像（虚拟机+容器），因为我们希望它们适合大多数用户。

[get-o-o]: https://get.opensuse.org/leapmicro/6.0/

适用于各种架构及其变种的 ISO 文件均可以从下述链接下载获得：

- <https://download.opensuse.org/distribution/leap-micro/6.0/appliances/>

## 对个别镜像文件的解释

一般建议所有人使用的是自安装镜像（[self-install image]）。这种镜像是一个可启动镜像，带有快速向导，可将预配置的镜像写入驱动器并扩展根分区。此过程从启动大约需要 5 分钟。

[self-install image]: https://www.youtube.com/watch?v=j8kWT7HSjbw

预配置镜像（preconfigured image）是原始可启动镜像（raw bootable image），您可以手动写入/写入磁盘或 SD 卡。镜像可以通过 Ignition/Combustion 进行配置，或者默认使用 jeos-firsboot 向导。

我们有一个带有 kernel-rt 的实时镜像（Real-time image）、用于 KVM 的 qcow 镜像、VMWare 镜像以及一个带有[全盘加密]的全新原始镜像。

[全盘加密]: https://www.youtube.com/watch?v=Zd0kLDQsz88

想要在虚拟机中尝试我们的全盘加密镜像的用户需要确保他们使用的是模拟 tpm-2 芯片和 UEFI。这可以通过 virt-manager 轻松实现。

SLE Micro 6.0 放弃了传统的安装程序，转而使用自安装介质（self-install media），因此 Leap Micro 6.0 也没有旧版安装工具。

新的软件包镜像（Packages image）不是可启动介质。这只是一个带有离线存储库的 ISO 镜像文件，以备您需要时使用。

Leap Micro 6.0 还首次提供了公共云镜像（[Public Cloud Images]）。

[Public Cloud Images]: https://build.opensuse.org/project/show/Cloud:Images:LeapMicro_6.0

主要的公共云服务提供商很快将提供 Leap Micro 镜像。

## 从 5.X 升级

我们建议进行全新安装，因为这是一个全新的主要版本。

对于那些想尝试迁移的人，请按照[升级指南]进行操作。

[升级指南]: https://en.opensuse.org/SDB:System_upgrade_to_LeapMicro_6.0

## 发行说明

用户可以参考 [SLE Micro 6.0 Release Notes]。

[SLE Micro 6.0 Release Notes]: https://www.suse.com/releasenotes/x86_64/SL-Micro/6.0/index.html

Leap Micro 6.0 使用 [openSUSE-repos] 进行存储库管理。我们强烈建议用户留意这个细节，尤其是对于那些准备进行迁移的人。请阅读[这篇解释 openSUSE-repos 如何工作的文章]。

[openSUSE-repos]: https://github.com/openSUSE/openSUSE-repos
[这篇解释 openSUSE-repos 如何工作的文章]: https://news.opensuse.org/2023/07/31/try-out-cdn-with-opensuse-repos/

Leap Micro 6.0 不再使用[专用的 SLE 更新存储库]。该存储库已经合并到[主存储库]中。

[专用的 SLE 更新存储库]: https://github.com/openSUSE/openSUSE-repos/blob/main/opensuse-leap-micro5-repoindex.xml
[主存储库]: https://github.com/openSUSE/openSUSE-repos/blob/main/opensuse-leap-micro6-repoindex.xml

----

原文：[Leap Micro 6.0 is now available. Leap Micro 5.4 reaches End of Life.](https://news.opensuse.org/2024/06/25/leap-micro-60-availability/)，作者：Lubos Kocman