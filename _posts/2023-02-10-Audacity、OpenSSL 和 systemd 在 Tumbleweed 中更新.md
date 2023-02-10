---
author: Hanjingxue Boling
date: 2023-02-10 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Audacity、OpenSSL 和 systemd 在 Tumbleweed 中更新
image: /assets/posts/2023-02/audacity.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 在过去的一周发布了一些快照；并为二月份的第一个快照启动了自动迁移。

本周的快照所涵盖的软件包包括但不限于 [GCC](https://gcc.gnu.org/)、[GStreamer](https://gstreamer.freedesktop.org/)、[KDE Gear](https://kde.org/announcements/gear/22.12.2/)、博客标题中提到的数个软件包。

快照 [20230208](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3Z7UC3ERDE4IRDQTVY4ISPQ2ADZAV2S5/) 在本周为 [ImageMagick](https://imagemagick.org/index.php) 提供了第二次更新，ImageMagick [7.1.0.61](https://github.com/ImageMagick/Website/blob/main/ChangeLog.md) 版本改进了一些文档，并移动了 `-set profile` 命令行界面处理。[fetchmail](https://www.fetchmail.info/) 6.4.36 对多国语言翻译进行了更新。[xwayland](https://wayland.freedesktop.org/xserver.html) 22.1.8 的更新修复了第二种可能的[带外](https://en.wikipedia.org/wiki/Out-of-band_management)远程访问 OOB 访问。向后兼容的 xwayland 还修复了 [CVE-2023-0494](https://www.suse.com/security/cve/CVE-2023-0494.html)，它可能允许在 X 服务器运行特权和远程代码执行 [SSH](https://en.wikipedia.org/wiki/Secure_Shell) X 转发会话的系统上进行本地提权。快照还有其他几个软件包更新，包括 [hwdata](https://github.com/vcrhonek/hwdata) 0.367、[ncurses](https://en.wikipedia.org/wiki/Ncurses) 6.4.20230128、[texinfo](https://www.gnu.org/software/texinfo/manual/texinfo/html_node/) 7.0.2、[ceph](https://ceph.io/) 等。

快照 [20230207](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/QHXYPLL4AUQJZVC7APE6DLWDNSCKAD4B/) 对网络基础设施包 dnsmasq 2.89 进行了更新。[dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html) 修复了导致 DNS 缓存内部数据结构损坏和“缓存内部错误”日志记录的错误。变更日志指出，“该情况只在一个地方出现过，甚至生成一个测试用例来复现错误都花费了我们相当大的努力，但无法确保它不会发生，其效果是严重破坏了缓存。” [SELinux](https://github.com/SELinuxProject) 的策略分析工具 [setools](https://github.com/SELinuxProject/setools/wiki) 更新到 4.4.1 版本并更新了权限映射。setools 还进行了一些代码清理，并替换了一个已在 [NetworkX](https://networkx.org/) 3.0 版本中被删除的弃用函数。[webkit2gtk3](https://webkitgtk.org/) 2.38.4 更新改进了编解码器选择逻辑，更好地处理延迟，并改进了帧丢弃以避免音频与视频不同步。[kernel-firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git) 20230125 和 [Linux](https://www.kernel.org/) [kernel-source](https://www.kernel.org/) 6.1.10 的更新似乎分别有几个 [AMD](https://www.amd.com/en) 添加和 [arm64](https://www.arm.com/) 修复。

快照 [20230204](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/C3QWZ64Z6DJ7WJPPG6OA3NXFMXOVTSPK/) 将音频软件 [audacity](https://www.audacityteam.org/) 更新至 3.2.4 版本。由于此次升级，音频现在可以在 [audio.com](https://audio.com/) 上公开共享。Audacity 还添加了带有剪切、复制和粘贴按钮的新工具栏。openSUSE 在 [KDE Gear 22.12.2](https://kde.org/announcements/gear/22.12.2/) 发布后迅速将更新包送入风滚草用户手中。文件管理器 [Dolphin](https://apps.kde.org/dolphin/) 修复了在子目录无法打开时目录的大小。更新后的 [Kalendar](https://apps.kde.org/kalendar/) 修复了启动崩溃问题。视频编辑器 [Kdenlive](https://kdenlive.org/en/) 还修复了崩溃和未保存子剪辑的屏幕撕裂问题。[libstorage-ng](https://github.com/openSUSE/libstorage-ng) 4.5.68 更新了格鲁吉亚语翻译。[php8](https://www.php.net/) 8.1.15 有多个修复，包括修复 [opcode](https://en.wikipedia.org/wiki/Opcode) 更新后块优化传递中的错误比较。该软件包还改进了对速度优化的哈希算法 XXH3 的处理。

快照 [20230202](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/B2BOSLK23CHFOE7OOAEMSXBWDO37NEDX/) 将网络浏览器 [Mozilla Firefox](https://www.mozilla.org/) 更新至 109.0.1 版本；修复了一些表情符号字符。[NetworkManager](https://networkmanager.dev/) 1.40.12 的更新修复了在 [IPv4](https://en.wikipedia.org/wiki/Internet_Protocol_version_4) 共享模式下并发调用 [iptables](http://git.netfilter.org/iptables/) 的问题。用于配置和自定义字体访问的库 [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig/) 已更新至 2.14.2 版本。fontconfig 修复了描述中的拼写错误，调整了缩进并添加了渲染选项。

快照 20230202 将 [OpenSSL](https://www.openssl.org/) 从 1.1.1s 版本变更为 3.0.7 版本。新的 OpenSSL 版本被设置为默认版本，并且是一个跨越很长一段时间的重大项目，以使其可供用户使用。这些更改放宽了回归测试的加密策略要求，并删除了一些补丁。[OpenSSL 3.0](https://wiki.openssl.org/index.php/OpenSSL_3.0) 是一个主要版本，有许多软件包必须得到调整。OpenSSL 3.0 有很多改进。构建和安装过程发生了重大变化，许多结构在新版本中变得不透明。[迁移指南](https://www.openssl.org/docs/man3.0/man7/migration_guide.html)中提供了更多信息。

文本编辑器 [vim](https://www.vim.org/) 9.0.1270 有多个修复，包括一些缩进过多的代码和一个现在可以识别 NetworkManager 连接的修复。快照 20230202 更新了 [GStreamer](https://gstreamer.freedesktop.org/) 1.22.0 及其几个相同版本的插件。快照进行了一些 AV1 视频编解码器改进和一些 [WebRTC](https://webrtc.org/) 支持工作。快照还提供了用于 [Amazon AWS 存储](https://aws.amazon.com/products/storage/)和音频转录服务的新插件。

快照 [20230201](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/P2V7IAGOZUMWF43YUQTOSGBHW6FZGAGE/) 更新了一些软件包，例如 [gcc13](https://gcc.gnu.org/)。gcc13 13.0.1 plus 版本增加了对新前端 [Rust](https://www.rust-lang.org/) 和 [Modula-2](https://www.modula2.org/) 的支持。GCC 还修复了 [Go](https://go.dev/) 前端以修复 [s390x](https://en.wikipedia.org/wiki/IBM_System/390) 上的失败构建。本月的第一个快照具有重要意义，因为它启动了与 [i586](https://en.wikipedia.org/wiki/Pentium_(original)) 从 [factory](https://en.opensuse.org/Portal:Factory) 分离的 `zypper dup` 自动迁移。根据 openSUSE 上一次[发布工程会议](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/SWXNKZ4WVMQOZYVTL7DVSVZSFGZTI3OP/)的记录，由于重建计数器在项目之间不同步，因此更改软件源可能会导致一系列软件包降级。到三月底，预计所有的用户都将完成迁移；到那时，除了在 [factory](https://en.opensuse.org/Portal:Factory) 代码库的 Staging:O 工作流程中确定的大约 1,800 个包之外，Tumbleweed 将禁用新的 i586 软件包的构建或发布。

一月末的快照 [20230131](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WNVUIM2RRJKJLQEIIDKDYI4QWNEMEY7A/) 为图像编辑器 [ImageMagick](https://imagemagick.org/index.php) 提供了第一次更新，更新至 7.1.0.60 版本。ImageMagick 只收到三个提交，主要是清理一些代码。[systemd](https://freedesktop.org/wiki/Software/systemd/) 252.5 更新引入了一个预设，允许 [MicroOS](https://get.opensuse.org/microos/) 用户使用 systemd 用户单元，并添加了一个事务更新通知程序，允许（针对云和容器部署进行了优化的）发行版的用户在事务更新成功或失败时获得桌面通知。另一个在快照中更新的包是 [xterm](https://invisible-island.net/xterm/) 378，它改进了一些描述和几个检查，比如改进了对不受支持的格式化字符的检查。

------

原文：[Audacity, OpenSSL, systemd Update Tumbleweed](https://news.opensuse.org/2023/02/10/audacity-openssl-systemd-up-in-tw/)，作者：Douglas DeMaio