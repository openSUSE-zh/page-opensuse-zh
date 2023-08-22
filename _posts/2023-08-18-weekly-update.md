---
author: Poplar at twilight
date: 2023-08-18 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: PostgreSQL、Xen 和 glibc 在 Tumbleweed 中更新
image: /assets/posts/2023-08/postgresql.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

本周的 openSUSE Tumbleweed 快照表现稳定，没有大的更新。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

虽然每周更新一次 Tumbleweed 可能会积累较大的更新，但本周的每日更新将较小的更新。

最新快照是 [20230816]。此快照通过 [ncurses] 6.4.20230812 更新修复了编译器警告。该软件包添加了一些补丁并改进了 `wgetnstr()` 和 `wget_wnstr()` 的[联机帮助页]。用于读取联机帮助页的 [man] 2.11.2 也得到了更新。man 通过在构建较少的提示时将页面名称中的 `$` 字符替换为 `?` 来增强安全性，以及其他改进，例如处理数据库条目以更好地链接以及重新组织数据库以实现可重复性。可视文件管理器 [mc] 4.8.30 现在支持使用 [PCRE] 2 库作为搜索引擎，并改进了 `extfs` 帮助程序和 `patchfs`。[yast2-installation] 4.6.7 更新进行了一项更改，解决了需要在启动脚本中使用 `awk` 实用程序的特定问题。

[20230816]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/W5YGH7Z4O44NDIXD7PPH2MRKVXXPXMYS/
[Ncurses]: https://en.wikipedia.org/wiki/Ncurses
[联机帮助页]: https://manpages.opensuse.org/
[mc]: https://midnight-commander.org/
[man]: https://gitlab.com/man-db/man-db
[PCRE]: https://en.wikipedia.org/wiki/Perl_Compatible_Regular_Expressions
[yast2-installation]: https://github.com/yast/yast-installation

快照 [20230815] 修复了 [389-ds] 更新的崩溃问题。389-ds 2.4.0~git74.4297d88 版本带来了持续不断的测试和改进[多监听线程功能]。[gtk4] 更新至 4.12.0 为列表小部件提供了一些新功能，并在 `GtkFileLauncher` 中提供了 `always-ask` 属性。检查器工具在辅助功能选项卡中提供了更多信息。[ndctl] 78 更新改进了 [CXL] 支持，并删除了一些补丁。[postgresql15] 15.4 更新解决了安全漏洞，包括 [CVE-2023-39417]（防止将某些字符替换到可能导致安全问题的扩展脚本中）和 [CVE-2023-39418]（确保正确执行行安全策略）。该软件包还调整了 [Unicode 国际组件]处理方式，以便为 PostgreSQL 16 做准备。[yast2-trans] 更新了格鲁吉亚语、斯洛伐克语、日语、捷克语和荷兰语的 POT 文件。多个 [pypi] 包也获得更新。

[CXL]: https://www.computeexpresslink.org
[20230815]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XNZ32NA3VEWHYHRRAGK462K23S6NBNQ6/
[389-ds]: https://github.com/389ds/389-ds-base
[多监听线程功能]: https://lwn.net/Articles/634113/
[gtk4]: https://www.gtk.org/
[ndctl]: https://github.com/pmem/ndctl
[postgresql15]: https://www.postgresql.org/
[CVE-2023-39417]: https://www.suse.com/security/cve/CVE-2023-39417.html
[CVE-2023-39418]: https://www.suse.com/security/cve/CVE-2023-39418.html
[yast2-trans]: https://software.opensuse.org/package/yast2-trans
[pypi]: https://pypi.org/

快照 [20230814] 只有一个包更新。[python-Pygments] 2.16.1 更新改进了一些文档，并提供了有关创建终端代码突出显示命令以及将 [TrueType] 字体加载到 ImageFormatter 以将突出显示的代码格式化为图像的指南。Python 库还具有适用于各种编程语言和格式的新语法荧光笔。

[20230814]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/AAJVWSJAZLNOSANW5KVMOCJ6TC7ZN7ZY/
[python-Pygments]: https://pygments.org/
[TrueType]: https://de.wikipedia.org/wiki/TrueType

同样，快照 20230813 也对一个软件包进行了更新。绑定包 [python-pyzmq] 25.1.1 与用于构建 Python 3.12 wheels 的 Cython 0.29.35 进行了一些兼容性修改，后者不再需要 Cython 3。该软件包还改进了错误信息，添加了 Cython 作为构建时依赖项，并清理了用于以非阻塞方式检查 [ZeroMQ] 套接字状态的 `Socket.poll()` 方法。

[20230813]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/HH5JOQUSYTHC7TUVK476F6YMEACJ7UCI/
[python-pyzmq]: https://pypi.org/project/pyzmq/
[cython]: https://cython.org/
[zeromq]: https://zeromq.org/

快照 [20230812] 提供了网络浏览器 [Mozilla Firefox] 新的大版本——116.0.2；更新主要针对增强性能和功能。Firefox 提供了多个 CVE 修复，包括内存漏洞、堆栈缓冲区溢出漏洞，以及消除了通过点击劫持绕过权限请求的可能性。一个新功能是侧边栏切换器，它允许用户轻松访问书签、历史和同步标签面板。[NetworkManager] 1.44.0 更新带来了一项重大改进，它引入了一个新的链接设置，用于保存与内核链接相关的属性（包括参数），现在它支持通过 `ipv6.dhcp-pd-hint` 连接属性发送 DHCPv6 前缀委托提示。Xfce 文件搜索工具 [Catfish] 4.18.0 带来了性能改进，增强了用户体验，使其更流畅、反应更灵敏。该软件包还允许根据不同的文件类别进行更精细、更具体的搜索。[glibc] 2.38 的更新引入了 `strlcpy` 和 `strlcat` 函数，并解决了一个与使用带有格式指定符和最小宽度指定符的 printf 系列函数有关的漏洞。[systemd] 253.8 的更新增强了安全性，并为 `systemd` 的 `bus` 组件添加了最小边界检查。systemd 还清理了一些改进和核心组件。快照还更新的其他几个软件包

[20230812]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WGU54T2FGDM4AUUDMLYMA3HLDWNORHKY/
[Mozilla Firefox]: https://www.mozilla.org/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[networkmanager]: https://networkmanager.dev/
[catfish]: https://docs.xfce.org/apps/catfish/start
[xfce]: https://www.xfce.org/
[glibc]: https://www.gnu.org/software/libc/
[systemd]: https://freedesktop.org/wiki/Software/systemd/

快照 [20230811] 更新了 [nodejs20] 20.5.1。新版本处理了数个 CVE： [CVE-2023-32002]、[CVE-2023-32558] 和 [CVE-2023-32004]。[xen] 4.17.2_02 的更新解决了 [x86 AMD] 系统上的推测性返回堆栈溢出漏洞。[yast2-country] 4.6.3 的更新允许用户将日期更改为晚于 2032 年。[re2c] 3.1 软件包引入了新选项，如用于捕获组的 `--leftmost-captures` 和用于非捕获组的语法。命令行工具和实用程序软件包 [xz] 5.4.4 更新了文档和翻译，最新的 openSUSE-repos-Tumbleweed 软件包禁用了 [LeapMicro] 上的 [NVIDIA] 软件包构建，因为部署预计会在容器内安装所有驱动程序和工具。

[20230811]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/2NPYCK6OEJZSBPIHSY2KPPWKMOCLNYBO/
[nodejs20]: https://nodejs.org/en/
[CVE-2023-32002]: https://www.suse.com/security/cve/CVE-2023-32002.html
[CVE-2023-32558]: https://www.suse.com/security/cve/CVE-2023-32558.html
[CVE-2023-32004]: https://www.suse.com/security/cve/CVE-2023-32004.html
[xen]: https://xenproject.org/
[X86]: https://en.wikipedia.org/wiki/X86-64
[amd]: https://www.amd.com/en
[yast-country]: https://github.com/yast/yast-country
[re2c]: https://re2c.org/
[xz]: https://tukaani.org/xz/
[nvidia]: https://www.nvidia.com/
[leapmicro]: https://get.opensuse.org/leapmicro/5.4/

------

原文：[PostgreSQL, Xen, glibc Update in Tumbleweed](https://news.opensuse.org/2023/08/18/postrgresql-xen-glibc-up-in-tw/)，作者：Douglas DeMaio
