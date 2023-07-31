---
author: Poplar at twilight
date: 2023-07-31 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 使用 openSUSE-repos 尝试新的 CDN
image: /assets/posts/2023-07/zypp-team.png
categories:
- 更新通告
tags:
- Tumbleweed
- Leap
- 翻译作品
- 官方新闻
---

一段时间以来，[Dirk Mueller] 一直在后台努力争取赞助 CDN 订阅。在他的努力下，[Fastly.com] 同意为 openSUSE 项目提供带宽赞助。我们主要打算用它来改善 download.opensuse.org 在全球不同地区的可达性（延迟），当然也可以扩展到其他用途。

[Dirk Mueller]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4YOJ2MMSET5JN42T2H2GAHQG5MG5YGBT/
[Fastly.com]: https://www.fastly.com/

[openSUSE-repos] 通过发行版核心存储库的[存储库索引服务（RIS）]为核心存储库简化了 openSUSE 存储库管理；其最新更新将用户切换到新的 [cdn.opensuse.org]。

[openSUSE-repos]: https://github.com/openSUSE/openSUSE-repos
[存储库索引服务（RIS）]: https://en.opensuse.org/openSUSE:Standards_Repository_Index_Service
[cdn.opensuse.org]: https://code.opensuse.org/leap/features/issue/128

Tumbleweed 刚刚发布了这一变更，openSUSE Leap 15.5 用户将在未来几天内通过维护更新收到这一变更。该变更也将作为 Leap Micro 5.5 的一部分提供。不想等待的用户可以从 [Base:System/openSUSE-repos] 获取新功能。

[Base:System/openSUSE-repos]: https://build.opensuse.org/package/show/Base:System/openSUSE-repos

## 为你的发行版安装 openSUSE-repos

openSUSE-repos [会备份并禁用]所有具有原始文件名的默认系统存储库。用户定义的存储库将保持不变。

[会备份并禁用]: https://github.com/openSUSE/openSUSE-repos/pull/26/files#diff-884378f84879c3adc93b6ee826da6c8c39ea6d299cb2352270538d95d9acb960

为你的发行版安装正确的软件包，就可以了：

```
sudo zypper in openSUSE-repos-Leap

sudo zypper in openSUSE-repos-Tumbleweed

sudo zypper in openSUSE-repos-MicroOS

sudo zypper in openSUSE-repos-LeapMicro
```

## 关于存储库索引服务

zypp 支持将（远程）repoindex.xml 转换为（本地）存储库定义的 RIS 服务。这些定义由前缀标识，在本例中为 `openSUSE`:

示例： `/etc/zypp/repos.d/openSUSE:repo-oss.repo`

像将用户切换到 CDN 这样的更改只需在服务模板中做一行更改即可。服务模板可以引用 zypp 变量，例如新的 /etc/zypp/vars.d/DIST_ARCH。

```
# head /usr/share/zypp/local/service/openSUSE/repo/repoindex.xml
<repoindex ttl="0"
disturl="https://cdn.opensuse.org"
distsub="leap/"
distver="${releasever}"
debugenable="false"
sourceenable="false">

<repo url="%{disturl}/distribution/%{distsub}%{distver}/repo/oss"
alias="repo-oss"
name="%{alias} (%{distver})"
enabled="true"
autorefresh="true"/>
```

来看看我们的服务：

```
# zypper ls # list-services
# | Alias | Name | Enabled | GPG Check | Refresh | Type
--+----------------------------------------+----------------------+---------+-----------+---------+-------
1 | openSUSE | openSUSE | Yes | ---- | Yes | ris
2 | NVIDIA | NVIDIA | Yes | (r ) Yes | Yes | rpm-md
3 | google-chrome | google-chrome | Yes | (r ) Yes | Yes | rpm-md
```

你可以选择使用 `zypper ref -s` 来有意地刷新服务。你可以使用 `zypper refs -r` 手动触发刷新服务，包括其存储库。

如果你想尝试自己的服务，`/var/log/zypper.log` 将帮助你排除大部分与服务相关的问题。有关 zypper 和 RIS 的更多信息，请参阅 [doc-o-o]。

[doc-o-o]: https://doc.opensuse.org/projects/libzypp/HEAD/zypp-services.html

## 回滚

用户可以按照项目 [README] 文件中的说明恢复旧的存储库文件。

[README]: https://github.com/openSUSE/openSUSE-repos#restoring-original-distribution-repositories

------

原文：[Try out the new CDN with openSUSE-repos](https://news.opensuse.org/2023/07/31/try-out-cdn-with-opensuse-repos/)，作者：Lubos Kocman
