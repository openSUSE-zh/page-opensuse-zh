---
author: Poplar at twilight
date: 2023-08-31 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Tumbleweed 因开放构建服务迁移而减慢更新速度
image: /assets/posts/misc/update_tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] Tumbleweed 暂时降低了快照发布的频率，以支持持[上周开放构建服务的迁移工作和数据中心移动]。

[openSUSE]: https://get.opensuse.org/
[上周开放构建服务的迁移工作和数据中心移动]: https://suse.org.cn/%E7%A4%BE%E5%8C%BA%E6%96%B0%E9%97%BB/2023/08/23/OBS-notice.html

发布工程师团队在每周会议上报告说，Tumbleweed 构建的登记被有意暂停，以免给所需的 [OBS] 迁移带来额外压力。

[每周会议]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FEIEONE7CECY7XW6ZKFCCXIC6NNJMKLD/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[OBS]: https://build.opensuse.org/

第一次登记的构建发生在周一，通过了 [openQA] 的快照是 [20230828]，更新了六个软件包。[ImageMagick] 7.1.1.15 的更新在合并到上游后删除了一个 [CVE] 补丁。ImageMagick 纠正了 RGBA 图像的一些设置并解决了一些图像兼容性问题。[clamav] 0.103.9 的更新解决了可能的[拒绝服务攻击]漏洞，修复了 [CVE-2023-20197]。此更新还修复了编译器警告，这些警告可能会在 [Clang] 16 编译器中变成错误。硬件识别和配置数据包 [hwdata] 已更新至 0.373 版本，并对 [PCI]、USB 和供应商 ID 进行了更新。[java-11-openjdk] 11.0.20.1 的更新带来了紧急版本，以响应 2023 年 7 月更新中的回归，并解决了 Central Directory Entry 头无效的问题。用于帮助解决 [Y2038 问题]的 [wtmpdb] 已更新至 0.9.1，并包含修复手册页参考，并修正了 32 位系统上的 printf 格式说明符。[Xfce] 用户将很高兴看到 [xfce4-terminal] 1.1.0 的更新，它引入了各种更改，包括允许将参数传递给自定义命令、在不安全的粘贴对话框中翻译字符串以及改进显示选项卡的窗口同步。该软件包还增加了对 [VteTerminal] 中动态滚动的支持并增强了首选项对话框。

[openQA]: https://openqa.opensuse.org/
[20230828]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/D57IQQP73CVCDBALL5OYJOXYPMHAEEQG/
[ImageMagick]: https://imagemagick.org/index.php
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[clamav]: https://www.clamav.net/
[拒绝服务攻击]: https://en.wikipedia.org/wiki/Denial-of-service_attack
[CVE-2023-20197]: https://www.suse.com/security/cve/CVE-2023-20197.html
[Clang]: https://en.wikipedia.org/wiki/Clang
[hwdata]: https://github.com/vcrhonek/hwdata
[PCI]: https://en.wikipedia.org/wiki/Peripheral_Component_Interconnect
[java-11-openjdk]: https://openjdk.org/projects/jdk/11/
[wtmpdb]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/JO6ZRYWANF6NVKCSB3PZR2DXVI65VMYR/
[Xfce]: https://www.xfce.org/
[Y2038 问题]: https://en.wikipedia.org/wiki/Year_2038_problem
[xfce4-terminal]: https://docs.xfce.org/apps/terminal/start
[VteTerminal]: https://wiki.gnome.org/Apps/Terminal/VTE

上周 [20230823] 构建生成了一个快照；这发生在每周博客发布之前，但在“[一周回顾]”发布之后。此快照更新了六个软件包。[php8] 8.2.9，解决了 [CVE-2023-3824]（长度检查不足可能导致[堆栈缓冲区溢出]）和 [CVE-2023-3823]（可能导致在解析外部 XML 时加载外部实体），这可能导致 PHP 可访问的任何本地文件泄露。[gpgme] 1.22.0 的更新可以防止签名验证期间出现错误的明文，并防止返回错误的数据错误而不是一般错误。该软件包还添加了几个补丁，并有一些新的界面变化。安全通信库 [gnutls] 3.8.1 添加了一个补丁来修复缺少的兼容性扩展，并添加了对 [RFC 9258 外部 PSK 导入器]的支持。快照中要更新的其他软件包有 [apache2-mod_php8] 8.2.9、[gpgmeqt] 1.22.0 和 [libupnp] 1.14.18，其中包括对小型服务器中套接字错误的繁忙循环的修复。

[20230823]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/SB5JENIFREFJVHVOMK5KDHBM22P5THSJ/
[一周回顾]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DSD7J7NBGX3JB2UF2SWUEKZRXBSROEFT/
[php8]: https://www.php.net/
[CVE-2023-3824]: https://www.suse.com/security/cve/CVE-2023-3824.html
[CVE-2023-3823]: https://www.suse.com/security/cve/CVE-2023-3823.html
[堆栈缓冲区溢出]: https://en.wikipedia.org/wiki/Stack_buffer_overflow
[gpgme]: https://www.gnupg.org/related_software/gpgme/
[gnutls]: https://www.gnutls.org/
[RFC 9258 外部 PSK 导入器]: https://datatracker.ietf.org/doc/rfc9258/
[apache2-mod_php8]: https://www.php.net/
[gpgmeqt]: https://www.gnupg.org/related_software/gpgme/
[libupnp]: https://github.com/pupnp/pupnp

在迁移工作导致的构建速度降低结束后，预计会有一些事情伴随着新快照的到来而发生。根据[发布工程师会议]，[systemd] 254.1 正在排队中，但目前由于[性能回归]而被阻止；[glibc] 性能[回归修复]可能会在下一个快照中发布；[Linux 内核] 6.5 已经提交，并将通过 [openQA] 测试。

[发布工程师会议]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FEIEONE7CECY7XW6ZKFCCXIC6NNJMKLD/
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[Linux 内核]: https://www.kernel.org/
[性能回归]: https://github.com/systemd/systemd/issues/28765
[glibc]: https://www.gnu.org/software/libc/
[回归修复]: https://bugzilla.opensuse.org/show_bug.cgi?id=1214324

------

原文：[Tumbleweed Slows for Open Build Service Move](https://news.opensuse.org/2023/08/31/tw-slows-for-obs-move/)，作者：Douglas DeMaio
