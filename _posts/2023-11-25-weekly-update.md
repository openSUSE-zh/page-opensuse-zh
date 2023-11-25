---
author: Poplar at twilight
date: 2023-11-25 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Flatpak、OpenVPN 和 Bash 在 Tumbleweed 中更新
image: /assets/posts/2023-11/bash.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 本周发布了多个快照，其中包含中等大小的更新快照。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

快照 [20231122] 是目前最新的快照版本。此快照更新了 DBus 接口的超薄层 [fwupd]；fwupd 1.9.9 增加了新的，可识别设备电源线状态以增强设备的电源管理功能的通用请求功能。fwupd 增加了对特定硬件的支持，如 [Lenovo X1 Yoga Gen 7 530E]。[git] 2.43.0 的更新有许多增强功能，其中包括处理 `git format-patch` 中的 `--rfc` 选项的改进，git 增强了维护作业计划，更新了 [libsecret] 密钥环中身份验证数据的处理，并增加了命令行完成脚本中别名的灵活性。[transactional-update] 4.5.0 的更新改进了 libtukit 中创建覆盖（overlay）时的权限处理，通过该库引入了对回滚的支持，在 tukitd 中实现了快照删除和回滚方法，并增加了对 tukit 命令（如 `close` 和 `abort`）中缺少参数的检查。[transactional-update] 还进行了一些代码清理。快照中还更新了一些软件包，例如 [xen] 4.18.0_04 和软件包安装程序 [python-pip] 23.3.1；pip 解决了与错误处理、元数据规范化和删除版本处理相关的问题。

[Lenovo X1 Yoga Gen 7 530E]: https://www.lenovo.com/de/de/p/laptops/thinkpad/thinkpadx1/thinkpad-x1-yoga-gen-7-(14-inch-intel)/len101t0010?orgRef=https%253A%252F%252Fwww.google.com%252F
[20231122]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/3UUZJ2A2HT6TSVKOVWG3PRKSFREXMG2N/
[fwupd]: https://fwupd.org/
[git]: https://github.com/git
[libsecret]: https://wiki.gnome.org/Projects/Libsecret
[transactional-update]: https://github.com/openSUSE/transactional-update
[python-pip]: https://pypi.org/project/pip/
[xen]: https://xenproject.org/

快照 [20231121] 更新了 [openvpn] 2.6.8。openvpn 修复了一些问题，如 TLS 握手不成功导致 [SIGSEGV] 崩溃，该崩溃存在内存问题，导致将释放的内存发送给对等方（peer）；还修复了客户端和服务器版本之间不兼容的问题。openvpn 删除了某些过时的功能，添加了针对特定配置组合的警告，并对 Windows 平台的构建系统进行了改进。[llvm17] 17.0.5 的更新对测试 [clang-tools-extra] 和 [LLD] 组件进行了调整，同时保持了测试适应性的一致性。此快照还将 [kernel-source] 更新至 6.6.2 版本，提供了针对 Wi-Fi 子系统内的多个问题的补丁，其中包括 [RCU] 使用警告和整个内核代码库的其他改进。快照中更新了其他几个软件包，包括 [ImageMagick] 7.1.1.21、[yast2-trans] 等。

[20231121]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/BADI4SBI53LRDN7TTGRL7IG266PH4HBK/
[openvpn]: https://openvpn.net/
[SIGSEGV]: https://en.wikipedia.org/wiki/Segmentation_fault
[llvm17]: https://llvm.org/
[clang-tools-extra]: https://clang.llvm.org/extra/index.html
[LLD]: https://lld.llvm.org/
[kernel-source]: https://www.kernel.org/
[RCU]: https://en.wikipedia.org/wiki/Read-copy-update
[ImageMagick]: https://imagemagick.org/index.php
[yast2-trans]: https://software.opensuse.org/package/yast2-trans

快照 [20231120] 虽然不是本周最大的快照，但由于 [libreoffice] 7.6.3.1 的更新，快照 20231120 依然相当大。libreoffice 修复了崩溃、文档布局不对齐、PDF 导出错误以及 `.DOCX` 文件中表格和文本框显示不正确等问题。如需更深入的信息，请参阅 LibreOffice [变更日志]。[gnutls] 3.8.2 的更新解决了 RSA-PSK 密钥交换中的一个定时侧信道漏洞（[CVE-2023-5981]）。gnutls 还引入了支持 [ECDH] 和[迪菲-赫尔曼]密钥协议协议的 [API] 功能。图像编辑器 [inkscape] 1.3.1 的更新解决了 30 多个崩溃和冻结问题，其中包括特别影响 PDF 导入和实时路径效果的问题。inkscape 引入了两个新功能；第一个是将文本拆分为单个字母的新功能，而另一个新功能允许禁用对齐网格线。现在还可以使用渐变抖动。快照中还更新了六个以上的其他软件包。

[迪菲-赫尔曼]: https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange
[ECDH]: https://en.wikipedia.org/wiki/Elliptic-curve_Diffie%E2%80%93Hellman
[20231120]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/NTCT5ENM4H2VVGEX6F5CRJP7HOXLMPVL/
[libreoffice]: https://www.libreoffice.org/
[gnutls]: https://www.gnutls.org/
[CVE-2023-5981]: https://www.suse.com/security/cve/CVE-2023-5981.html
[inkscape]: https://inkscape.org/
[变更日志]: https://wiki.documentfoundation.org/Releases/7.6.3/RC1
[API]: https://en.wikipedia.org/wiki/API

快照 [20231119] 同时更新了 [Flatpak] 1.15.6 和 [harfbuzz] 8.3.0。文本整形引擎 harfbuzz 8.3.0 增强了内存屏障，以防止潜在的[段错误]；并修复了与子集和实例相关的各种问题。为了保持工具间的一致性，选项 `hb-subset` 已更名为 `--variations`。Flatpak 要求在单独编译 Flatpak 的发行版中使用 [bubblewrap] 0.8.0。该软件包通过设置用户命名空间限制来增强安全性，并改进对 flatpak-portal 启动的子沙箱的环境变量的处理。[gnome-bluetooth] 42.7 解决了与 [Obex Push] 服务器自动接受来自配对设备的文件相关的问题。[bluez-gnome] 分支解决了导致设备连接开关外观与实际连接状态不一致的错误。[webkit2gtk3] 2.42.2 的更新解决了之前影响 Unity [WebGL] 应用程序的内容安全策略回退问题。webkit2gtk3 还解决了 [CVE-2023-41983] 和 [CVE-2023-42852] 问题，它们允许处理可能导致任意代码执行的网页内容。快照中更新了一些其他软件包。

[bubblewrap]: https://github.com/containers/bubblewrap
[Obex Push]: https://en.wikipedia.org/wiki/OBject_EXchange
[20231119]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4MCVGPCKY24MXLMIZ7JNMHHVWH233ULM/
[Flatpak]: https://flatpak.org/
[harfbuzz]: https://github.com/harfbuzz/harfbuzz
[gnome-bluetooth]: https://wiki.gnome.org/Projects/GnomeBluetooth
[bluez-gnome]: http://www.bluez.org/
[webkit2gtk3]: https://webkitgtk.org/
[CVE-2023-41983]: https://www.suse.com/security/cve/CVE-2023-41983.html
[CVE-2023-42852]: https://www.suse.com/security/cve/CVE-2023-42852.html
[webgl]: https://www.khronos.org/webgl/
[段错误]: https://en.wikipedia.org/wiki/Segmentation_fault

快照 [20231117] 包含多个软件包更新。[Bash] 5.2.21 包含多个上游补丁，以解决各种问题，如解决导致命令替换在 here-document 中失败的偏差错误。Bash 修复了 shell 错误地尝试将终端进程组设置回 shell 进程组的情况，还修复了语法错误时返回令牌的相关问题。[AppStream] 0.16.4 的更新引入了新功能，包括允许在组件 ID 的最后一段使用连字符，以及为唯一的开发者 ID 实现开发者元素。[bind] 9.18.20 的更新解决了一些问题，如包含 [DNSSEC] 记录的未签名内联签名区的错误退出，以及由于 [bsc#1214884] 的原因，[openSUSE Factory] 和 [ALP] 默认禁用了[服务定位协议]。快照中需要更新的其他软件包包括：[gstreamer] 1.22.7、[libcrypt] 1.10.3、[libstorage-ng] 4.5.157、[nodejs21] 21.2.0、[pipewire] 0.3.85、[poppler] 23.11.0 等。

[20231117]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/WSDPKL7IAZ4AXP4GJPRR3QLZBCBXJBHB/
[Bash]: https://www.gnu.org/software/bash/
[AppStream]: https://www.freedesktop.org/wiki/Distributions/AppStream/
[DNSSEC]: https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions
[bind]: https://bind9.readthedocs.io/
[bsc#1214884]: https://bugzilla.opensuse.org/show_bug.cgi?id=1214884
[ALP]: https://susealp.io/
[openSUSE Factory]: https://en.opensuse.org/Portal:Factory
[gstreamer]: https://gstreamer.freedesktop.org/
[libcrypt]: https://www.gnupg.org/software/libgcrypt/index.html
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[nodejs21]: https://nodejs.org/en/
[pipewire]: https://pipewire.org/
[poppler]: https://poppler.freedesktop.org/
[服务定位协议]: https://en.wikipedia.org/wiki/Service_Location_Protocol

------

原文：[Flatpak, OpenVPN, Bash update in Tumbleweed](https://news.opensuse.org/2023/11/24/flatpak-openvpn-bash-up-in-tw/)，作者：Douglas DeMaio
