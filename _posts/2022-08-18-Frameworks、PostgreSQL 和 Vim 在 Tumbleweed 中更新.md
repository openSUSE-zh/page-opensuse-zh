---
author: Hanjingxue Boling
date: 2022-08-18 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: Frameworks、PostgreSQL 和 Vim 在 Tumbleweed 中更新
image: /assets/posts/2022-08/Vimlogo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

8 月对于 [openSUSE](https://get.opensuse.org/) [Tumbleweed](https://get.opensuse.org/tumbleweed/) 来说是个燥动的月份，因为似乎每天都在发布新快照。

Tumbleweed 本周的趋势也是不断地在快照发布后发布新快照。

在快照 [20220816](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/T53U2II5CYG3FT6RK2QGLJOMXIP6LRBN/) 的更新包中，postgresql14 14.5 因修复了一个 [CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures) 而引起了轰动；在 [CVE-2022-2625](https://www.postgresql.org/support/security/CVE-2022-2625/) 中，在没有根据记录的规则遵守使用 `CREATE OR REPLACE` 或 `CREATE IF NOT EXISTS` 的扩展时，攻击者可以受害者的权限（受害者也可能是超级用户）运行任意代码。[PostgreSQL](https://www.postgresql.org/) 在核心服务器中阻止了这种攻击，因此无需修改单独的扩展脚本。现在让我们转到更轻松的话题：本次快照将文件系统实用程序 xfsprogs 更新至 5.19.0。更新后的 [xfsprogs](https://xfs.org/) 提供了更多的 autoconf 现代化并修复了内存泄漏。它的对应版本，[xfsdump](https://xfs.org/) 3.1.10 修复了损坏转储的绑定挂载处理，并删除了数据管理 [API](https://en.wikipedia.org/wiki/API) 支持。由于 [xfce4-screenshooter](https://docs.xfce.org/apps/screenshooter/start) 1.9.11 的更新，[Xfce](https://www.xfce.org/) 用户现在可以在 HiDPI 模式下进行窗口捕获。

[KDE](https://kde.org/) [Frameworks 5.97.0](https://kde.org/announcements/frameworks/5/5.97.0/) 在快照 [20220815](https://kde.org/) 发表，并为 [Plasma Desktop](https://kde.org/plasma-desktop/) 用户提供了一些修复。Frameworks 更新了当对话框改变大小时的模糊和其他窗口效果；用于密码存储的 [KWallet Framework](https://invent.kde.org/frameworks/kwallet) 引入了一个安全服务 [API](https://en.wikipedia.org/wiki/API)。用户界面框架 [Kirigami](https://develop.kde.org/frameworks/kirigami/) 为 [Qt](https://www.qt.io/) 水平滚动视图错误添加了解决方法。本次快照还更新了 [KIO](https://invent.kde.org/frameworks/kio)，以更好地防止同一[超文本引用](https://www.pcmag.com/encyclopedia/term/href)出现重复书签。文本编辑器 [vim](https://www.vim.org/) 本周进行了第二次更新，更新至 9.0.0203 版本；对[无效内存访问](https://www.intel.com/content/www/us/en/develop/documentation/inspector-user-guide-linux/top/problem-type-reference/invalid-memory-access.html)进行了一些修复，并修复了设置“换行符”时虚拟文本的额外空间。诊断、调试和指导用户空间包 [strace](https://strace.io/) 更新至 5.19；此次更新改变了行为并实现了一些解码套接字选项和 netlink 属性。快照中最后一个更新的包是 [hdf5](https://www.hdfgroup.org/solutions/hdf5/) 1.12.2；这种用于存储科学数据的通用库和文件格式包删除了一个补丁，禁用了另一个补丁，并在 [Linux](https://www.kernel.org/) 上启用了 rpm 和 deb CPack 生成器。

快照 [20220814](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WWDE4M456CUEUF2YDNKAYRKUZ3O7I2QO/) 将 [Linux 内核](https://www.kernel.org/)更新至 5.19.1。近三分之一的内核更新与蓝牙相关，其中大部分是针对 RTL8852C 无线模块的。[gnome-shell](https://wiki.gnome.org/Projects/GnomeShell) 42.4 进行了一次更新，改进了概览动画性能，并修复了记住蓝牙设备的设置。[GNOME](https://www.gnome.org/) 的布局和文本渲染包 [pango](https://pango.gnome.org/) 更新到 1.50.9 并修复了[线程](https://docs.unrealengine.com/4.27/en-US/ProgrammingAndScripting/Rendering/ThreadedRendering/)安全问题。引导启动包 [plymouth](https://gitlab.freedesktop.org/plymouth/plymouth) 有一个小更新；根据更新日志，该更新可用于检查安全启动配置，并在安全启动被禁用时在屏幕上显示红色警告图像。[NetworkManager](https://networkmanager.dev/) 1.38.4 和 [mutter](https://gitlab.gnome.org/GNOME/mutter) 42.4 也在快照中更新。

[GNU](https://www.gnu.org/) 的二进制工具集 [binutils](https://www.gnu.org/software/binutils/) 2.39 是快照 [20220813](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DQE43NY7I5E632IPRBPT4K7PSDL36PBA/) 中唯一更新的软件包。[ELF 链接器](https://en.wikipedia.org/wiki/Executable_and_Linkable_Format)现在支持 `--package-metadata` 选项，该选项允许根据包元数据规范嵌入 [JSON](https://www.json.org/) 有效负载。如果堆栈可执行，链接器现在也可以生成警告消息。

快照 [20220812](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/T6WDISAHUWEWIPMJELDBKP4MJOXOMQTT/) 更新的软件包相对较少。解析和域名分解器 [rubygem-public_suffix](https://rubygems.org/gems/public_suffix) 5.0.0 进行了一次大版本更新；更新了定义并且 [Ruby](https://www.ruby-lang.org/) 的最低依赖版本是 2.6。[python-pbr](https://pypi.org/project/pbr/5.9.0/) 更新至 [5.9.0](https://pypi.org/project/pbr/5.9.0/)，使用 [importlib-metadata](https://pypi.org/project/importlib-metadata/) 进行运行时包版本查找，用于管理 setuptools 打包。另一个要在快照中更新的包是 [ncurses](https://en.wikipedia.org/wiki/Ncurses)，它删除了一些在 [Fedora](https://getfedora.org/) 36 中出现的但不需要的链接器选项。

本周的第一个快照是快照 [20220811](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ZCCO7VEQFSQSIH4OITXOJ6L4ALE32APV/)。此次快照将浏览器 [Mozilla Firefox](https://www.mozilla.org/) 更新至 103.0.2 版本，为 JAWS 屏幕阅读器的用户修复了菜单快捷方式，并修复了偶尔出现的不可覆盖的证书错误。[gnome-desktop](https://gitlab.gnome.org/GNOME/gnome-desktop) 42.4 进行了一次更新，对意大利语和塞尔维亚语的翻译进行了更改，并在包含标记时修复了详细文本。[icewm](https://ice-wm.org/) 更新至 2.9.8，进行了更改：如果没有窗口管理器处于活动状态，则重新启动将启动 icewm；并且 icewm 还在删除任务时更新了分组菜单。[Vim](https://www.vim.org/) 在此快照中进行了本周的第一次更新。[iproute2](https://git.kernel.org/pub/scm/network/iproute2/iproute2.git) 更新至 5.19，添加了一个 `set` 命令和一个与它的 ipstats 相关的组链接（`link`）。[英特尔](https://www.intel.com/)在 [ucode-intel](https://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files/tree/main/intel-ucode) 20220809 更新中修复了一个 CVE；该公司感谢相关人员帮助查找和解决影响某些处理器的 [CVE-2022-21233](https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00657.html)。

------

原文：[Frameworks, PostgreSQL, Vim Update in Tumbleweed](https://news.opensuse.org/2022/08/18/fw-postgre-vim-update-in-tw/)，作者：Douglas DeMaio