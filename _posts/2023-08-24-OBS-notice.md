---
author: Poplar at twilight
date: 2023-08-24 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 开放构建服务会临时下线
image: /assets/posts/2023-08/obsul.png
categories:
- 社区新闻
tags:
- OBS
- 翻译作品
- 官方新闻
---

从 UTC 时间 8 月 24 日 16:00（北京时间 8 月 25 日 00:00 A.M.）开始，使用某些 [openSUSE 服务和工具]的用户将遇到服务中断，因为[开放构建服务]（OBS）将发生重大转变。

[openSUSE 服务和工具]: https://status.opensuse.org/
[开放构建服务]: https://openbuildservice.org/

整个 [openSUSE OBS 系统]正在迁移到新的数据中心，并将在第二天恢复上线时在新硬件上运行。

[openSUSE OBS 系统]: https://build.opensuse.org/

迁移过程结束后，由于通用构建系统有了新家，构建服务工程师要处理中断问题，因此可能会出现一些导致延迟上线的故障排除。

搬迁到新数据中心的初始阶段需要暂时关闭所有服务。这一间隔将有助于将文件修改同步到新的数据中心，预计将于 8 月 25 日（UTC）恢复服务。

在此迁移阶段，一系列服务将经历暂时停机，其中包括：

* amqp.opensuse.org
* api.opensuse.org
* build.opensuse.org
* rabbit.opensuse.org
* registry.opensuse.org
* software.opensuse.org
* obs-debug.opensuse.org
* obs-grafana.opensuse.org
* obs-measure.opensuse.org
* obs-telegraf.opensuse.org
* errbit.opensuse.org
* glitchtip.opensuse.org
* gs-stats.opensuse.org
* gs-stats-stage.opensuse.org
* obs-analyze.opensuse.org

[在对该通知的响应中]，需要注意的是，除非使用缓存版本，否则依赖于 registry.opensuse.org 镜像的多个持续集成系统将会遇到故障。

[在对该通知的响应中]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6K7XWWXNLVESDYOKRUKKCII5L3B4R3NH/

我们正在努力尽量减少不便，但在此期间建立临时服务器来提供常用下载的镜像是不可行的。用户仍然可以从 Docker Hub 访问最新的 Tumbleweed 和 Leap 基础容器。这些镜像可以在以下位置找到：

```
Tumbleweed: https://hub.docker.com/r/opensuse/tumbleweed
Leap: https://hub.docker.com/r/opensuse/leap
```

请注意，Docker Hub 上通常的拉取速度限制将适用于这些映像。

暂时停机和镜像不可用是迈向更强大、更高效系统的必要一步。人们可以通过 [buildservice 邮件列表]了解服务恢复和正常运行的最新情况。

[buildservice 邮件列表]: https://lists.opensuse.org/archives/list/buildservice@lists.opensuse.org/

------

原文：[Open Build Service Will Be Down Temporarily](https://news.opensuse.org/2023/08/23/obs-will-be-down-temp/)，作者：Douglas DeMaio
