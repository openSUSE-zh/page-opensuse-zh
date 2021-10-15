---
author: Hanjingxue Boling # 翻译者的名字
date: 2021-10-15 22:20:00 +0800
layout: post
license: CC-BY-SA-3.0
title: OpenSSH、Squid 和 PostgreSQL 在 Tumbleweed 中更新
image: /assets/posts/misc/update_tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周发布的三个 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 快照为文本编辑器、浏览器、电子邮件客户端、数据库管理系统和许多其他软件带来了更新。

[Mozilla Firefox](https://www.mozilla.org/)、[Thunderbird](https://www.thunderbird.net/)、[nano](https://www.nano-editor.org/) 和 [PostgreSQL](https://www.postgresql.org/) 都在最新的快照 [20211012](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/M2KWCPKIL5E3QOA5L3W5TS5J64W7NHEL/) 中发布。[Firefox](https://www.mozilla.org/) 新主要版本 Firefox 93.0，增加了对优化图像格式 [AVIF](https://en.wikipedia.org/wiki/AV1) 的支持，与其他图像格式相比，该格式显著减小了文件大小。该浏览器还改进了隐私保护的网络兼容性，并修复了多个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures) 。 [Thunderbird](https://www.thunderbird.net/) 91.2.0 解决了许多相同的 CVE，修复了日历的一些问题，并修复了未正确考虑子文件夹的新邮件通知。文本编辑器 nano 的 5.9 版本为 YAML 文件添加了语法高亮；[fetchmail](https://www.fetchmail.info/) 6.4.22 添加了一些补丁，解决了与 IMAP 连接相关的 CVE，现在强调与 [OpenSSL](https://www.openssl.org/) 1.1.1 和 3.0.0 兼容。[postgresql 14](https://www.postgresql.org/about/news/postgresql-14-released-2318/) 的新主要版本为繁重的工作负载提供了改进，增强了分布式工作负载，并添加了更多[预定义角色](https://www.postgresql.org/docs/14/predefined-roles.html)，如 `pg_read_all_data`、`pg_write_all_data` 和 `pg_database_owner`。快照中要更新的其他软件包包括 [GNOME](https://www.gnome.org/) 的文档查看器 [evince](https://gitlab.gnome.org/GNOME/evince) 41.2、[Flatpak](https://flatpak.org/) 1.12.1、图形库 [gegl](https://gegl.org/) 0.4.32、[glusterfs](https://www.gluster.org/) 9.3 以及许多 [RubyGems](https://rubygems.org/) 和 [YaST](https://yast.opensuse.org/) 软件包更新。

快照 [20211011](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/T66V27BZ5RHUVMOPDUYILNEVVJ33KXVK/) 还添加了几个 [RubyGems](https://rubygems.org/)，例如样式指南包 [rubygem-rubocop 1.22.1](https://rubygems.org/gems/rubocop/versions/1.22.1)，它为所有`Safe: false` 或 `SafeAutoCorrect：false` 的所有复杂产品系统的文档添加了安全部分等新功能。本次快照对 [rubygem-spring 3.0](https://rubygems.org/gems/spring/versions/3.0.0) 进行了另一个 RubyGems 更新，它添加了新的 [Ruby](https://www.ruby-lang.org/en/) 和 [Rails](https://guides.rubyonrails.org/5_2_release_notes.html) 依赖项。[ImageMagick](https://imagemagick.org/index.php) 7.1.0.9 的更新消除了“大量的 [VisualStudio](https://visualstudio.microsoft.com/) 编译器警告”，并进行了大量 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures) 修复。[libreoffice](https://www.libreoffice.org/) 7.2.2.1 的更新进行了更改，将 [poppler](https://poppler.freedesktop.org/) 添加为除 [Tumbleweed](https://get.opensuse.org/tumbleweed/) 之外的所有代码流的供应商。[OpenSSH](https://www.openssh.com/) 8.8 增加了一些新的功能和安全修复；根据更新日志，该版本默认禁用了使用 [SHA-1](https://en.wikipedia.org/wiki/SHA-1) 哈希算法的 [RSA](https://en.wikipedia.org/wiki/RSA_(cryptosystem)) 签名，因为 SHA-1 哈希算法在密码学上有缺陷。openSUSE 软件包 [checkmedia](https://software.opensuse.org/package/checkmedia) 的主要版本从 5.4 版更新到 6.1 版，它提供了一个添加版本选项来标记媒体并修复了自动检测 Red Hat 媒体的合适签名位置的问题。快照中要更新的其他软件包是 [libvirt](https://libvirt.org/) 7.8.0、[libzypp](https://github.com/openSUSE/libzypp) 17.28.5 和 [firewalld](https://firewalld.org/) 1.0.1 等。

缓存代理 [squid](http://www.squid-cache.org/) 新的主要版本 [squid 5.2](http://www.squid-cache.org/Versions/v5/RELEASENOTES.html) 是快照 [20211008](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VV75TKFFFZWMG7WY3KMJNSAUTSEXOM6U/) 中更新的众多软件包之一。HTTP、HTTPS 和 FTP 的 Web 支持包在内容交付网络中添加了 [Kerberos 组帮助程序](http://www.squid-cache.org/Versions/v5/RELEASENOTES.html#ss2.3)和[循环检测](http://www.squid-cache.org/Versions/v5/RELEASENOTES.html#ss2.5)。新版本还修复了 [Web 缓存通信协议](https://en.wikipedia.org/wiki/Web_Cache_Communication_Protocol)的问题，这些问题可能导致基于 [CVE-2021-28116](https://www.suse.com/zh-cn/security/cve/CVE-2021-28116.html) 的信息泄露。[Linux Kernel](https://www.kernel.org/) 5.14.9 提供了多个 USB 附加功能，并为 [AArch64](https://en.wikipedia.org/wiki/AArch64) 的线程切换和系统调用进入/退出添加了内存标记扩展支持检查。[CVE-2021-42013](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-42013) 已通过 [apache2](https://httpd.apache.org/) 2.4.51 更新修复。 [redis](https://redis.io/) 6.2.6 的更新侧重于修复涉及行为更改的错误，并通过在通过[延迟过期](https://stackoverflow.com/questions/36172745/how-does-redis-expire-keys)删除键时添加延迟监视器示例进行了一些改进。[萨摩亚](https://en.wikipedia.org/wiki/Samoa)已决定不再遵守夏令时，[约旦](https://en.wikipedia.org/wiki/Jordan)将夏令时改为 2 月的最后一个星期四，这反映在[时区 2021c](https://github.com/tzinfo/tzinfo-data/releases) 软件包更新中。 快照中要更新的其他软件包是 [libsolv](https://github.com/openSUSE/libsolv) 0.7.20、[Samba](https://www.samba.org/samba/history/samba-4.15.0.html) 4.15.0、[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.4.43 、[KDE Gear](https://kde.org/announcements/gear/21.08.1/) 的 [umbrello](https://umbrello.kde.org/) 和 [yakuake](https://apps.kde.org/yakuake/) 软件包的 21.08.1 版本。

------

原文：[OpenSSH, Squid, PostgreSQL Update in Tumbleweed](https://news.opensuse.org/2021/10/15/openssh-squid-postgresql-update-in-tw/)，作者：Douglas DeMaio