---
author: Poplar at twilight
date: 2024-11-30 07:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 使用 opensuse-migration-tool 升级到 Leap Micro 6.1 Beta
image: /assets/posts/2024-11/opensuse-migration-tool.png
categories:
- 更新通告
tags:
- Leap Micro
- 翻译作品
- 官方新闻
---

Leap Micro 6.1 Beta 于上周三发布。ISO 文件可以在 [get.opensuse.org] 找到，由于这主要是 [SUSE Linux Enterprise Micro 6.1] 的改版，除非发现一些严重问题，否则用户可以期待下周快速过渡到 RC 和 GA。

[get.opensuse.org]: https://get.opensuse.org/leapmicro/6.0/
[SUSE Linux Enterprise Micro 6.1]: https://www.suse.com/products/micro/

我们在 Leap Micro 6.1 中引入了一个[新的迁移工具][opensuse-migration-tool]，希望它能简化未来 Leap Micro 版本的升级，尤其是新的主要版本。让我们来看看如何在旧版本的 Leap Micro 上使用 [git] 部署它，以及如何在 Leap Micro 6.1 Beta 上安装它。

[git]: https://git-scm.com/
[opensuse-migration-tool]: https://github.com/openSUSE/opensuse-migration-tool

新工具为用户带来的主要好处是不必手动处理新版本中可能引入的[任何版本软件源变更]。这将有望带来更顺畅、更直接的升级。**目前，`opensuse-migration-tool` 仍处于试验阶段。**

[任何版本软件源变更]: https://en.opensuse.org/SDB:System_upgrade_to_LeapMicro_6.0#2._Fetch_new_repositories_and_new_keys

## 在 Leap 或 Tumbleweed 上，使用 Leap Micro 容器测试该工具

首先，我们必须运行一个可以升级到 6.1 版本的旧版 Leap Micro。

由于我们在本例中使用 `distrobox`，因此我们的主机可以运行 Leap、Tumbleweed、Aeon。Distrobox 将有权访问你的主目录，包括 git checkout。

关键步骤：**使用 `–pre-release` 将 `Leap Micro 6.1` 作为可用的升级目标。**

```shell
$ git clone https://github.com/openSUSE/opensuse-migration-tool.git
$ cd opensuse-migration-tool
$ distrobox create --image registry.opensuse.org/opensuse/leap-micro/6.0/toolbox --name micro60
$ distrobox enter micro60 # from now on inside distrobox
$ zypper in bc jq curl dialog sed gawk
$ ./opensuse-migration-tool --pre-release --dry-run
$ sudo ./opensuse-migration-tool --pre-release # Chooose Leap Micro 6.1
$ cat /etc/os-release # should confirm that you've upgraded to 6.1
```

如果你要删除容器，只需输入 `exit`，然后输入 `podman stop micro60` 或 `docker stop micro60` 最后输入 `distrobox rm micro60`。然后你就可以重新开始。

## 在 Leap Micro 主机或虚拟机内测试该工具

因为我们在 Leap Micro 6.0 甚至 5.5 主机或虚拟机中进行测试，所以我们必须使用 `transactional-update` shell。如前文所述，重要的是要从早于 6.1 版本的 Leap Micro 开始测试，迁移目标都是 MicroOS。

确保使用 `–pre-release` 将 6.1 Beta 作为可行的迁移目标。

```shell
$ sudo transactional-update shell # from now on inside shell
$ zypper in git bc jq curl dialog sed gawk 
$ git clone https://github.com/openSUSE/opensuse-migration-tool.git
$ cd opensuse-migration-tool
$ ./opensuse-migration-tool --pre-release --dry-run
$ sudo ./opensuse-migration-tool --pre-release  # Choose Leap Micro 6.1 as a target
$ reboot
```

你不用担心把事情搞砸了，你可以通过 `transactional-update` shell 始终从上一个快照启动。

## 测试 Leap Micro 6.1 到 MicroOS 升级迁移

由于没有比 Leap Micro 6.1 Beta 更新的版本，唯一的迁移/升级目标是 MicroOS。

这个例子的目的是表明 Leap Micro 6.1 存储库已经包含 `opensuse-migration-tool`。因此，不需要从 `git checkout` 运行它，除非你想修改它。

```shell
$ sudo transactional-update shell
$ zypper in opensuse-migration-tool # Will work only on Leap Micro 6.1
$ sudo opensuse-migration-tool --dry-run # to oversee what would change
$ sudo opensuse-migration-tool # MicroOS is expected to be the only migration option from Leap Micro 6.1 Beta
```

一旦升级到 MicroOS（实际上就是 openSUSE Tumbleweed），就不必再重新运行 opensuse-migration-tool。你确实没有更新的系统可以迁移，而且你会收到 openSUSE Tumbleweed 不支持的消息。这种情况在意料之中。

## 已知问题

- [BUG 1233982 - 升级到 6.1 (netcfg) 失败](https://bugzilla.opensuse.org/show_bug.cgi?id=1233982)

在基于 Distrobox 的测试中，这个问题肯定会出现。Distrobox 以绑定挂载方式挂载到 `/etc/hostname` 上，netcfg 的升级会在后脚本中失败。这个问题可以忽略（在交互式 `zypper dup` 中键入 `i`）。

迁移工具首先尝试以非交互方式运行，万一失败，它会通过在交互模式下重新运行 zypper dup 来将问题解决留给用户。

## 贡献

如果您有兴趣做出贡献，请随时发送合并请求、问题报告或功能请求至 [opensuse-migration-tool] 存储库。

----

原文：[Upgrading to Leap Micro 6.1 Beta with opensuse-migration-tool](https://news.opensuse.org/2024/11/29/try-opensuse-migration-tool-leap-micro-61-beta/)，作者：Lubos Kocman