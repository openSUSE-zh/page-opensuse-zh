---
author: Hanjingxue Boling
date: 2022-05-29 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: openSUSE Leap 15.4 发行公告
image: /assets/posts/2022-05/leap-15.4-rc.png
categories:
- 更新通告
tags:
- Leap
- 翻译作品
- 官方新闻
---

openSUSE Leap 15.4 发行公告

## Leap 15.4 提供新特性和熟悉的稳定性

08/06/2022

纽伦堡，德国 - openSUSE Leap 15 的下一个次要版本现已发布在 [get.opensuse.org](https://get.opensuse.org/leap) 上，提供给想要更新到最新版本的用户、专业人士、爱好者和开发人员。

Leap 15.4 是一个功能发布版本，相比于之前 Leap 15.x 版本，15.4 提供了大量更新以及新功能特性。

“Leap 15.4 继续提供熟悉的坚如磐石的版本，并为桌面、服务器、容器和虚拟化工作负载提供稳定的开源软件，”发布团队成员 Max Lin 说。“对于技术专家来说，Leap 是一个不容忽视的发行版；与它的企业版双胞胎（[SLES](https://www.suse.com/products/server/)）相同，我们通过安全修复、新技术和更新的软件包为专业人士提供了一个精心设计的社区版本。它还提供了大量的社区软件。”

与之前的 Leap 版本一样，用户可以迁移到 SUSE Linux Enterprise 并使工作负载正常运行。此版本进一步提高了迁移熟练度，因为 [YaST](https://yast.opensuse.org/) 团队开发了简化的[迁移工具](https://build.opensuse.org/package/show/YaST:Head/yast2-migration-sle)用于迁移到 SLE。

你可以无缝迁移容器和工作负载，Leap 的容器用途随着新产品 [Leap Micro](https://download.opensuse.org/distribution/leap-micro/) 的发布而扩展。

[Leap 15.4](https://get.opensuse.org/leap) 的新功能之一是 [Leap Micro 5.2](https://en.opensuse.org/openSUSE:Roadmap#Schedule_for_Leap_Micro_5.2)。Leap Micro 是一个现代轻量级操作系统，它是不可变的，非常适合主机容器和虚拟化工作负载。Leap Micro 非常适合分布式计算环境、边缘计算和嵌入式/物联网部署。开发人员和专业人士可以据此构建和扩展用于航空航天、电信、汽车、国防、医疗保健、酒店、制造和机器人技术的系统。Leap Micro 提供自动化管理和补丁。与 Leap Micro 相关的开发人员软件包之一是 [Podman](https://github.com/containers/podman/blob/main/RELEASE_NOTES.md#342)。Podman 为开发者提供了在生产中使用 Podman 运行应用程序的选项，升级后的 [3.4.2](https://github.com/containers/podman/blob/main/RELEASE_NOTES.md#342) 版本为 init 容器带来了新的 pods 支持，init 容器是在其他 pod 启动前运行的容器。

大型开发团队可以通过 openSUSE Leap 15.4 和 Leap Micro 5.2 获得附加值，因为工作负载可以被转移到 SUSE Linux Enterprise Linux 15 SP4 或 [SLE Micro](https://www.suse.com/download/sle-micro/) 以获得延长的维护周期和有利的版本迁移优势。

Leap 15.4 简化了多媒体编解码器的安装。通过系统中默认存在的存储库向用户提供[思科](https://www.cisco.com/) openh264 视频编解码器的工作已经取得进展，该存储库将在维护更新中出现。Leap 15.4 不仅获得了多媒体改进；它还获得了开源驱动程序支持。除了 [AMD](https://www.amd.com/) 和 [Intel](https://www.intel.com/) 不间断维护的开源 Linux 图形驱动程序，使用新款 [NVIDIA](https://www.nvidia.com) GPU 的用户将从它为最新一代 GeForce 30 系列 GPU 签署的固件镜像中受益。

Leap 15.4 的另一个新软件包是 [Dell](https://github.com/dell) 的 [sassist](https://github.com/dell/sassist)。该软件包有助于故障排除/调试戴尔 PowerEdge 服务器的问题；并在 Linux 上运行，与戴尔集成的戴尔远程访问控制器（iDRAC）一起工作，实现日志和配置收集。

使用 Leap 进行服务器部署的人们将发现一些明显的变化。这些变化包括弃用 Python 2、libvirt LXC 容器和 OpenLDAP 服务器。[389 目录服务器](https://directory.fedoraproject.org)将是新的主要的 LDAP 服务器，用于取代已弃用的 OpenLDAP 服务器。

[PHP 8.1.0](https://www.php.net/releases/8.1/) 已经添加了许多改进。这些改进包括枚举、只读属性、fsync 和其他许多改进。 WordPress 的 [PHP 8.1.0](https://www.php.net/releases/8.1/) 还提高了 3.5% 的速度，新的 PHP 版本为 ARM64 提供了一个 [JIT](https://en.wikipedia.org/wiki/Just-in-time_compilation) 后端，同时还有其他 JIT 改进和修复。Leap 的其他几个值得注意的变化包括：Wayland 现在可以使用最新的 NVIDIA 专有驱动程序，而且 YaST 磁盘分区现已支持 LUKS2，但必须明确启用才能使用。

Leap 为桌面用户提供了大量的选择，并且有提供多个软件包的长期支持版本的传统；这个社区版本也没有让人失望。

Leap 15.4 将提供基于 [Qt 5.15 LTS](https://www.qt.io/blog/qt-5.15-released) 且包含了 [KDE Qt5 补丁集](https://dot.kde.org/2021/04/06/announcing-kdes-qt-5-patch-collection) 的 [KDE Plasma 5.24 LTS](https://community.kde.org/Schedules/Plasma_5)。

“为了过渡到像 Qt 6 这样伟大的未来技术，我们需要放心地让我们的现有用户得到满足，” KDE e.V. President Aleix Pol 在一个[有关 Qt5 补丁集的公告](https://dot.kde.org/2021/04/06/announcing-kdes-qt-5-patch-collection)中说道。“通过这个补丁集，我们获得了稳定现状所需的灵活性。这样我们就可以继续与Qt合作，为我们的用户提供优秀的解决方案。”

其他几个特意挑选的软件包是针对 Leap 15.4 的稳定性和开发目的，包括 [Qt6](https://www.qt.io/product/qt6)。

Leap 15.4 为用户提供了一些较新的桌面环境，如 [Plasma 5.24](https://kde.org/announcements/plasma/5/5.24.0/)、[GNOME 41](https://help.gnome.org/misc/release-notes/41.0/) 和 [Enlightenment 0.25](https://www.enlightenment.org/news/2021-12-26-enlightenment-0.25.0)。这些桌面将提供新功能，尽管不是所有版本的桌面都会获得新的功能。例如，Leap 15.4 将继续使用 [Xfce 4.16](https://www.xfce.org/about/news/?post=1608595200)，因为它已在 Leap 15.3 版本中更新。

Leap 15.4 的用户现在可以使用 [KDE Frameworks 5.90.0](https://kde.org/announcements/frameworks/5/5.90.0/)，本次更新包括 对 Baloo、Breeze Icons、KConfig、KIO、Kirigami、KWayland 和 Oxygen Icons 等几个软件包的改进。Leap 15.4 还装载了 [KDE Gear 21.12.2](https://kde.org/announcements/gear/21.12.2/)；本次更新包括对音乐播放器 Elisa 的改进，文件管理器 Dolphin 的搜索标签，并为 KDE 高级视频编辑应用程序 Kdenlive 提供了更快的编辑。

Leap 15.4 将多功能应用程序框架更新至 [https://www.qt.io/blog/qt-5.15.2-released Qt 5.15.2]；Qt 5.12.7 版本自 Leap 15.2 以来一直在发行版中没有改变。Leap 15.4 将带来了三个次要版本的功能，并带有完全支持的 [https://doc-snapshots.qt.io/qt5-5.15/qtquick3d-index.html Qt Quick 3D]。

系统的核心部分已经收到了大量更新。Leap 15.4 将 [systemd](https://github.com/systemd/systemd) 更新到 249 版本，其中有大量的变化以提升用户体验。新的系统组件现在可以正确识别亚马逊 EC2 环境，并对 DHCP 服务器网络管理协议进行了各种改进。Leap 15.4 为 FireWire 设备增加了一个新的 udev 硬件数据库；该版本中另一个值得注意的变化是整个文件系统的 A/B 更新，新的操作系统版本被投放到分区中，这些分区的标签随后被更新为匹配的版本标识。Leap 15.4 提供了最新的编译器集。[LLVM Compiler 13.0](https://releases.llvm.org/13.0.0/tools/clang/docs/ReleaseNotes.html) 有一些主要的新功能和对 Clang 诊断的改进。大约还有几个新的编译器 flag。

DNF 软件栈更新到 4.10.0 版本，并增加了新的功能。增加了对自动检测和排除因依赖性弱而被安装的软件包的支持，使软件包管理器具更优的质量。

Leap 不仅仅是为经验丰富的系统管理员或 IT 专业人士服务。Leap 为音乐家提供软件，以提高他们表演的声音、录音和流媒体质量。虚拟演播室技术与[PipeWire](https://software.opensuse.org/package/pipewire)、[Wireplumber](https://software.opensuse.org/package/wireplumber) 和合成器 [LV2](https://software.opensuse.org/package/lv2) 等软件包将乐器和歌词带到一个新的水平。专业内容创作者和网站设计师可以利用 3D 建模工具如 [Blender](https://software.opensuse.org/package/blender)、视频编辑 [Kdenlive](https://kdenlive.org) 和图像编辑软件如 [Krita](https://software.opensuse.org/package/krita)，将他们的设想变为现实。

我们鼓励那些希望在 Leap 的下一个版本（15.5）的中使用特定软件包的用户与发布团队联系。如果有社区的努力可以用来维护某些软件包，一些软件包可能会在下一个版本中升级。Leap 15.5 预计不会是一个功能版本，应该有许多与 Leap 15.4 相同的版本包。Leap 15 的继任者可能会在 Leap 15.5 发布后不久出现。

有关 openSUSE Leap 15.4 WSL 的更多信息详见[此处](https://en.opensuse.org/openSUSE:WSL)。

### 结束生命周期

openSUSE Leap 15.3 将在今天 Leap 15.4 发布后的六个月内完成其 [End of Life (EOL)](https://en.wikipedia.org/wiki/End-of-life_product)。用户应该在 2022 年 6 月 8 日开始的六个月内更新到 openSUSE Leap 15.4，以便继续接收安全和维护更新。

### 下载 Leap 15.4

你可以访问官网下载 ISO 镜像文件：https://get.opensuse.org/leap/

### 疑问

如果你有关于该版本的问题，或者认为发现了一个错误，我们很愿意听到你的意见:

- https://t.me/openSUSE
- https://t.me/opensuse_cn
- https://lists.opensuse.org/opensuse-support/
- https://discordapp.com/invite/openSUSE
- https://www.facebook.com/groups/opensuseproject
- https://forum.suse.org.cn/

### 加入我们

openSUSE 项目是一个在世界各地推广使用 Linux 的社区。它创造了两个世界上最好的 Linux 发行版，Tumbleweed （滚动发行版）和 Leap（企业-社区混合发行版）。openSUSE 作为全球自由和开源软件社区的一部分，一直以开放、透明和友好的方式合作。该项目由其社区控制，并依靠个人的贡献，作为测试人员、作家、翻译、可用性专家、艺术家和大使或开发者工作。该项目接纳了各种各样的技术、具有不同专业水平的人、讲不同语言和具有不同文化背景的人。你可以在 opensuse.org 上了解更多信息。


------

原文：[发行公告 15.4](https://zh.opensuse.org/%E5%8F%91%E8%A1%8C%E5%85%AC%E5%91%8A_15.4)，作者：openSUSE Wiki