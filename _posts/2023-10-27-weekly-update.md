---
author: Poplar at twilight
date: 2023-10-27 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Apache、Plasma 和 firewalld 在 Tumbleweed 中更新
image: /assets/posts/2023-10/redis.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 的 [YaST] 本周有重大更新，迁移至新的主要版本。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[YaST]: https://yast.opensuse.org/

本周 Tumbleweed 还更新了其他几个软件包，例如 [Apache]、[Redis]、[GVfs]、[Vim]、[KDE] 的 [​​Plasma 5.27.9] 和 [Frameworks] 等。

[Apache]: https://httpd.apache.org/
[Redis]: https://redis.io/
[GVfs]: https://gitlab.gnome.org/GNOME/gvfs
[Vim]: https://www.vim.org/
[​​Plasma 5.27.9]: https://kde.org/announcements/plasma/5/5.27.9/
[Frameworks]: https://kde.org/announcements/frameworks/5/5.111.0/
[KDE]: https://kde.org/

快照 [20231025] 发布了 KDE [​​Plasma 5.27.9]。[Plasma 桌面][KDE]的最新更新包进行了一些更改，以避免将每个复制的文件递归地添加到桌面。其最新的文件组件确保与较旧的框架版本的 [kconfigwidgets] 兼容。[Kwin] 解决了错误生成的 `QHoverEvent`，并通过将 `QKeySequence` 功能添加到虚拟桌面管理器的一部分来增强功能。[firewalld] 2.0.1 的更新通过确保 `--list-all-zones` 输出一致并且正确显示默认区域（zone）属性来解决与命令行界面相关的问题。区域和策略的活动属性会准确显示，而 `--get-active-zone` 命令则包括默认区域。[nftables] 集成也得到了增强，因此主表（main table）现在总是在启动时刷新。其他几个问题也得到了解决，包括 [ICMPv6] 的 [IPv6] 名称的正确使用以及使用 nftables 时 IP 范围和 ipset 值的配置。快照还更新了 [GNOME]。[gnome-control-center] 45.1 的更新增强了使用 Escape 键关闭“光标大小”和“快捷方式”对话框的功能。它还在“关于”部分支持更多类型的处理器。[gnome-maps] 45.1 缩短了下载服务文件时的超时时间，从而提高了性能。此快照还将 [gnome-terminal] 更新到 3.50.1 版本；新版本会检查 [Flatpak] 环境中的备用终端并改进了标题栏首选项的处理。[kernel-firmware] 本月的第二个版本 20231019 修复了机器人电子邮件脚本，更新了 [AMD] CPU 微代码，并引入了在 PR/补丁处理期间发送电子邮件的支持。[Redis] 7.2.2 版本修复了一个严重的 [CVE]； [CVE-2023-45145] 创建了一个竞争条件，可能会导致启动时未经授权的 Unix 套接字权限，这种情况自 2.6.0 RC 版本以来就已存在。快照中还更新了几个软件包。

[20231025]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LK4AQ7SM4SA4F6GJSN744BC2TTE6S2VH/
[kconfigwidgets]: https://api.kde.org/frameworks/kconfigwidgets/html/index.html
[Kwin]: https://invent.kde.org/plasma/kwin
[firewalld]: https://firewalld.org/
[nftables]: https://git.netfilter.org/nftables/
[ICMPv6]: https://en.wikipedia.org/wiki/ICMPv6
[IPv6]: https://en.wikipedia.org/wiki/IPv6
[GNOME]: https://www.gnome.org/
[gnome-control-center]: https://gitlab.gnome.org/GNOME/gnome-control-center
[gnome-maps]: https://gitlab.gnome.org/GNOME/gnome-maps
[gnome-terminal]: https://gitlab.gnome.org/GNOME/gnome-terminal
[Flatpak]: https://flatpak.org/
[kernel-firmware]: https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
[AMD]: https://www.amd.com/en
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[CVE-2023-45145]: https://www.suse.com/security/cve/CVE-2023-45145.html

快照 [20231023] 更新了一些 [GNOME] 软件包，例如 [gvfs]、[evolution] 和 [gnome-software] 45.1。[gnome-software] 45.1 的更新带来了各种样式修复、在图形用户界面中报告 [PackageKit] [GPG] 相关错误的能力，并改进了 [Flatpak] 权限检查；此处更新还包括了翻译更新。个人信息管理应用程序 evolution 3.50.1 的更新修复了一些错误，例如更正 UTF-16 编码文本文件的转换，启用可编辑字段的拼写检查以及更新默认日历颜色。[gnome-sudoku] 45.2 的更新修复了加载游戏时无法解决谜题的警告。GNOME 的虚拟文件系统实现包 [gvfs] 更新至 1.52.1，解决了防止在客户端中返回无效挂载缓存条目、使用 [DNS 服务发现]统一资源标识符（URI）时的身份验证问题以及网络文件系统组件中的 IPv6 URI 处理问题等问题。[harfbuzz] 8.2.2 的更新修复了 8.1.0 中在使用重复特征标签塑造字体方面的回退，并解决了解析 CSS 样式特征字符串时的回退。[virtualbox] 7.0.12 的更新解决了多个 [CVE]，例如 [CVE-2023-22098]、[CVE-2023-22099] 和 [CVE-2023-22100]，这些 CVE 可能会导致未经授权的访问和系统崩溃。快照中还更新了其他几个软件包，其中包括 [ruby​​gem-agama] 5，它具有一些增强功能，例如不重用存储建议中预先存在的交换分区、扩展软件服务以配置选定的模式并调整 [ALP Dolomite] 的存储设置。

[20231023]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2DPU4IJJPBQJ637NL5AEO4EVYGMGQZHV/
[evolution]: https://wiki.gnome.org/Apps/Evolution
[gnome-software]: https://gitlab.gnome.org/GNOME/gnome-software
[gnome-sudoku]: https://wiki.gnome.org/Apps/Sudoku
[DNS 服务发现]: http://www.dns-sd.org/
[harfbuzz]: https://github.com/harfbuzz/harfbuzz
[CVE-2023-22098]: https://www.suse.com/security/cve/CVE-2023-22098.html
[CVE-2023-22099]: https://www.suse.com/security/cve/CVE-2023-22099.html
[CVE-2023-22100]: https://www.suse.com/security/cve/CVE-2023-22100.html
[ruby​​gem-agama]: https://rubygems.org/gems/agama
[ALP Dolomite]: https://documentation.suse.com/alp/dolomite/html/alp-dolomite/index.html
[PackageKit]: https://www.freedesktop.org/software/PackageKit/
[GPG]: https://gnupg.org/

快照 [20231022] 发布了 [apache2] 2.4.58。Apache2 解决了与流内存管理相关的 [CVE-2023-45802] 和造成 DoS 漏洞的 [CVE-2023-43622]。Apache2 的更新还包括各种改进，例如通过 HTTP/2 增强对 WebSockets 的支持，以及引入新指令以在各种场景中更好地进行控制和日志记录。[ceph] 更新至 16.2.14.66，解决了与最小文件系统 [BlueFS] 相关的问题，并为其启用了 4K 分配单元。ceph 还启用了 [RISC-V] 构建。[dracut] 的更新解决了与 FIPS（联邦信息处理标准）设置相关的问题，这些问题导致各种测试场景中的测试失败和核心转储。[kernel-source] 更新至 6.5.8，增强了 [ALSA]，更改了与网络相关的组件，如网络驱动程序和协议，并解决了音频和声音支持的其他问题，例如 [Lenovo] 82YM 上无法正常工作的麦克风的 [ALSA SoC] 问题。[Pipewire] 0.3.83 的更新修复了回退问题，减少了音频转换中的内存使用量，并消除了 [JACK] 的缓冲区大小限制。[xfce4-terminal] 1.1.1的更新提高了 [X11] 和 [Wayland] 的兼容性。其他要更新的软件包包括 [libstorage-ng] 4.5.149、[yast2-storage-ng] 5.0.3、[freerdp] 2.11.2 等。

[20231022]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WGX2J7NJP6EF6E4WYZK2LOTUKZ5V5WRV/
[apache2]: https://httpd.apache.org/
[CVE-2023-45802]: https://www.suse.com/security/cve/CVE-2023-45802.html
[CVE-2023-43622]: https://www.suse.com/security/cve/CVE-2023-43622.html
[ceph]: https://ceph.io/
[BlueFS]: https://www.ibm.com/docs/en/storage-ceph/5?topic=bluestore-ceph-bluefs
[dracut]: https://dracut.wiki.kernel.org/index.php/Main_Page
[RISC-V]: https://riscv.org/
[kernel-source]: https://www.kernel.org/
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[ALSA SoC]: https://www.kernel.org/doc/html/v4.10/sound/soc/platform.html
[Pipewire]: https://pipewire.org/
[JACK]: https://jackaudio.org/
[xfce4-terminal]: https://gitlab.xfce.org/apps/xfce4-terminal
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[yast2-storage-ng]: https://github.com/yast/yast-storage-ng
[freerdp]: https://www.freerdp.com/
[lenovo]: https://www.lenovo.com/
[X11]: https://en.wikipedia.org/wiki/X_Window_System
[Wayland]: https://wayland.freedesktop.org/

快照 [20231020] 将 [man] 更新至 2.12.0，解决了手册页可移植性问题，并为很久以前的 [Y2K38 事件]启用了超过 2038 年的时间戳。[nftables] 1.0.9 的更新引入了自定义 conntrack 超时等改进以及对动态和更好地支持动态集等改进功能。此外，nftables 还修复了日志前缀超过 127 字节的崩溃问题。[sqlite3] 3.43.2更新修复了内存泄漏，并增强了 JSON 处理性能。该版本还增加了对 FTS5 的支持，允许删除索引记录而不保留已删除记录的内容。此快照还对 [YaST][yast2] 进行了大升级，使大量 [yast2] 软件包升级至版本 5。超过 50 个 yast2 软件包已过渡到版本 5，以与 SUSE 其中的下一个主要版本保持一致。

[Y2K38 事件]: https://en.wikipedia.org/wiki/Year_2038_problem
[20231020]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/44TV6N3JUAJ4W353LS7F74LY2PLUGFD2/
[man]: https://manpages.opensuse.org/
[sqlite3]: https://www.sqlite.org/index.html
[yast2]:https://github.com/yast/yast-yast2

快照 [20231019] 将 [KDE Frameworks 5.111.0] 投递至 [KDE Plasma][KDE] 用户手中。[KIO] 对 [dbusactivationrunner] 的服务激活进行了改进，并修复了一些对象路径。[Kirigami] 中的一个修复允许在关于页面中自定义 `donateUrl`，以移除捐赠按钮。[KImageFormats] 引入了对 [avif] 格式的重复计数的支持，修复了 raw 格式的多图像加载问题，并解决了其他各种问题，其中包括 HDR 和 [Gimp] 的 [xcf] 格式中的崩溃。据[报道]，[libnvme] 1.6+5 更新通过避免由于对用户空间缓冲区的未对齐直接内存访问而导致堆栈损坏以修复一个问题。正则表达式库 [oniguruma] 更新到 6.9.9 版本。oniguruma 将 Unicode 更新到 15.1.0 版本，引入名为 `and` 的新 API，解决与字符类和 [POSIX 括号]相关的问题。渲染库 [virglrenderer] 发布了第一个主要版本 1.0.0。此次更新过渡到了 Venus 协议，取消了 Venus 配置选项中的实验标签。该版本还改进了对虚拟机和宿主机之间用于同步的栅栏的处理。YaST 5 的更多主要版本也已发布，还有一些其他更新，其中包括 [samba] 4.19.2。

[20231019]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/VTQ4WWG7UKXJNGCYASW2GTPFJYXAESOC/
[KDE Frameworks 5.111.0]: https://kde.org/announcements/frameworks/5/5.111.0/
[KIO]: https://api.kde.org/frameworks/kio/html/index.html
[dbusactivationrunner]: https://www.freedesktop.org/wiki/Software/dbus/
[Kirigami]: https://github.com/KDE/kirigami
[KImageFormats]: https://api.kde.org/frameworks/kimageformats/html/index.html
[avif]: https://web.dev/learn/images/avif
[Gimp]: https://gitlab.gnome.org/GNOME/gimp
[xcf]: https://en.wikipedia.org/wiki/XCF_(file_format)
[报道]: https://github.com/linux-nvme/libnvme/pull/727
[libnvme]: https://github.com/linux-nvme/libnvme
[oniguruma]: https://github.com/kkos/oniguruma
[virglrenderer]: https://software.opensuse.org/package/virglrenderer
[samba]: https://www.samba.org/
[POSIX 括号]: https://en.wikibooks.org/wiki/Regular_Expressions/POSIX_Basic_Regular_Expressions

上周只更新了三个软件包的快照 [20231018] 未进入我们的每周审核中。此快照增强和改进了内核模块管理工具 [kmod]。kmod 31 引入了内核内解压缩（in-kernel decompression）以提高性能；[depmod] 现在支持单独的输出目录。[python-pytz 2023.3.post1] 替换已弃用的 `datetime.utcfromtimestamp()` 并添加对 [Python] 3.12 的支持。文本编辑器 [vim] 9.0.2043 也在快照中，它增强了文档、翻译并提供了一些修复。

[20231018]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/PU3NO2S35IJRIQGHIVDM2QAT76LZ3VJ6/
[kmod]: https://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
[depmod]: https://linux.die.net/man/8/depmod
[python-pytz 2023.3.post1]: https://pypi.org/project/pytz/
[python]: https://www.python.org/

------

原文：[Apache, Plasma, firewalld updates in Tumbleweed](https://news.opensuse.org/2023/10/27/apache-plasma-firewalld-up-in-tw/)，作者：Douglas DeMaio
