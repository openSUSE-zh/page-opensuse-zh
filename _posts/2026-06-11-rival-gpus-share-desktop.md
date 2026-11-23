---
author: Douglas DeMaio
date: 2026-06-11 13:00:00 +0200
layout: post
license: CC-BY-SA-4.0
title: 竞品 GPU 共用一个 Linux 桌面
image: /assets/posts/2026-06/hybrid.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
- Leap
- GPU
- AMD
- nvidia
---

多年来，摄影师 Klaus Tröger 的专业工作流一直建立在一个安静的矛盾之上：一台 Linux 工作站，运行着大多数人认为只属于 Mac 或 Windows PC 的 Adobe 软件。

“我不愿意放弃 Linux，也不愿意放弃 Adobe，”Klaus 说，“所以我两者都要。”

如今，他把这套安排带到了更新的平台上。Klaus 最近将他使用多年的 Debian 机器迁移到了 [openSUSE Leap 16.1](https://get.opensuse.org/) 的 beta 版本，并且全程没有中断修图工作——他在一台从不直接接入本地网络的 Windows 11 虚拟机中运行 Adobe Lightroom、Camera Raw 和 Photoshop。

这套方案呼应了一个小众但坚定的专业用户群体：他们偏爱 Linux 作为日常环境，却无法放弃 Adobe Creative Cloud——无论是出于客户工作需要，还是长期养成的修图习惯。Klaus 承认开源替代品确实存在，但它们并不总能贴合一个已经成型的业务。

这套系统背后的硬件是刻意选择的旧款，Klaus 说这正是关键所在。他没有追逐现价高企的最新配件，而是选择了 Intel 较老的 LGA-1151 平台，将一颗 Core i9-9900K（Intel Coffee Lake 世代的 8 核 16 线程处理器）与一块 Asus Z390 WS Pro 主板搭配。他说，这两件产品在当年都是旗舰：处理器提供强劲的基准性能，主板提供稳定性。由于 WS Pro 已变得稀有且昂贵，他指出同样的思路也适用于更常见的 Asus ROG-STRIX Z390-F 主板加 6 核的 Core i7-8700K。

主板的重要性与其说在于速度，不如说在于隔离。为了把物理硬件交给虚拟机，Klaus 依赖 Linux 的 `vfio-pci` 驱动，这要求被直通的设备位于各自的 IOMMU 组中——IOMMU 组是硬件用来相互隔离组件的机制。

这一要求造就了这台工作站最令人惊讶的特性：装着两家竞争对手厂商的显卡。一块 AMD Radeon RX 6600 驱动 Linux 桌面，而一块 Nvidia RTX 3060 则完全专用于 Windows。Klaus 说，与常见的成见相反，现代 Linux 处理 AMD 与 Nvidia 混合配置毫无冲突。

对 Windows 这一侧来说，独立显卡不是可选项。Adobe 的软件需要真正的 GPU 来做后期处理。软件模拟行不通，而显卡的门槛并不算高：需要 1.5 到 2 GB 显存、兼容 DirectX 12，以及不超过七年历史的驱动程序。将符合条件的显卡以其独立的 IOMMU 组直通给 Windows 客户机后，Adobe 应用程序就能以接近原生的硬件加速运行，而 Linux 仍然掌控全局。

Klaus 说，大多数消费级主板都很难做到这种隔离，这与它们分配 PCIe 通道和 IOMMU 组的方式有关。他给出了两种绕过方案：其一是让 Linux 主机使用 Intel 芯片的核芯显卡，这对渲染需求不高的用户来说最简单也最省钱；其二是使用双显卡，把主 GPU 插在由 CPU 管理的第一条 PCIe 插槽，把用于直通的显卡插在由 Z390 芯片组管理的插槽上，这样两块卡就会落在不同的组里。

机器的其余部分同样遵循“划分与隔离”的逻辑。一块独立的 USB 控制器交给虚拟机，让 Windows 拥有自己的键盘和鼠标。Windows 独占一块高速 [NVMe](https://en.wikipedia.org/wiki/NVM_Express) 固态硬盘。Klaus 将 10 个处理器线程固定给主机、6 个固定给客户机，借助大页（huge pages）将 64 GB 内存对半分配，并把默认的电源守护进程换成设置为 virtual-host 配置的 `tuned` 工具。

他刻意留了一个例外：没有把第二块 NVMe 硬盘直接分配给 Windows，而是把客户机以磁盘镜像文件的形式存放在 XFS 分区上。

“想备份的话，直接把 Windows 文件拷走就行了，非常简单。”他说。

主机操作系统的选择本身也经过了一番斟酌。Klaus 之前因稳定性而运行 [Debian](https://www.debian.org/) 13。他觉得 openSUSE 的滚动发行版 [Tumbleweed](https://get.opensuse.org/) 过于激进，而 [Leap](https://get.opensuse.org/) 15.6 又太过陈旧，于是 Leap 16.1 预发布版本就成了值得一试的选择。安装使用 [Agama](https://agama-project.github.io/) 安装程序，采用 LVM 磁盘布局和用于快照与回滚的 [Btrfs](https://btrfs.readthedocs.io/) 根文件系统，用他的话说，整个过程“零意外”。

他说，性能几乎与原生持平。虚拟化总会带来一些开销，“但完全值得”。

安全性也是吸引力之一。Windows 从不直接暴露在本地网络上，而是躲在 Linux 主机之后，受主机防火墙和额外管控的保护。Klaus 说，这种安排在兼容性与暴露面之间取得了平衡：Windows 只为少数必需的应用程序待命，其余一切都由 Linux 运行。

当被问及如果今天重新组装这台机器会做出什么改变时，Klaus 毫不犹豫：“没什么可改的。”

他对有意组建类似系统的摄影师和高阶用户的建议，归结为一个要尽早做出的决定：谨慎选择基础硬件，并在购买前确认打算直通的组件能否按 IOMMU 组干净地分开。他警告说，消费级主板往往做不到这一点。

---
原文：[Rival GPUs Share One Linux Desktop](https://news.opensuse.org/2026/06/11/rival-gpus-share-desktop/)，翻译：Fangzhou Liu
