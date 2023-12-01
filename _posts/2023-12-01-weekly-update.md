---
author: Poplar at twilight
date: 2023-12-01 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: PipeWire 和 Firefox 的大版本更新在 Tumbleweed 中发布
image: /assets/posts/2023-12/pipewire.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

使用 [OpenTUNA] 的 [openSUSE] 用户应当得知 [OpenTUNA 将于本月底停止服务]，用户可参考下述链接切换至其他镜像站服务。

[OpenTUNA]: https://opentuna.cn/
[opensuse]: https://get.opensuse.org/
[OpenTUNA 将于本月底停止服务]: https://opentuna.cn/news/#opentuna-shutdown

- [openSUSE:镜像](https://zh.opensuse.org/openSUSE:%E9%95%9C%E5%83%8F)
- [SDB:添加软件源](https://zh.opensuse.org/SDB:%E6%B7%BB%E5%8A%A0%E8%BD%AF%E4%BB%B6%E6%BA%90)
- [openSUSE - Mirrors Report](https://mirrors.opensuse.org)

----

openSUSE [Tumbleweed] 本周发布的快照为用户提供了多个软件包的主要版本更新。

[Tumbleweed]: https://get.opensuse.org/tumbleweed/

快照 [20231127] 发布了适用于 [Linux] 的音视频包 [PipeWire] 的 1.0 版本（也被称为 “El Presidente”）更新，提供显著的增强功能和大量星宿，例如解决了缓冲区上传期间与 [memfd] 和 [dma-buf] 泄漏相关的内存管理问题。PipeWire 对影响中断请求的 [ALSA] 的时间报告进行了改进，从而减少了时间偏差。PipeWire 改进了文档和蓝牙编解码器，引入了 [LC3] 编解码器；LC3 是 [SBC] 编解码器的后继者。[Mozilla Firefox] 更新至新的大版本，处理了多个 [CVE]。Firefox 120.0 处理了多个安全漏洞，如可导致内存数据泄漏的 [CVE-2023-6204]、显示了内存损坏的证据，推测可被用于执行任意代码的 [CVE-2023-6213]。用于查询已连接的 USB 设备的 [usbutils] 更新至 017 版本，解决诸如显示没有接口的设备条目之类的问题，通过 `lsusb.py` 改进电源/唤醒显示。这些更改还确保更好地遵循系统 `libdir` 和 `includedir` 以及其他各种优化。快照发布了 X 窗口管理器 [icewm] 3.4.4。icewm 扩展了 `icewmbg` 中对 TIFF、WEBP、JXL、JP2、RAW、SVG 和 TGA 等图像格式支持。icewm 修复了数个崩溃问题，改进了主题的颜色解释，并提供了更稳定且功能丰富的用户体验。用于转换繁体中文、简体中文和日文汉字（Shinjitai）的 [OpenCC] 更新至 1.1.7；它增加了对 [Python] 3.12 和 [Node.js] 20 的支持。快照中的其他一些软件包与 [Transmission] 4.0.4 一起更新。Transmission 解决了向对等设备传输元数据、内存分配、文件重命名碰撞以及影响统计显示中数字四舍五入的本地化错误等问题。

[LC3]: https://en.wikipedia.org/wiki/LC3_(codec)
[20231127]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/LPAYQ747GLQG6IWSUVMGVFOMUQV7HGSJ/
[PipeWire]: https://pipewire.org/
[memfd]: https://github.com/bear-metal/memfd/blob/master/README.md
[dma-buf]: https://docs.kernel.org/driver-api/dma-buf.html
[SBC]: https://en.wikipedia.org/wiki/SBC_(codec)
[Mozilla Firefox]: https://www.mozilla.org/
[CVE-2023-6204]: https://www.suse.com/security/cve/CVE-2023-6204.html
[CVE-2023-6213]: https://www.suse.com/security/cve/CVE-2023-6213.html
[usbutils]: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usbutils.git/
[icewm]: https://ice-wm.org/
[OpenCC]: https://pypi.org/project/OpenCC/
[Transmission]: https://transmissionbt.com/download
[Linux]: https://www.kernel.org/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[python]: https://www.python.org/
[Node.js]: https://nodejs.org/en/
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture

虽然快照 [20231126] 没有为新总统（“El Presidente”）提供红地毯待遇，但用户也需要关注出现在快照中的 [php8] 8.2.13。php8 解决了 [Opcache]、[OpenSSL]、XMLReader 等各种组件中出现双重释放和不正确行为等问题。php8 解决了错误处理和潜在的崩溃问题。[selinux-policy] 20231124 的更新修复了 Bugzilla 问题 [bsc#1216903]，该问题涉及在尝试应用防火墙规则时指示权限被拒绝错误的错误消息。[libbpf] 1.3.0 的更新带来了对 [netfilter] 的支持，并引入了新的节定义、实用宏和用于使用[环形缓冲区]的扩展功能。[libsolv] 0.7.27 的更新引入了对 installcheck 工具的 [zstd] 支持，增强了压缩功能，并实现了 `putinowndirpool` 缓存。这个新的缓存显着加速了 `repo_write` 函数内的文件列表处理，从而提高了整体性能。快照中还更新了其他几个软件包。

[20231126]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/ZTO4XRBYWLL5SC54YAL2VLNESGTRFZRV/
[php8]: https://www.php.net/
[Opcache]: https://www.php.net/manual/en/book.opcache.php
[OpenSSL]: https://www.openssl.org/
[selinux-policy]: https://github.com/SELinuxProject
[bsc#1216903]: https://bugzilla.opensuse.org/show_bug.cgi?id=1216903
[libbpf]: https://github.com/libbpf/libbpf
[netfilter]: https://www.netfilter.org/
[环形缓冲区]: https://en.wikipedia.org/wiki/Circular_buffer
[libsolv]: https://github.com/openSUSE/libsolv
[zstd]: https://facebook.github.io/zstd/

快照 [20231124] 中仅更新了两个软件包。新版本的 [kernel-firmware-nvidia-gspx-G06] 545.29.06 改进了内核模块驱动程序的兼容性和功能，快照中还更新了另一个 [NVIDIA] 签名软件包。

[kernel-firmware-nvidia-gspx-G06]: https://github.com/openSUSE/kernel-firmware-nvidia-gspx-G06
[NVIDIA]: https://www.nvidia.com/
[20231124]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/6RORONYOHB3JVV7ZC74XIY4APLNJTQRC/

------

原文：[Major Versions of PipeWire, Firefox arrive in Tumbleweed](https://news.opensuse.org/2023/11/30/major-version-of-pipewire-ff-arrive-in-tw/)，作者：Douglas DeMaio（插图由 Jakub Steiner 提供）
