---
author: Poplar at twilight
date: 2023-08-24 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Britty、LibreOffice 和 OpenVPN 在 Tumbleweed 中更新
image: /assets/posts/misc/tw.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

* 注意！当你读到这则新闻的时候，openSUSE 的部分云服务已经[临时下线了]。请阅读此新闻以了解具体的影响范围请，如有必要，可以考虑使用[镜像站]。

[临时下线了]: https://suse.org.cn/%E7%A4%BE%E5%8C%BA%E6%96%B0%E9%97%BB/2023/08/23/OBS-notice.html
[镜像站]: https://zh.opensuse.org/SDB:%E6%B7%BB%E5%8A%A0%E8%BD%AF%E4%BB%B6%E6%BA%90#.E6.B7.BB.E5.8A.A0.E9.95.9C.E5.83.8F.E6.BA.90

除了包含 [KDE Frameworks 5.109.0] 的一个快照外，[openSUSE] [Tumbleweed] 本周的快照更新保持稳定且规模较小。

[KDE Frameworks 5.109.0]: https://kde.org/announcements/frameworks/5/5.109.0/
[openSUSE]: https://get.opensuse.org/
[tumbleweed]: https://get.opensuse.org/tumbleweed/

本周每日均有快照（除了 20 日）。

快照 [20230822] 更新了可刷新盲文显示包 [brltty] 6.6，引入了补丁并更新了 [API] 以增强 [BrlAPI] 服务。此更新解决了与 [Cython] 3.0 的兼容性问题，以解决与对象 finalization API 相关的崩溃。[LibreOffice] 7.6.0.3 的更新带来了多项增强功能，包括方便的[页码向导]和段落样式的改进。新版保留了从 `.DOCX` 到 `.ODT` 文件扩展名的字符属性，并引入了新的引用处理功能。电子表格 [Calc] 修复了条件边框颜色导出的问题，添加了对形状和注释的绘图样式的支持，并改进了公式输入。LibreOffice 还对字体进行了一些增强，并改进了用于 [Impress] 和 [Draw] 演示的导航面板。[yast2-trans] 通过 [Weblate] 更新了拉脱维亚语和加泰罗尼亚语翻译。

[20230822]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/XYV6PVBAJIVKFRUOADLQA6MKHW3ORCON/
[brltty]: https://github.com/brltty/brltty
[API]: https://en.wikipedia.org/wiki/API
[BrlAPI]: https://brltty.app/doc/Manual-BrlAPI/English/BrlAPI-1.html
[Cython]: https://pypi.org/project/Cython/
[LibreOffice]: https://www.libreoffice.org/
[页码向导]: https://help.libreoffice.org/latest/en-US/text/swriter/01/pagenumbering.html
[Calc]: https://www.libreoffice.org/discover/calc/
[Impress]: https://www.libreoffice.org/discover/impress/
[Draw]: https://www.libreoffice.org/discover/draw/
[yast2-trans]: https://software.opensuse.org/package/yast2-trans
[Weblate]: https://weblate.org/

快照 [20230821] 更新了 [kernel-firmware] 20230814，带来了两周的更新内容。这些更新包括各种增强功能和新增内容，其中包括针对不同专用集成电路 (ASIC) 的 [AMDgpu] 显示微控制器单元 B 的更新、适用于 HP G11 型号的 [cirrus 固件]、以及 [Mellanox] 和 RTL 芯片组的更新。帮助创建和查询二进制 XML blob 的库 [libxmlb] 已更新到版本 0.3.13，并对内容类型检测进行了优化和改进，例如使用索引来绑定值以及通过内联机器内部实现更快的查询。[rebootmgr] 2.1 引入了对 `systemctl soft-reboot` 命令的支持并修复了规范描述。[rubygem-moneta] 1.6.0 进行了许多更改，包括对 [Rails 6.1] 及更高版本的支持。该软件包还删除了对 [Ruby] 2.3 和 2.4 的支持，同时添加了对 3.0 版本的支持。快照中还更新了一些软件包，包括 [sysvinit] 3.08、[libfprint] 1.94.6 等。

[20230821]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/IJBF6B37Q6IK46NNI5IRISOJZ7Z3R2U4/
[kernel-firmware]: https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
[AMDgpu]: https://wiki.archlinux.org/title/AMDGPU
[Mellanox]: https://en.wikipedia.org/wiki/Mellanox_Technologies
[libxmlb]: https://github.com/hughsie/libxmlb
[rebootmgr]: https://github.com/SUSE/rebootmgr
[rubygem-moneta]: https://rubygems.org/gems/moneta
[Ruby]: https://www.ruby-lang.org/en/
[libfprint]: https://fprint.freedesktop.org/
[sysvinit]: https://github.com/slicer69/sysvinit
[Rails 6.1]: https://guides.rubyonrails.org/6_1_release_notes.html
[cirrus 固件]: https://github.com/CirrusLogic/linux-firmware/tree/main/cirrus

快照 [20230819] 发布了 [KDE Frameworks 5.109.0] 和另一个软件包。[KDE Plasma] 的文件索引和文件搜索框架 [Baloo] 在此快照中更新，具有一些重要改进；这包括在 BalooSearch 中添加排序选项，减少多个测试中的文件系统依赖性，并且删除了过时的 `org.kde.baloo` 接口的代理，从而简化了代码库并促进了更易于维护的系统。[KIO] 引入了利用 switcheroo-control 来定位独立 GPU 的改进，以增强功能。快照还对 [KFileWidget] 进行了更改，以更好地处理绝对 URL 情况并使用 `targetUrl` 提取 URL。UI 框架包 [Kirigami] 对[导航选项卡]栏进行了更改以解决错误，并且此框架包进行了增强以确保一致使用大写首字母。[KTextEditor] 对补全功能进行了更改，以便只匹配项目的起始字符。该软件包还解决了光标移动不稳定的问题。快照中要更新的另一个包是 [VirtualBox] 的内核模块: [virtualbox-kmp]；该更新包括重要修复，以解决 [Linux 内核] 6.5 中与灵活阵列（flexible arrays）相关的问题。实施该修复的目的是解决断点问题，并解决在问题 [boo#1212761] 和 [boo#1214391] 中强调的问题。

[20230819]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4JVZJA5ELGKJF4SSES7WAXDMVOW3XUNM/
[KDE Plasma]: https://kde.org/plasma-desktop/
[KIO]: https://api.kde.org/frameworks/kio/html/
[Baloo]: https://community.kde.org/Baloo
[KFileWidget]: https://api.kde.org/frameworks/kio/html/classKFileWidget.html
[Kirigami]: https://kde.org/products/kirigami/
[导航选项卡]: https://develop.kde.org/hig/components/navigation/navigationtabbar/
[KTextEditor]: https://api.kde.org/frameworks/ktexteditor/html/
[VirtualBox]: https://www.virtualbox.org/
[virtualbox-kmp]: https://software.opensuse.org/package/virtualbox-kmp-default
[boo#1212761]: https://bugzilla.opensuse.org/show_bug.cgi?id=1212761
[boo#1214391]: https://bugzilla.opensuse.org/show_bug.cgi?id=1214391
[Linux 内核]: https://www.kernel.org/

快照 [20230818] 发布了 [openvpn] 2.6.6，新版本解决了 `LIBCAPNG_CFALGS` 配置中的拼写错误。openvpn 增强了 tls-crypt-v2 客户端身份验证失败的错误消息，并改进了 Android 上的 [IPv6] 路由处理。openvpn 还进行了其他一些增强，例如更好的单元测试处理。网络浏览器 [Mozilla Firefox] 在 116.0.3 更新中解决了一些问题。该更新修复了影响[原始私有文件系统]（OPFS）用户的问题；这将恢复对先前版本中本地缓存的文件的访问。Firefox 还解决了 [Wayland] 上的屏幕共享问题，并修复了进行 Google 搜索时发生的挂起问题。快照对 [python-numpy] 1.25.2 进行了更新，升级了构建依赖项；还对 [Shadow] 4.14.0 进行了更新，为各种命令引入了新选项，例如 `enable-logind` 和 `--prefix`。此快照更新了其他一些软件包。

[20230818]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/W4GFOLJ3C2MYJSQHKNEN3HIBVBZATKBC/
[openvpn]: https://openvpn.net/
[IPv6]: https://en.wikipedia.org/wiki/IPv6
[Mozilla Firefox]: https://www.mozilla.org/
[原始私有文件系统]: https://developer.mozilla.org/en-US/docs/Web/API/File_System_API/Origin_private_file_system
[Wayland]: https://wayland.freedesktop.org/
[python-numpy]: https://pypi.org/project/numpy/
[Shadow]: https://github.com/shadow-maint/shadow

本周的第一个快照是 [20230817]。此快照更新了 [bind] 9.18.18。一个显着的更改包括行为更新，其中如果区域的主服务器响应授权开始（Start of Authority, SOA）查询，但传输该区域所需的后续 TCP 连接被拒绝或超时，则该服务器将被标记为暂时无法访问，这防止无法访问的服务器上的区域过度排队并加快刷新过程。快照中要更新的另一个软件包是系统的时钟同步软件包 [chrony] 4.4，它通过使用 `extpps` 选项引入了对多个参考时钟的支持，并将 `maxpoll` 选项添加到 `hwtimestamp` 指令中。其他要更新的软件包是 [libzypp] 17.31.19，它解决了与 [Clang 编译器]的构建兼容性；[gnome-bluetooth] 42.6、[less] 643 等软件包。

[20230817]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/PJ72PVANBZIBHY75BD4HNAEXKDOXXCB3/
[bind]: https://bind9.readthedocs.io/
[chrony]: https://packages.guix.gnu.org/packages/chrony/4.4/
[libzypp]: https://github.com/openSUSE/libzypp
[Clang 编译器]: https://en.wikipedia.org/wiki/Clang
[gnome-bluetooth]: https://wiki.gnome.org/Projects/GnomeBluetooth
[less]: https://www.greenwoodsoftware.com/less/

------

原文：[Britty, LibreOffice, OpenVPN Update in Tumbleweed](https://news.opensuse.org/2023/08/24/britty-libreoffice-openvpn-up-in-tw/)，作者：Douglas DeMaio
