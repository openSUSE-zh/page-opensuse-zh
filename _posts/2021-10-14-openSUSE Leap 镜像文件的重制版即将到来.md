---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-10-14 18:40:00 +0800
layout: post
license: CC-BY-SA-3.0
title: openSUSE Leap 镜像文件的重制版即将到来
image: /assets/posts/misc/leap-yinyang.png
categories:
- 更新通告
tags:
- 翻译作品
- 官方新闻
- Leap
---

为了回应 openSUSE 用户的反馈，Leap 预计很快就会按季度或根据需要对该发行版进行定期[重建](https://openqa.opensuse.org/group_overview/88)。

这些 Leap ISO 镜像的重制版（respin iso）将接受 [openQA](https://openqa.opensuse.org/group_overview/88) 测试，并在[设置过程](https://github.com/openSUSE/openSUSE-release-process/issues/104)完成后有节奏地发布。

这些重制版镜像允许用户立即使用最新的错误修复和更新，这减少了安装通用（GA）版本后在线更新的带宽。 修正后的 ISO 镜像可以更新 [GRUB](https://www.gnu.org/software/grub/) 和 [shim](https://github.com/rhboot/shim) 之类的软件包，为用户改进这些引导加载程序和固件软件包。

更新后的 ISO 镜像在文件名中[包含一个数字扩展名](https://build.opensuse.org/package/binaries/openSUSE:Leap:15.3:Update:Respin/000product:Leap-dvd5-dvd-aarch64/images)，例如 15.3-X，以区别于 GA 版本，其校验和将与之前发布的镜像不同。 [get.opensuse.org](https://get.opensuse.org/) 上的旧版 ISO 镜像将被删除并替换为最新的 respin 镜像。

随着[设置过程](https://github.com/openSUSE/openSUSE-release-process/issues/104)和初始[重建](https://build.opensuse.org/package/binaries/openSUSE:Leap:15.3:Update:Respin/000product:Leap-dvd5-dvd-aarch64/images)的完成，测试结果与 [Leap 15.3](https://get.opensuse.org/leap/) 的原始 GA 版本几乎没有区别； 工作仍在继续，很快就会发布重制版镜像。

由于 Leap 和 SLE 都已连接，用户可以期待在任何 [SUSE Linux Enterprise](https://www.suse.com/products/server/) 重建后重新构建 Leap 镜像文件。

与 [openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) 博客类似，Leap 的每次重制预计都会在 [news.opensuse.org](https://news.opensuse.org/) 上发表一篇文章，向人们提供有关重建更改或修复内容的信息，这些信息也将在 [download.opensuse.org](http://download.opensuse.org/) 的[变更日志](http://download.opensuse.org/distribution/leap/15.3/ChangeLogs/)中提供。

------

原文：[Respin of openSUSE Leap Images are Coming](https://news.opensuse.org/2021/10/14/respin-of-os-leap-images-are-coming/)，作者：Douglas DeMaio