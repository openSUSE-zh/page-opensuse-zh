---
author: Poplar at twilight
date: 2023-10-01 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Firefox、hiredis 和 Strace 在 Tumbleweed 中更新
image: /assets/posts/2023-10/strace.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

[openSUSE] [Tumbleweed] 本周很频繁地发布更新，每个快照都包含相当数量的软件包。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

本周更新的一些软件包包括 [Vim]、[libsoup]、[libzypp] 和 [strace] 等。

[Vim]: https://www.vim.org/
[libsoup]: https://gitlab.gnome.org/GNOME/libsoup.git
[libzypp]: https://github.com/openSUSE/libzypp
[strace]: https://strace.io/

快照 [20231101] 发布了 13 个很酷的软件包。其中包括 [ramdisk] 初始化工具 [dracut] 的更新。dracut 解决了与 [PKCS11]、dracut 版本处理、Bash 兼容性、网络设备命名等相关的问题。[gnome-text-editor] 45.1 的更新改进了正确的实体标签，用于在“另存为”操作后比较文档。[gnome-text-editor] 修复了首选项中的行样式并解决了 `GtkNativeDialog` 的内存泄漏问题。[hxtools] 20231101 的更新进行了一些更改，如为 qtar 工具添加压缩 `.zst` 后缀支持，以消除规范文件中不必要的行。[poppler] 23.10.0 的更新对一些核心功能进行了改进，例如更新 [Cairo 1.18] [API] 的 type 3 字体，并修复了格式错误的文件的崩溃问题。构建系统的改进使某些依赖项成为软强制（soft-mandatory），并增加了对更多 [gpg] 版本的支持。快照还更新了 [yast2-trans]、[selinux-policy] 20231030、[gpgme] 1.23.1 等软件包。

[20231101]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/K5LADT4ZKF4YEIDDHWYXELTYMI3NZ2KP/
[ramdisk]: https://en.wikipedia.org/wiki/RAM_drive
[dracut]: https://dracut.wiki.kernel.org/index.php/Main_Page
[PKCS11]: https://en.wikipedia.org/wiki/PKCS_11
[gnome-text-editor]: https://gitlab.gnome.org/GNOME/gnome-text-editor
[hxtools]: https://inai.de/projects/hxtools/
[poppler]: https://poppler.freedesktop.org/
[Cairo 1.18]: https://www.cairographics.org/news/cairo-1.18.0/
[API]: https://en.wikipedia.org/wiki/API
[gpg]: https://gnupg.org/
[yast2-trans]: https://software.opensuse.org/package/yast2-trans
[selinux-policy]: https://github.com/SELinuxProject
[gpgme]: https://www.gnupg.org/related_software/gpgme/

万圣节快照并不算太可怕，🎃 👻 快照 [20231031] 粉碎了大量 [CVE]。[Mozilla Firefox] 119.0 通过 10 个更新的软件包解决了大量 CVE。Firefox 修复了严重的，可用于发动点击劫持攻击的 [CVE-2023-5721]；这种攻击可能会通过改善激活延迟来诱骗用户无意中与浏览器提示和对话框进行交互。Firefox 还发布了对跨源大小（cross-origin size）和标头泄漏、cookie 字符问题的修复，并解决了其他 10 个 CVE。Firefox 还需要 Mozilla 网络安全服务（[Mozilla NSS]）3.94 才能实现其功能，该更新已在快照 [20231029] 中发布。Plasma 用户需要知道的一件事：此快照已通过提高兼容性的更新补丁重新激活了 [KDE 集成插件]。[gnu-unifont-fonts] 15.1.04 的更新在默认字体和日文字体中加入了更大的 Plane 2 和 Plane 3 [字形]超集。[ncurses] 6.4.20231021 的更新中显著的变化包括在虚拟终端 emulator-2014 中使用 [oldxterm+sm+1006]、“opaque” 和 “widec” 选项的默认配置更改，以及该软件包对编译器进行了一些小的清理和联机帮助页警告。命令行工具 [qpdf] 更新至 11.6.3 版本，并进行了一些调整以改进对 2 GB 到 4 GB 大小的文件的处理。qpdf 还修复了数据丢失错误，该错误可能会在转义少于三位数字的八进制字符串后丢弃字符。该错误是在 qpdf 10.6.3 至 11.0.0 之间引入的。诊断、调试和指导用户空间包 [strace] 6.6 引入了一个新的 `--kill-on-exit` 选项，该选项将 `PTRACE_O_EXITKILL` 设置为所有被跟踪进程，并阻止它们在跟踪器退出后运行。当使用 `-seccomp-bpf` 而不使用 `-p/--attach` 选项时，此选项会自动激活。strace 还实现了一些新的系统调用解码,并不断进行更新。文件管理器 [Thunar] 4.18.8 进行了一些改进，允许它猜测要使用的正确显示器，并修复了与未设置的 [GNOME] 输入/输出 (GIO) 属性相关的关键问题。快照中更新了 [Shadow] 4.14.2 和其他一些软件包。

[Mozilla NSS]: https://firefox-source-docs.mozilla.org/security/nss/index.html
[KDE 集成插件]: https://community.kde.org/Plasma/Browser_Integration
[字形]: https://en.wikipedia.org/wiki/Glyph
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[20231031]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/RGMC5BF6IJVGWP7YN4L5AC4HFH3FJDN7/
[Mozilla Firefox]: https://www.mozilla.org/
[CVE-2023-5721]: https://www.suse.com/security/cve/CVE-2023-5721.html
[20231029]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/M5MO4IXSWPE4WJTY6B4UUOZ6IJL52HIB/
[gnu-unifont-fonts]: https://unifoundry.com/unifont/index.html
[ncurses]: https://en.wikipedia.org/wiki/Ncurses
[oldxterm+sm+1006]: https://github.com/ThomasDickey/old-xterm/tree/master
[qpdf]: https://github.com/qpdf/qpdf
[Thunar]: https://en.wikipedia.org/wiki/Thunar
[GNOME]: https://www.gnome.org/
[Shadow]: https://github.com/shadow-maint/shadow/
[strace]: https://strace.io/

快照 [20231030] 更新了 [glslang] 13.1.1，引入了对 `GL_EXT_texture_shadow_lod` 和 `GL_NV_displacement_micromap` 扩展的支持。glslang 还添加了一个新的 `--no-link` 选项，并删除了之前合并的与 [CMake] 和资源限制相关的补丁。为 [Redis] 数据库提供简约且易于使用的客户端的 [C] 库 [hiredis] 1.2.0 的更新包括了为 sdevent 适配器添加各种功能、指定 keepalive 间隔的能力和 RedisModule 适配器。hiredis 还提供了用于设置 `TCP_USER_TIMEOUT` 套接字选项的帮助程序，并包含错误修复以提高稳定性和功能。[vulkan-loader] 1.3.268.0 更新引入了 `VK_LOADER_LAYERS_ALLOW` 环境变量，并增加对测试层中的 Debug 扩展的支持；这些更改增强了 [Vulkan] 加载器在 Vulkan 应用程序中的管理层和扩展的功能。[vulkan-tools] 1.3.268.0 是快照中最后更新的软件包，增强了 Vulkan 工具用于图形和计算应用程序的功能。

[C]: https://en.wikipedia.org/wiki/The_C_Programming_Language
[20231030]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/265PZ72HKSVVTEVFJ3K7XI6Y3W33EI42/
[glslang]: https://github.com/KhronosGroup/glslang
[CMake]: https://cmake.org/
[hiredis]: https://github.com/redis/hiredis
[vulkan-loader]: https://github.com/KhronosGroup/Vulkan-Loader
[Vulkan]: https://www.vulkan.org/
[vulkan-tools]: https://github.com/KhronosGroup/Vulkan-Tools
[redis]: https://redis.io/

快照 [20231029] 更新了相对数量的软件包。[glib2] 2.78.1 的更新处理了各种错误修复和改进。glib2 修复了 ` g_file_set_contents_full()` 的文件截断问题，解决了构建错误并确保正确的文件处理。glib2 还添加了一些增强功能，如保留访问/修改时间的微秒。开源 HTTP 客户端/服务器库 [libsoup] 3.4.4 改进了 HTTP/2 性能，特别是在存在大量缓冲时。libsoup 添加了对将 [libnghttp2] 实现构建为子项目的支持，这增强了 libsoup 处理 HTTP 请求和响应的功能。[libstorage-ng] 在本周的第二次更新中，更新至 4.5.155 版本。此更新包括合并一个特定的 [GitHub issue] 和扩展测试套件等更改。[mozilla-nss] 3.94 更新为 Tumbleweed 版本的后续更新做好了准备，并改进了[字符串文字]（String literals）的处理以及其他调整，以提高库的功能和安全性。[php8] 8.2.12 的更新解决了核心组件中的内存泄漏、类型错误和段错误等问题。php8 还增强了各种 PHP 模块和函数的性能、异常处理和内容检测。文本编辑器 [vim] 9.0.2078 更新包括许多错误修复和改进。vim 解决了与类型别名、Vim9 支持、文本更改触发器等相关的问题。vim 还增强了安全措施，改进了文件识别并解决了快照中与文档相关的各种问题。快照中还包含其他软件包更新，[xfconf] 降级到 4.18.1 版本，该软件包在快照 [20231028] 中提前一天升级到版本 4.18.2。

[glib2]: https://wiki.gnome.org/Projects/GLib
[libnghttp2]: https://nghttp2.org/
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[mozilla-nss]: https://wiki.mozilla.org/NSS
[字符串文字]: https://www.ibm.com/docs/en/zos/2.3.0?topic=literals-string
[vim]: https://www.vim.org/
[xfconf]: https://docs.xfce.org/xfce/xfconf/start
[20231028]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MWWNQU5YOCJGYUVQABFDZSRCJ2E2KCTQ/
[GitHub issue]: https://github.com/openSUSE/libstorage-ng/pull/963
[php8]: https://www.php.net/

快照 [20231028] 更新了 [Linux 内核][kernel-source]。[kernel-source] 6.5.0 版本带来了诸如蓝牙增强功能以​​及与 ice、KVM 和x86 相关的修复等改进。[ALSA] 编解码器 [wcd938x] 也收到了更新，以解决运行时包管理器不平衡和资源泄漏问题。 [libstorage-ng] 4.5.154 的更新增强了 SystemCmd 中的错误报告，添加了测试用例并更多地利用新的 SystemCmd 界面，以及其他细微的增强和修复。[libzypp] 17.31.23 更新解决了计时器库的问题。[openssl] 3.1.4 的更新修复了密钥和 IV 大小调整问题并提高了加密性能。Xfce 桌面环境的 [xfconf] 软件包更新至版本 4.18.2，并带来了各种增强功能。

[kernel-source]: https://www.kernel.org/
[wcd938x]: https://www.qualcomm.com/content/dam/qcomm-martech/dm-assets/documents/qualcomm_aqstic_wcd937x_specs.pdf
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[openssl]: https://www.openssl.org/

------

原文：[Firefox, hiredis, Strace updates in Tumbleweed](https://news.opensuse.org/2023/11/03/ff-hiredis-strace-up-in-tw/)，作者：Douglas DeMaio
