---
author: Poplar at twilight
date: 2023-09-15 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Systemd 和 Kernel 在 Tumbleweed 中更新
image: /assets/posts/misc/systemd-logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 发布了许多快照，但直到最近才更新为 [Linux Kernel] 6.5。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[Linux Kernel]: https://www.kernel.org/

最新发布的快照是 [20230913]。网络浏览器 [Mozilla Firefox] 117.0.1 修复了导致长时间运行任务的扩展提前终止的错误。Firefox 解决了基于 [WebAssembly] 的站点的音频问题。[curl] 8.3.0 的更新删除了 [gskit] 和 [NSS] 务支持。该软件包还修复了地址问题，例如处理响应标头中的 [IPv6] 地址、减少了一些超时并改进了 SSL 和 HTTP 协议处理。虚拟化工具 [qemu] 8.1.0 的更新改进了对虚拟功能输入/输出 (VFIO) 的实时迁移支持，并为 [ARM]、[PowerPC] 和 [RISC-V] 架构提供了一些高级加密标准加速。[sudo] 1.9.14p3 的更新修复了与 [Python] 3.12 相关的崩溃问题，并解决了管道或重定向输出时的输出格式问题。快照还更新了其他几个包。

[20230913]: 
[GSKit]: https://www.ibm.com/docs/en/informix-servers/14.10?topic=protocol-global-security-kit-gskit
[NSS]: https://en.wikipedia.org/wiki/Network_Security_Services
[Mozilla Firefox]: https://www.mozilla.org/
[WebAssembly]: https://webassembly.org/
[curl]: https://curl.se/
[IPv6]: https://en.wikipedia.org/wiki/IPv6
[qemu]: https://www.qemu.org/
[ARM]: https://www.arm.com/
[PowerPC]: https://en.wikipedia.org/wiki/PowerPC
[RISC-V]: https://riscv.org/
[Python]: https://www.python.org/
[sudo]: https://www.sudo.ws/

快照 [20230912] 更新了文本编辑器 [vim]。vim 9.0.1894 修复了四个 [CVE]，其中包括可能导致[缓冲区溢出]的 [CVE-2023-4751]。vim 还改进了错误处理，更新解决了与测试、语法识别和不同文件类型兼容性相关的一些问题。[perl-Mojolicious] 9.340.0 的更新改进了对使用前缀提供静态文件的支持，增强了编码选项方法，解决了与 Perl 功能相关的问题，并修复了内置模板，使其不需要网络连接。[yast2-trans] 的更新提供了瑞典语、印度尼西亚语和俄语翻译。快照中还更新了其他几个软件包，包括本周早些时候更新的 [libportal] 0.7.1。


[vim]: https://www.vim.org/
[20230912]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/TTIXEL7FFWHCBZFSRUAXBJNA2JRVMNXN/
[CVE-2023-4751]: https://www.suse.com/security/cve/CVE-2023-4751.html
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[缓冲区溢出]: https://en.wikipedia.org/wiki/Buffer_overflow
[perl-Mojolicious]: https://mojolicious.org/
[yast2-trans]: https://software.opensuse.org/package/yast2-trans
[libportal]: https://github.com/flatpak/libportal

快照 [20230911] 发布了 [Linux Kernel] 6.5.2，并引入了多项功能，例如改进对服务器和云性能的支持以及对 [RISC-V] 架构的 [ACPI] 支持。从 6.4.12 更新至 6.5.2 的 [kernel-sourcel][Linux Kernel] 还引入了对 [USB4] V2 的支持以实现高速数据传输，同时为未来支持 [Wi-Fi 7] 做好准备。诊断、调试和指导用户空间包 [strace] 从 6.4 跳跃至 6.5 版本；引入了各种系统调用和套接字选项的解码。它还更新了 Linux 6.5 中的常量值列表和 `ioctl`（输入/输出控制）命令。[systemd] 254.3 的更新引入了 [utmp]、[AppArmor]、[SELinux] 的可配置性，并改进了包处理。该快照发布了 [KDE Frameworks] 5.110.0，它带来了多项改进。显着的变化包括 [KImageFormats] 的增强、改进的桌面文件支持以及对用于编码和解码 avif 文件的 [libavif] 1.0 的支持。[KIO] 现在可以更有效地处理 CIFS 挂载上的复制操作，并修复了 Ask Jeeves 搜索提供程序。[Kirigami] 解决了属性访问、间距和 `itemChange` 问题。[KWayland] 解决了与 XLib 的 Bool 定义相关的构建问题，并且使用 [KDE Frameworks] 包进行了其他一些更新。

[20230911]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/AQRE7HP4V4SQDJI2E3F3RLPCUAWXBD3Z/
[USB4]: https://en.wikipedia.org/wiki/USB4
[Wi-Fi 7]: https://en.wikipedia.org/wiki/IEEE_802.11be
[strace]: https://strace.io/
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[utmp]: https://en.wikipedia.org/wiki/Utmp
[AppArmor]: https://apparmor.net/
[SELinux]: https://github.com/SELinuxProject
[KDE Frameworks]: https://kde.org/announcements/frameworks/5/5.110.0/
[KImageFormats]: https://api.kde.org/frameworks/kimageformats/html/index.html
[KIO]: https://api.kde.org/frameworks/kio/html/index.html
[KWayland]: https://github.com/KDE/kwayland
[Kirigami]: https://kde.org/products/kirigami/
[ACPI]: https://en.wikipedia.org/wiki/ACPI
[libavif]: https://github.com/AOMediaCodec/libavif

快照 [20230910] 更新了许多软件包。[Mesa] 23.1.7 引入了对 [OpenGL] 4.6 [API] 的支持；但并非所有的驱动程序都支持所有的 OpenGL 4.6 功能。Mesa 还实现了 [Vulkan] 1.3 API。文件系统包 [btrfsprogs] 6.5 的更新有一些显着的变化。btrfsprogs 发布了具有向后兼容性的静态二进制文件，并在 [CRC32C 实现]中将速度提高了 3 倍。btrfsprogs 为 [btrfstune] 引入了更严格的选项组合，并添加了一些实验性功能更新和代码重构。[dracut] 的更新删除了以前基于与 AMD 和 Intel 微码相关的配置设置的微码检查。dracut 还禁用了较旧的特定架构的 [FIPS]（联邦信息处理标准）和 [IMA]（完整性测量架构）功能。[libvirt] 9.7.0 的更新增强了 qemu 的功能，为 “VFIO 变体” 驱动程序提供基本支持。libvirt 还添加了两个新命令：`net-desc` 和 `net-metadata`。用于创建 [CAB 文件]的 GObject 包 [gcab] 已更新至 1.6 版本，并具有一项新功能，可以在运行时指定允许的压缩格式。[Flatpak] portal 库 [libportal] 0.7 添加了对后台和远程桌面 portal 中新方法的支持。该库增强了文档，还改进了单元和集成测试。[libstorage-ng] 4.5.141 更新了瑞典语翻译，现在可以更好地处理 [Btrfs] 6.5 的 json 输出。


[CAB 文件]: https://en.wikipedia.org/wiki/Cabinet_(file_format)
[20230910]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/BPFB2J5U5H5LW6UMTP5BKZ7AW7VZR6EF/
[Mesa]: https://www.mesa3d.org/
[OpenGL]: https://www.opengl.org/
[API]: https://en.wikipedia.org/wiki/API
[vulkan]: https://www.vulkan.org/
[btrfsprogs]: https://btrfs.wiki.kernel.org/
[CRC32C 实现]: https://github.com/google/crc32c
[btrfstune]: https://man7.org/linux/man-pages/man8/btrfstune.8.html
[FIPS]: https://en.wikipedia.org/wiki/Federal_Information_Processing_Standards
[IMA]: https://www.redhat.com/en/blog/how-use-linux-kernels-integrity-measurement-architecture
[libvirt]: https://libvirt.org/
[qemu]: https://www.qemu.org/
[gcab]: https://wiki.gnome.org/msitools
[Flatpak]: https://flatpak.org/
[libportal]: https://github.com/flatpak/libportal
[libstorage-n]: https://github.com/openSUSE/libstorage-ng
[Btrfs]: https://btrfs.wiki.kernel.org/
[dracut]: https://dracut.wiki.kernel.org/index.php/Main_Page

快照 [20230908] 更新了 [python311] 3.11.5，解决了各种安全和错误相关的问题；修复了 SSL 套接字中的安全漏洞并解决了 C API 上潜在的内存访问问题。新的 python 还增强了 python-core 的各个方面（快照中也更新了 [python-core] 和内置库）。此次更新还进行了大量的错误修复和改进，快照还带来了其他几个 [pypi] 更新。[kexec-tools] 2.0.27 更新添加了各种特定于架构的改进和文档增强功能，并且禁用了 ALP 中的 [Xen] 支持。[sssd] 2.9.2 的更新引入了一个名为 `local_auth_policy` 的新选项，并允许控制离线身份验证方法。缓存 DNS 解析器 [unbound] 1.18.0 带来了新功能，例如冲突指标以及对 [Redis] Unix 套接字和密码的支持。该软件包还引入了 [NAT64] 支持。[perl-Bootloader] 1.8 的更新对 `bootloader_entry` 脚本进行了改进，使其可接受可选的 `force-default` 参数。上周五的快照中还更新了其他几个软件包。

[20230908]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/N5HFYFOG2GTQLS2KCMFOM2O4E5LNKFTU/
[python311]: https://www.python.org/
[python-core]: https://pypi.org/project/python-core/
[pypi]: https://pypi.org/
[kexec-tools]: https://github.com/horms/kexec-tools
[sssd]: https://sssd.io/
[Xen]: https://xenproject.org/
[unbound]: https://nlnetlabs.nl/projects/unbound/about/
[Redis]: https://redis.io/
[NAT64]: https://en.wikipedia.org/wiki/NAT64
[perl-Bootloader]: https://github.com/openSUSE/perl-bootloader

------

原文：[Systemd, Kernel update in Tumbleweed](https://news.opensuse.org/2023/09/14/systemd-kernel-up-in-tw/)，作者：Douglas DeMaio
