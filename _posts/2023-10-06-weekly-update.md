---
author: Poplar at twilight
date: 2023-10-06 07:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Tumbleweed 的图形更新大放异彩
image: /assets/posts/2023-10/gtk.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

由于多个图形和成像包的更新，[openSUSE] [Tumbleweed] 本周的快照使图形显示更加清晰。

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/

openSUSE Tumbleweed 已经发布了 [Mesa]、[GTK]、[ImageMagick]、[webkit2gtk3] 和 [GraphicsMagick] 等的软件包的更新。

[Mesa]: https://www.mesa3d.org/
[GTK]: https://www.gtk.org/
[ImageMagick]: https://imagemagick.org/index.php
[webkit2gtk3]: https://webkitgtk.org/
[GraphicsMagick]: http://www.graphicsmagick.org/

即将发布的快照 [20231003] 对 [Mesa] 进行了更新。Mesa 23.2.0 修复了处理无绑定图像、限制对某些颜色表面使用 flag，并在支持的情况下启用了 [Vulkan] 图形 [API] 的 `VK_EXT_mesh_shader` 扩展。[gtk4] 4.12.3 的更新增强了小部件，修复了 [GIMP Toolkit] 库中的小部件崩溃以及 [Broadway] 渲染器中的[内存泄漏]。[webkit2gtk3] 2.42.1 解决了一些问题，如启用 HTML5 数据库设置以正确控制 IndexedDB API，并切换了一个软件包，以便灵活选择不同的 Unicode 国际组件开发包。快照还发布了图像处理程序 [GraphicsMagick] 1.3.42，修复了 TIFF 和读取各种 BMP 子格式的问题。GraphicsMagick 还引入了新功能，包括使用 JPEG 压缩读取和写入 BMP 的能力以及支持读取使用 PNG 压缩的 BMP 文件。[systemd] 254.5 的更新对包规范文件进行了一些调整，以更好地兼容 [Leap] 和 [SLE]。快照中还更新了其他几个软件包。

[20231003]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/75CFXEG2U7FB2XQYPYAI7RWNRWCGZWV7/
[Vulkan]: https://www.vulkan.org/
[API]: https://en.wikipedia.org/wiki/API
[gtk4]: https://www.gtk.org/
[Broadway]: https://blogs.gnome.org/alexl/2019/03/29/broadway-adventures-in-gtk4/
[webkit2gtk3]: https://webkitgtk.org/
[GraphicsMagick]: http://www.graphicsmagick.org/
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[Leap]: https://get.opensuse.org/leap/
[SLE]: https://www.suse.com/products/server/
[内存泄漏]: https://en.wikipedia.org/wiki/Memory_leak
[GIMP Toolkit]: https://www.gimp.org/

快照 [20231001] 将多功能图像处理软件包 [ImageMagick] 更新至 7.1.1.18 版本。此测试版本解决了多个静态分析器问题，消除了编译器警告并进行了一些外观更改。[php8] 和 [apache2-mod_php8] 8.2.11 的更新解决了一些 [RISC-V] 兼容性问题和一些[内存泄漏]。[suse-module-tools] 16.0.36 的更新解决了一个被识别为 [CVE-2023-1829] 的严重安全漏洞；此漏洞可能导致特权升级。针对存储和传输协议的命令行设备管理包 [nvme-cli] 的更新增强了在 `create-ns` 命令中分配有效载荷缓冲区后的性能；nvme-cli 2.6 还将特定模块列入黑名单，以解决安全性和兼容性问题。该软件包还对插件和实用程序进行了各种改进。上述软件包以及 [libnvme] 的更新在快照中的变化最大。libnvme 1.6 的更新增强了 [Python] 兼容性，引入了一些解析和检索各种功能的函数，并具有与结构处理、子系统匹配算法和上下文检查相关的各种改进。快照还更新了其他几个软件包，包括 [xdg-utils] 1.2.0 beta 版本，它增强了对 [LXQt] 桌面环境的支持，更好地处理 [desktop 文件]路径中的空格并修复了一些 shell 脚本。

[20231001]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/54VTY2DLJBY5ZVF65QHFWJGYUJUWQVXS/
[ImageMagick]: https://imagemagick.org/index.php
[php8]: https://www.php.net/
[apache2-mod_php8]: https://software.opensuse.org/package/apache2-mod_php8
[RISC-V]: https://riscv.org/
[suse-module-tools]: https://github.com/openSUSE/suse-module-tools
[CVE-2023-1829]: https://www.suse.com/security/cve/CVE-2023-1829.html
[nvme-cli]: https://github.com/linux-nvme/nvme-cli
[libnvme]: https://github.com/linux-nvme/libnvme
[Python]: https://www.python.org/
[xdg-utils]: https://www.freedesktop.org/wiki/Software/xdg-utils/
[desktop 文件]: https://wiki.archlinux.org/title/Desktop_entries
[LXQt]: https://lxqt-project.org/

快照 [20230929] 将网络浏览器 [Mozilla Firefox] 更新至新的主要版本 118.0.1。该更新解决了 10 个 [CVE]，包括[堆缓冲区溢出]、[内存泄漏]、[内存损坏]和双重释放问题。添加补丁时，Firefox 还暂时停用了 [KDE 集成插件]。快照中的另一个主要更新是色彩管理包 argyllcms 3.0。[argyllcms] 对 icclib 进行了广泛的重写，以确保不会过时，具有新的测量功能并修复了与仪器相关的错误。[gstreamer] 1.22.6 及其多个插件的更新修复了 H.264 中的延迟问题，提高了与各种 RTMP（实时信息传输协议）和 RTSP（实时流媒体协议）服务器的兼容性，并增强了信号打印功能，使信号更加清晰。[mpg123] 1.32.2 的更新解决了 1.31 系列的回退问题，并改进了构建逻辑和大文件处理能力。快照中更新了其他几个软件包，包括 [openssl-3] 3.1.3、[yast2-python-bindings] 的主要版本 5.0.1 等。

[KDE 集成插件]: https://addons.mozilla.org/en-US/firefox/addon/plasma-integration/
[20230929]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/F5WHUSQSIXJNDG75UVNNF7RZEYAFZVDZ/
[Mozilla Firefox]: https://www.mozilla.org/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[堆缓冲区溢出]: https://en.wikipedia.org/wiki/Buffer_overflow
[内存损坏]: https://en.wikipedia.org/wiki/Memory_corruption
[argyllcms]: https://www.argyllcms.com/
[gstreamer]: https://gstreamer.freedesktop.org/
[mpg123]: https://www.mpg123.de/
[openssl-3]: https://www.openssl.org/
[yast2-python-bindings]: https://github.com/yast/yast-python-bindings

------

原文：[Tumbleweed's Graphic Updates Shine](https://news.opensuse.org/2023/10/05/tws-graphic-ups-shine/)，作者：Douglas DeMaio
