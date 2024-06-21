---
author:  Poplar at twilight
date: 2024-06-20 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Leap Micro 6.0 进入 Beta 阶段
image: /assets/posts/2024-06/leapmicro54-rpi.jpg
categories:
- 更新通告
tags:
- Leap
- 翻译作品
- 官方新闻
---

openSUSE Leap Micro 6.0 Beta 现已发布！我们预计，随着基础设施准备工作的推进，它将很快过渡到 RC（候选发布）和 GA（一般可用）版本。Leap Micro 6.0 Beta 的 ISO 文件可在 [get.opensuse.org] 或直接在 [download.opensuse.org] 上找到。

[get.opensuse.org]: https://get.opensuse.org/leapmicro/6.0/
[download.opensuse.org]: https://download.opensuse.org/distribution/leap-micro/6.0/appliances/

## 关于 Leap Micro

Leap Micro 6.0 是对 [SLE Micro 6.0] 的重新命名，该系统是 SUSE 推出的一款超可靠的容器和虚拟机主机。这是第一个基于新代码库 “SUSE Linux Framework One”（以前称为 ALP）公开发布的产品。

[SLE Micro 6.0]: https://www.suse.com/products/micro/

Leap Micro 6.X 适用于 x86_64 和 aarch64，每 6 个月发布一次，并支持至下一个版本发布。也就是说，一旦 Leap Micro 6.2 发布，Leap Micro 6.0 就会结束生命周期（EOL）。

Leap Micro 6.X 特意排除了与 [Rancher 和 Elemental] 相关的所有内容，因为 Rancher 部署中的 SLE Micro 无需订阅即可免费使用。

[Rancher 和 Elemental]: https://elemental.docs.rancher.com/

## 不再需要传统的安装程序

Leap Micro 6.X 是通过[自安装镜像]（self-install image）部署的，它会将预配置镜像写入磁盘并扩大根分区。用户可以使用 [combustion、ignition] 或默认的 jeos-firstboot 向导进行系统初始设置。

[自安装镜像]: https://www.youtube.com/watch?v=j8kWT7HSjbw
[combustion、ignition]: https://documentation.suse.com/sle-micro/6.0/html/Micro-deployment-raw-images/index.html#deployment-preparing-configuration-device

不要因为 `openSUSE-Leap-Micro-6.0-*.iso` 现在无法下载而认为它不可安装。我们将该镜像称为 "软件包镜像"，它基本上是 DVD 上的离线存储库。

## 新的 FDE、VMWare 和云镜像

除了自安装镜像外，Micro 6.0 还带有 qcow、全盘加密和实时镜像。所有镜像均可在 download.opensuse.org 上找到。

Leap Micro 6.X 还首次实现了云启动（cloud-init），因此在发布后不久，我们还将在 GCP、Azure 和 AWS 上提供[云镜像]。

[云镜像]: https://build.opensuse.org/project/show/Cloud:Images:LeapMicro_6.0

## 产品构建的变化

Leap Micro 6.X 正在使用新的[产品生成器]而不是旧的产品生成器。这样我们就能从 SLE Micro 6.0 新设计的维护工作流程中获取更新信息，这也是 openSUSE 维护团队的首选。

[产品生成器]: https://build.opensuse.org/package/show/openSUSE:Tools/product-composer

## 存储库和维护工作流程的变更

Leap Micro 5.X 用户可通过名为 [repo-sle-update] 的存储库接收到对应版本的 SLE Micro 的所有更新。在 Leap Micro 6.X 中，该存储库已不复存在。

[repo-sle-update]: https://github.com/openSUSE/openSUSE-repos/blob/main/opensuse-leap-micro5-repoindex.xml#L26

相反，[repo-main] 存储库将包含 SUSE Linux Micro 相关版本迄今为止发布的所有更新。

[repo-main]: https://github.com/openSUSE/openSUSE-repos/blob/main/opensuse-leap-micro6-repoindex.xml#L8

请注意，存储库路径也略有改变，我们将通过下载服务器的兼容性符号链接，在用户运行 `zypper dup -releaser 6.0` 时，通过 `transactional-update` shell 迁移至新地址。

## 管理存储库定义的新方法

[openSUSE-repos] 对于我们的用户来说并不陌生，但是，openSUSE Leap Micro 6.0 首次预装了 `openSUSE-repos`。openSUSE 存储库使用本地 [RIS] 服务，可以让我们轻松地通过包更新来维护存储库定义（repository definitions）。

[openSUSE-repos]: https://news.opensuse.org/2023/07/31/try-out-cdn-with-opensuse-repos/
[RIS]: https://en.opensuse.org/openSUSE:Standards_Repository_Index_Service

我们建议 5.5/5.4 版本的用户在迁移至新系统前，运行 `zypper in openSUSE-repos` 以确保获得最新的[存储库路径]。

[存储库路径]: https://download.opensuse.org/distribution/leap-micro/6.0/product/repo/

## 文档

请参阅 [SLE Micro 6.0 文档]，包括发行说明。

[SLE Micro 6.0 文档]: https://documentation.suse.com/sle-micro/6.0/

## 报告问题

请参阅我们的[提交错误报告页面]中的 Leap Micro 部分。

[提交错误报告页面]: https://en.opensuse.org/openSUSE:Submitting_bug_reports#Regular_release_products

## 下一步行动

缺少维护设置是结束 Alpha 阶段的长期障碍，要不然发行版本身是稳定且功能齐全的。现在我们已经有维护设置，我们需要解决一些剩余的基础设施问题，用户可以期待在接下来的几天内发布。我们希望最好是在下周 [oSC2024] 之前发布新版本。

[oSC2024]: https://events.opensuse.org/conferences/oSC24/

----

原文：[Leap Micro 6.0 reaches Beta](https://news.opensuse.org/2024/06/19/os-leap-micro-reaches-beta/)，作者：Lubos Kocman