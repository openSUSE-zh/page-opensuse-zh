---
author: Fangzhou Liu
date: 2025-11-30 09:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: SUSE 推出树莓派 5 支持
image: /assets/posts/2025-11/rpi5.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
---
这一天终于到来了。[树莓派 5](https://en.opensuse.org/HCL:Raspberry_Pi5) 用户现在可以期待 openSUSE Tumbleweed 提供的完善支持。

**这不仅仅是 U-Boot 层面的支持，远比这更多**。这得益于多方的辛勤付出——包括 SUSE 硬件适配团队、[树莓派](https://www.raspberrypi.com/)、[Ideas on Board](https://ideasonboard.com/)、[Linaro](https://www.linaro.org/) 等机构的众多工程师，以及 Linux 和 [U-Boot](https://u-boot.org/) 子系统维护者，还有许多耐心审核我们补丁的工程师。

很多人可能会疑惑，为何树莓派 5 设备迟迟未能在树莓派 OS 之外的系统上获得支持；现在，他们无需再为此困惑了。

## 关于启动流程

首先，我们来重点说明简化后的系统级启动架构差异。

在树莓派 OS 中，设备 EEPROM 中存储的固件会直接运行厂商开发的 Linux 内核。

在 openSUSE 中，我们使用 GRUB2。但 GRUB2 本身需要机器具备 UEFI 固件接口才能定位启动文件。因此，openSUSE 采用了广泛使用的 [Das U-Boot](https://u-boot.org/) 引导程序来提供这些接口。

这种软件组合在 (open)SUSE 产品中运行良好，但这也意味着我们必须为 U-Boot 和 Linux 内核添加树莓派 5 缺失的相关功能。

## 树莓派 5 新硬件增强特性

在硬件方面，树莓派 5 与前几代设备相比存在一些显著差异。

树莓派 5 之前的所有型号中，所有控制器（如 USB、以太网、SPI、I2C、GPIO、CSI 等）均集成在主 SoC（BCM2835、BCM2836、BCM2837、BCM2710、BCM2711）中，且不同代际 SoC 中的这些控制器大致相同。因此，在 U-Boot 和 Linux 中为它们添加支持相对直接简单。

而树莓派 5 则发生了重大变化：新增了一款名为 RP1 的“南桥”芯片，上述所有控制器均集成于该芯片中。RP1 通过 PCIe 总线与主 SoC（BCM2712）相连。

幸运的是，有一点保持不变：MicroSD 卡控制器仍属于主 SoC 的一部分。因此，除了 SD 控制器内部的一些细微差异外，在 U-Boot 和 Linux 中为其添加支持相对容易。

[BCM2712 SD 控制器的初始 U-Boot 支持](https://lore.kernel.org/u-boot/20240123080819.13625-6-iivanov@suse.de/)

[添加树莓派 5 的最小化启动支持](https://lore.kernel.org/linux-arm-kernel/cover.1716899600.git.andrea.porta@suse.com/)

这让人们[**认为**](https://forums.opensuse.org/t/booting-microos-on-raspberry-pi-5-sd-card/171805) openSUSE 已可在该设备上运行。

但这仅仅是漫长征程的开始。

让我们回到 PCIe 部分。旧款树莓派也具备 PCIe 根复合体，但与树莓派 5 的根复合体存在细微差异。因此，为了让 U-Boot 或 Linux 能够访问所有关键控制器设备，我们必须在 U-Boot 和 Linux 内核中添加相关支持。这一功能通过以下补丁集实现：

[为 BCM2712 添加 PCIe 支持](https://lore.kernel.org/linux-arm-kernel/20250224083559.47645-1-svarbanov@suse.de/)

Linux 内核中还纳入了其他几项重要内容：

* [新增对新型 MSI-X 中断外设的支持](https://lore.kernel.org/linux-arm-kernel/20250120130119.671119-4-svarbanov@suse.de/)

* [为 BCM2712 片上系统添加引脚控制驱动支持](https://lore.kernel.org/linux-arm-kernel/cover.1756372805.git.andrea.porta@suse.com/)

* [新增对 RP1 提供的时钟的支持](https://lore.kernel.org/linux-arm-kernel/20250530234051.465593-1-florian.fainelli@broadcom.com/)

* [实现对树莓派 RP1 GPIO 的支持](https://lore.kernel.org/linux-arm-kernel/20250530234058.465687-1-florian.fainelli@broadcom.com/)

当 PCI Express 驱动能够正常工作，且 Linux 可以识别连接到 PCIe 根复合体的设备后，我们还需移植用于处理全新 RP1 芯片的驱动——该芯片集成了 USB、以太网等控制器。但这项工作难度不小，因为各方对于该驱动的实现方式存在诸多不同看法。但最终，我们成功将该驱动合并至内核：

[新增对树莓派 RP1 PCI 设备的支持](https://lore.kernel.org/linux-arm-kernel/cover.1748526284.git.andrea.porta@suse.com/)

至此，Linux 已能识别挂载在 RP1 芯片后的各类设备。
当然，这些控制器（例如以太网控制器）与 BCM2711 上的同类控制器存在些许差异，因此需要一套全新的补丁来适配：

[新增对树莓派 RP1 以太网控制器的支持](https://lore.kernel.org/linux-arm-kernel/20250916081059.3992108-1-svarbanov@suse.de/)

显然，要让该设备达到可用状态，还需要大量其他补丁。
以下仅列出其中极小一部分：

目前，openSUSE Tumbleweed 可从 SD 卡正常启动，直至通过 HDMI 输出进入图形化桌面环境。

启动至 Tumbleweed 后，你可正常使用以下功能：

* 以太网
* 无线网络（WiFi）
* 蓝牙
* USB
* HDMI
* ……

## 后续规划

U-Boot 有望很快新增对 BCM2712 PCIe 根复合体控制器的支持，这将为设备带来从磁盘启动的能力。以太网控制器的相关修复也在推进中。

[增强树莓派 5 支持](https://lore.kernel.org/u-boot/20251010161442.410C4227AAE@verein.lst.de/)

由于 USB 是通过 PCIe 总线连接至 RP1 芯片的，目前 U-Boot 暂不支持 USB 功能。这意味着你无法在 U-Boot 或 Grub2 中使用 USB 键盘（因为 Grub 依赖 U-Boot 提供的 EFI 实现）。敬请耐心等待后续更新。

## 准备工作

在开启树莓派 5 运行 openSUSE 的体验之旅前，请确保你的设备已完成最新的 EEPROM 固件更新。

若你刚拿到的树莓派 5 尚未安装任何系统，可通过树莓派镜像烧录工具（Raspberry Pi Imager）制作一张包含 EEPROM 更新程序的 MicroSD 卡；也可直接在树莓派 5 已有的系统镜像中运行以下命令完成更新：

```
sudo rpi-eeprom-update -a
sudo reboot
```

## 切勿跳过 Debug Probe

若你在测试镜像时发现树莓派 5 卡在 U-Boot 阶段，遇到此问题的并非你一人。该已知问题正通过以下编号追踪：

[boo#1250992](https://bugzilla.opensuse.org/show_bug.cgi?id=1251192)。

当前的解决方案仅为**临时规避措施**，该问题预计很快会被修复。

在树莓派 5 上调试 openSUSE 时，使用[调试探针](https://www.raspberrypi.com/documentation/microcontrollers/debug-probe.html)能帮你节省大量时间，避免诸多麻烦。此外，它也是后续开展嵌入式项目时一款实用的常备工具。

## 树莓派 5 相关补丁极简清单

* [新增 DRM HDMI 编解码器框架](https://lore.kernel.org/linux-arm-kernel/20241201-drm-bridge-hdmi-connector-v5-0-b5316e82f61a@linaro.org/)

* [新增对 BCM2712 HVS（硬件视频缩放器）的支持](https://lore.kernel.org/linux-arm-kernel/20241025-drm-vc4-2712-support-v2-10-35efa83c8fc0@raspberrypi.com/)

* [新增对 BCM2712 / 树莓派 5 显示硬件的支持](https://lore.kernel.org/linux-arm-kernel/20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com/)

* [新增对 BCM2712 看门狗的支持](https://lore.kernel.org/linux-arm-kernel/20251031183309.1163384-1-svarbanov@suse.de/)

* [新增树莓派 RP1 ADC（模数转换器）支持](https://lore.kernel.org/linux-arm-kernel/20250925000416.2408457-1-svarbanov@suse.de/)

## 推荐尝试的镜像

现在，你可以在树莓派 5 上运行大多数与树莓派 4 兼容的 [Tumbleweed 设备镜像](https://download.opensuse.org/ports/aarch64/tumbleweed/appliances/)；若你偏好不可变系统，也可选择 **MicroOS**。
openSUSE Leap 和 Leap Micro 目前暂未纳入适配范围，但预计将在后续版本（2026 年末发布的 16.1 和 6.3 版本）中获得完整支持。

开始前，请确保已连接 **Debug Probe**。
随后，从 [openSUSE Tumbleweed 设备镜像库](https://download.opensuse.org/ports/aarch64/tumbleweed/appliances/) 中选择一款树莓派镜像写入 MicroSD 卡，即可启动使用。

若你不确定选择哪款镜像，[Tumbleweed Arm 树莓派 GNOME 镜像](https://download.opensuse.org/ports/aarch64/tumbleweed/appliances/openSUSE-Tumbleweed-ARM-GNOME-raspberrypi.aarch64.raw.xz) 是稳妥之选。

```
xzcat image.aarch64.raw.xz | dd of=/dev/sda bs=1M status=progress conv=fsync; sync
```

若遇到任何问题，强烈建议通过 [openSUSE Arm Matrix 频道](https://matrix.to/#/#arm:opensuse.org) 咨询，或 [订阅](https://lists.opensuse.org/manage/lists/arm.lists.opensuse.org/) [openSUSE Arm 邮件列表](https://lists.opensuse.org/archives/list/arm@lists.opensuse.org)。此外，你也可以通过 [forums.opensuse.org](https://forums.opensuse.org/) 咨询 general openSUSE 相关问题。
如需了解更多 ARM 平台相关信息，可访问 [openSUSE ARM 门户](https://en.opensuse.org/Portal:Arm)。

## 为何在树莓派 5 上运行 openSUSE

官方树莓派 OS 提供了简洁的桌面体验，但它主要面向桌面使用场景，默认并未包含容器等功能。

借助 SUSE 的硬件适配工作，你现在可以在树莓派上获得**完整的 openSUSE 体验**。就我个人而言，我喜欢搭配使用 [Cockpit](https://www.youtube.com/watch?v=ANh5FHZDOxo) 与自动更新功能，甚至还在我的树莓派上通过容器运行了私人 openSUSE 镜像和 [Nextcloud AIO](https://www.youtube.com/watch?v=mlqWeLkG55U)。

## 值得庆贺的时刻

![rpi5winner](/assets/posts/2025-11/rpi5winner.png)

为庆祝 SUSE Hardware Enablement 团队的辛勤付出，我们已向好友 **Dale from [LowTechLinux](https://www.youtube.com/c/LowTechLinux)** 和 **Liam from [The Register](https://www.theregister.com/)** 赠送了 Raspberry Pi 5 入门套件及 Debug Probe，邀请他们向社区分享初体验。

我们还为上周末 [openALT.cz](http://openalt.cz/) 活动的参会者 **Tomáš** 带来了惊喜——他在我们的 [openSUSE Quiz](https://quiz.opensuse.org/) 中脱颖而出，赢得了 Raspberry Pi 5 和 Debug Probe。
这款问答应用被全球 openSUSE 展位工作人员广泛使用，如今新增了“openSUSE Arm”专区，帮助参与者深入了解 openSUSE 在 [Arm 领域的相关工作](https://en.opensuse.org/Portal:Arm)。

敬请持续关注我们的 [Raspberry Pi 5 硬件兼容性页面](https://en.opensuse.org/HCL:Raspberry_Pi5)。
待 Raspberry Pi 5 的 USB 启动和 PCIe 功能完全就绪后，我们将分享更多更新内容。

---
原文：[SUSE delivers Raspberry Pi 5 support](https://news.opensuse.org/2025/11/04/raspberrypi5-opensuse/)，作者：Ivan Ivanov 和 Lubos Kocman
