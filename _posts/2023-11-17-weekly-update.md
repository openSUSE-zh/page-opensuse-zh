---
author: Poplar at twilight
date: 2023-11-17 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Gear、Frameworks 和 Kernel 在 Tumbleweed 中更新
image: /assets/posts/2023-11/kdenlive.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 在本周的快照中更新了大量软件包。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

快照 [20231114] 不仅与本周开始的快照一样庞大，还有大量软件更新。企业身份管理开源客户端 [sssd] 更新至 2.9.3 版本。此次更新使代理提供商能够处理证书映射和匹配规则。sssd 现在通过允许代理提供商管理的用户配置为本地智能卡身份验证，从而改进了身份验证选项。[xterm] 388 的更新通过添加一个 `stty` 已知的特殊字符类别来增强 `disallowPasteControls` 功能。xterm 还更新了 `config.guess` 和 `config.sub`。[ncurses] 6.4.20231111 的更新改进了配置脚本中的信息，并增加了一个用于修改复位命令的补丁，以避免在终端使用调制解调器时改变 `clocal`。颜色管理包 [argyllcms] 更新至 3.0.2，修复了影响传播 [i1D3] 功能的模块中的一个拼写错误，并修复了设备链接配置文件的崩溃问题。[libstorage-ng] 4.5.156 的更新合并了一个特定的 GitHub Issue 并扩展了测试套件。快照还更新了几个 [RubyGems] 包。openSUSE 还发布了适用于 [ARM] 架构的快照 [20231114][20231114-2]，包含了本周早些时候发布的更新包。[Linux Kernel] 6.6.1、[KDE Frameworks 5.112.0] 和 [KDE Gear 23.08.3] 可供 Arm 滚动版本的贡献者和用户使用。


[20231114]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VZJQXHY3IGEGMQTOPUV6RAZRPJYDCGND/
[20231114-2]: https://lists.opensuse.org/archives/list/arm@lists.opensuse.org/thread/CGAHPWKXBXTCVKPUU3RJYGUOAE65GGT6/
[sssd]: https://sssd.io/
[xterm]: https://invisible-island.net/xterm/
[i1D3]: https://www.xrite.com/categories/calibration-profiling/i1d3-oem
[ncurses]: https://en.wikipedia.org/wiki/Ncurses
[argyllcms]: https://www.argyllcms.com/
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[RubyGems]: https://rubygems.org/
[ARM]: https://www.arm.com/
[Linux Kernel]: https://www.kernel.org/
[KDE Frameworks 5.112.0]: https://kde.org/announcements/frameworks/5/5.112.0/
[KDE Gear 23.08.3]: https://kde.org/announcements/gear/23.08.3/

快照 [20231113] 中针对其他架构发布了 [Frameworks 5.112.0][KDE Frameworks 5.112.0]。[NetworkManagerQt] 的更新修复了一个不正确的信号签名、删除了一个不准确的注释并调整了事件侦听以适应 [DBus] 服务注册事件和接口添加事件。[KIO] 在命名规则中，用 `fsType` 代替了 `slow`。[KConfig] 在 `kconfigwatcher` 中进行了调整，以避免断言（asserting）绝对路径，并在 `dbussanitizer` 中进行了修改，以防止尾部出现斜线；该更新通过防止在绝对路径上发送或接收 DBus 通知的尝试，加强了安全措施。[ffmpeg-6] 6.0.1 版本对 [AVCodecs、AVformat 和 AVfilters] 进行了改进，在上游解决问题后，维护者移除了一个补丁。[Mozilla Firefox] 119.0.1 存在影响 HTML 元素功能的严重错误，并解决了与颜色应用相关的问题。[python311-packaging] 23.2 版本对解析标记进行了修改，改进了对丰富元数据的支持，更新了文档，并通过更新 [pip] 解决了漏洞问题。[python-cryptography] 41.0.5 重点关注与 [OpenSSL] 集成相关的增强和调整。此更新有一个新功能来支持即将发布的 [pyOpenSSL]。[createrepo_c] 1.0.2 进行了一些更改，防止在没有 [zstd] 的情况下进行构建，并删除了对 [libmagic] 的依赖。用于电子邮件处理的邮件传输代理（MTA）的 [postfix] 更新至 3.8.3。postfix 解决了 [SMTP] 服务器中与 [TLS] 封装模式下的客户端证书验证错误相关的缺陷。postfix 还解决了 `update_postmaps` 脚本中的语法错误，并调整了 `config.postfix` 引起的权限。快照中还更新了其他几个软件包。

[20231113]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/FEFKO7MOXNNF64BNFMDAUXPY4ZS4BO76/
[NetworkManagerQt]: https://api.kde.org/frameworks/networkmanager-qt/html/index.html
[DBus]: https://www.freedesktop.org/wiki/Software/dbus/
[KIO]: https://api.kde.org/frameworks/kio/html/index.html
[KConfig]: https://api.kde.org/frameworks/kconfig/html/
[ffmpeg-6]: https://www.ffmpeg.org/
[AVCodecs、AVformat 和 AVfilters]: https://ffmpeg.org/doxygen/trunk/structAVCodec.html
[Mozilla Firefox]: https://www.mozilla.org/
[python311-packaging]: https://pypi.org/project/packaging/
[pip]: https://pypi.org/%20version
[python-cryptography]: https://pypi.org/project/cryptography/
[OpenSSL]: https://www.openssl.org/
[pyOpenSSL]: https://pypi.org/project/pyOpenSSL/
[createrepo_c]: https://github.com/rpm-software-management/createrepo_c
[libmagic]: https://man7.org/linux/man-pages/man3/magic_list.3.html
[SMTP]: https://en.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol
[TLS]: https://en.wikipedia.org/wiki/Transport_Layer_Security
[postfix]: https://www.postfix.org/
[zstd]: https://facebook.github.io/zstd/

openSUSE 在快照 [20231110] 和适用于 arm 的快照 [20231114][20231114-2] 中，为 KDE 用户与贡献者带来了 [Gear 23.08.3][KDE Gear 23.08.3] 更新。解压缩工具 [Ark] 解决了一些格式问题和 MIME 类型处理。Ark 还修复了与打开 AppImage 文件相关的问题，检查了使用过时 ISO mimetypes 的情况，并调整了测试中硬编码的 bzip2 mimetypes，以提高灵活性。文件管理器 [Dolphin] 进行了更新，以反映 KActivities 从 Frameworks 迁移到 Plasma 的情况。这些修改有助于改进 Dolphin 的功能和调整。[Kdenlive] 发生了大量变更。此次更新修复了时间映射，确保在片段替换过程中正确处理音频，解决项目持续时间不准确的问题，防止字幕样式丢失，增强渲染，并改进了关键帧处理和片段大小调整功能。[Linux Kernel] 6.6.1 也在快照 [20231110] 中发布，它修复了多个驱动程序模块的错误，并增强了特定硬件设备的兼容性，包括对串行、USB、[ALSA]、蓝牙等的调整。 [gimp] 2.10.36 的更新包括对 [ASE] 和 [ACB] 调色板的支持以及新的渐变选项。增强了对非正方形比例 GIF 的支持，并改进了文本工具的格式化行为。[postgresql16] 16.1 的更新添加了对 [LLVM] 16 和 17 的支持。它还进行了一些安全修复，包括处理未知类型参数以及在计算新数组维度时防止[整数溢出]。[binutils] 2.41、[gawk] 5.3.0 等更新已在快照中发布。

[20231110]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/C4WISFOQGDXM3GJRJQQV7N3WNUCOSFGO/
[Ark]: https://apps.kde.org/ark/
[Kdenlive]: https://kdenlive.org/en/
[Dolphin]: https://apps.kde.org/dolphin/
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[ASE]: https://www.lifewire.com/ase-file-2619688
[ACB]: https://creativecloud.adobe.com/zh-Hans/discover/article/adobe-coloring-book
[LLVM]: https://llvm.org/
[postgresql16]: https://www.postgresql.org/
[整数溢出]: https://en.wikipedia.org/wiki/Integer_overflow
[binutils]: https://www.gnu.org/software/binutils/
[gawk]: https://www.gnu.org/software/gawk/
[dolphin]: https://apps.kde.org/dolphin/
[gimp]: https://www.gimp.org/

------

原文：[Gear, Frameworks, Kernel updates in Tumbleweed](https://news.opensuse.org/2023/11/16/gear-framworks-kernel-up-in-tw/)，作者：Douglas DeMaio