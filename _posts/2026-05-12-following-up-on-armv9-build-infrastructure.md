---
author: Fangzhou Liu
date: 2026-05-12 11:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: ARMv9 构建基础设施后续进展
image: /assets/posts/2026-05/nvidia.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
- OBS
---

去年六月，[NVIDIA Grace Hopper](https://news.opensuse.org/2025/06/20/grace-hopper-to-boost-tw-armv9-builds/) 正式入驻 [Open Build Service (OBS)](https://build.opensuse.org/) 基础设施，这不仅意味着新硬件的到来，更开启了 [openSUSE 项目](https://www.opensuse.org/)原生 ARMv9 构建能力的新纪元。

数月后的今天，成效正日益显现。

OBS 的[工作节点监控面板](https://build.opensuse.org/monitor)呈现的画面，比任何变更日志都更能说明问题。横跨 `x86_64`、`aarch64`、`ppc64le`、`s930x` 等多种架构的数十个构建工作节点中，更新的 `armv9` 级别机器正在繁忙运转。

项目团队一直在为 ARMv9 重建 [Tumbleweed](https://get.opensuse.org/tumbleweed/) 的部分软件包，工作节点面板直观反映了这些进展。

面板不仅揭示了 `aarch64` 和 `armv9` 节点上的高负载，更展示了构建目标的软件包多样性——从 Linux 内核、[LLVM](https://llvm.org/) 和 [GCC](https://gcc.gnu.org/) 等编译器工具链，到 [Python](https://www.python.org/) 软件包、[Qt](https://www.qt.io/) 框架等，工作节点正以较高的成功率编译这些复杂工作负载。

这些活动对 ARMv9 至关重要，表明它已从概念验证阶段演进为与主 Tumbleweed 树并行的活跃开发发行版路径。

NVIDIA Grace 采用高性能 [ARM](https://www.arm.com/) 架构 CPU 核心与 Hopper GPU 架构，通过 [NVIDIA NVLink™-C2C](https://www.nvidia.com/en-us/data-center/nvlink-c2c/)（芯片间互联）接口连接。该架构允许两个处理器就地访问数据，从而显著加快编译速度并降低复杂工作负载的延迟，提升了 OBS 各流水线的整体效率。

架构差异并非抽象的技术指标。它直接转化为贡献者更短的队列等待时间、软件包维护者更快的反馈循环，以及处理 Tumbleweed 这类滚动发行版所需的大规模并行构建的能力。

在 OBS 中集成原生 ARMv9 硬件，对于释放最大性能优势、成功验证针对该架构优化的构建至关重要。

原生构建消除了模拟交叉编译时常常掩盖关键的[应用程序二进制接口](https://en.wikipedia.org/wiki/Application_binary_interface)（ABI）不匹配、指令调度错误和性能回退问题的风险。将 Grace Hopper 投入生产环境，确保 ARMv9 目标在真实芯片上得到验证，从而保证实际可靠性和峰值性能。

促成这一成果的合作模式值得推广。这些努力体现了对开源的共同承诺，以及对前沿构建能力的需求。这不仅是理念层面的表述，更是业界其他硬件公司可以参考的实践论证。

openSUSE 项目积极欢迎硬件厂商出借或[捐赠硬件](https://en.opensuse.org/Sponsors#Want_to_Become_a_Sponsor_of_openSUSE?)，以在自身系统上启用或测试 openSUSE，或为构建系统提供更多算力。

试想一下，出借或捐赠硬件给 OBS 对一家公司意味着什么。当厂商的芯片作为原生构建目标出现在 OBS 中时，成千上万的开源软件包将针对该架构持续自动地编译、测试和验证。这是硬件厂商 QA 团队梦寐以求的场景！

每一次成功构建都验证了所贡献硬件上的软件就绪度，而每一次失败则在影响最终用户之前主动解决了兼容性问题。持续集成覆盖为新处理器发布提供了关键的风险缓释，而基础设施成本却微乎其微。

OBS 工作节点池具备全面的多架构覆盖能力——Intel/AMD 承担主要负载，同时配有专用的 ARM、POWER 和 Z Systems 节点。通过合作伙伴关系和社区贡献保障的多样化基础设施，确保了在广泛硬件范围内的验证覆盖。

借出、捐赠或托管于项目的机器，将成为一个持续自动化的软件兼容性测试平台——全天候运行，由社区维护，其成果对每一个关注 Tumbleweed 软件包动态的 Linux 开发者可见。

NVIDIA 的合作就是最好的实践示范。OBS 蓬勃发展的构建集群惠及每一位发行版用户、每一位应用开发者，以及每一位产品运行 Linux 的硬件厂商。

如果你的公司生产芯片、加速器或服务器，希望产品在 Linux 上运行良好，那就把硬件交到构建软件的人手中。openSUSE 项目已准备就绪。

如需了解更多信息，请联系 <ddemaio@opensuse.org>

---
原文：[Following Up on ARMv9 Build Infrastructure](https://news.opensuse.org/2026/04/13/follow-up-on-armv9-build-infra/)，作者：Douglas DeMaio
