---
author: Hanjingxue Boling
date: 2021-05-13
layout: post
license: CC-BY-SA-3.0
title: openSUSE Step
image: /assets/posts/2021-05/openSUSE Step.png
categories:
- 技术文章
tags:
- Leap
- 翻译作品
- 官方新闻
- openSUSE Step
---

# openSUSE Step 是什么？

openSUSE Step 是一项社区工作，旨在根据已发布的 SUSE Linux Enterprise 源码包重建 SUSE Linux Enterprise (SUSE Linux Enterprise)。这是在 Open Build Service (OBS) 的 openSUSE 实例中公开进行的，目的是保持完全的二进制兼容，并尽可能地与 SUSE Linux Enterprise 的源代码兼容。

# 为什么要 openSUSE Step?

openSUSE Leap 15.3 继承了 SUSE Linux Enterprise 15 SP3 的基础操作系统。在 aarch64、powerpc64 和 x86_64 上，openSUSE 直接使用来自企业端的二进制软件包。除了这些架构之外，openSUSE 还支持 SUSE Linux Enterprise 没有提供的架构，例如 armv7hl，根据最近 openSUSE ARM [社区调查](https://news.opensuse.org/2020/12/01/opensuse-release-team-to-share-results-from-arm-survey-in-online-meetup.md) 的结果，它在 openSUSE 用户中相对流行。对于这些架构，我们现在从 OBS 中公布的 SUSE Linux Enterprise 源中构建完全兼容的二进制包。

openSUSE Step 并非旨在成为一个适用于最终用户的发行版。它并不取代 openSUSE Leap 或提供替代品。Step 是一个中间构件（"步骤"），用来实现像 openSUSE Leap 或其他未来的社区衍生品这样的社区发行版。

# openSUSE Step 现在在做什么?

目前有四个平行定义和存在的版本：openSUSE Step 15，15-SP1，15-SP2，和 15-SP3 。这些版本被托管在 OBS 的 openSUSE 项目命名空间下，并使用 SUSE Linux Enterprise 发布的源码，以及为能够从源码构建它们而需要的最小修改，同时纳入已发布的维护更新。

openSUSE Step 目前包括 i586/x86_64 和 armv7hl 。更多的架构，例如 RISC-V，可以根据贡献者的兴趣和资源能力来添加。

# 它和的 openSUSE Leap 关系是怎样的？

随着 "缩小差距（Closing the Leap Gap）" 项目的推进，openSUSE Leap 将成为一个由三个不同来源的二进制软件包组成的“分层蛋糕”：

* 直接从 SUSE Linux Enterprise 复制的基础操作系统二进制包。
* 目前大约有 50 个软件包的一小部分软件包，为这些 SUSE Linux Enterprise 软件包提供 openSUSE 商标与标记。
* openSUSE Backports，它在上面提供了大量大家喜欢使用的应用程序和库。

openSUSE Step 为那些像 32 位架构那样，没有对应 SUSE Linux Enterprise 版本的 Leap 架构提供了一个替代方案。其他两组起源的软件包将和其他架构一样。

除此之外，openSUSE Step 还为每个人提供了访问构建日志和拥有 "经过构建验证" 的 SUSE Linux Enterprise 项目库的能力，供社区定制，这对那些想从 SUSE Linux Enterprise 软件包来源中衍生的相关项目来说是一个合作空间。

Leap 在 2020 年秋季通过一个名为 Jump 的原型项目过渡到构建 Leap 版本的新方式。Jump 原型被用作概念验证，但现在已经不存在了；事实证明，它在构建发行版和将 openSUSE Leap 和 SUSE Linux Enterprise 的代码流更紧密地联系在一起方面是有效的。这个概念验证被用于构建 Leap 15.3 的发行版。

# 它和 openSUSE Tumbleweed 的关系是怎样的？

openSUSE Tumbleweed 是一个完全由 openSUSE 社区管理和构建的滚动发布版本，它非常注重不断整合新的上游发布版本，同时保持高质量的滚动更新，不出现重大退步。Tumbleweed 是下一个主要 SUSE Linux Enterprise 版本的起源。Tumbleweed 和维护的 SUSE Linux Enterprise 版本之间没有直接的一般关系。openSUSE Backports 项目经常从 Tumbleweed 中获取变化。

# openSUSE Step 允许社区发行版吗？

是的，如果社区的贡献能够提高从源代码构建的能力，并且不以任何方式修改二进制的兼容性，我们是欢迎的。openSUSE Step 的使命是完全兼容，并且在所有的实际应用中，它是 SUSE Linux Enterprise 的一个等价物。

出于（内部）质量验证的目的，Step x86_64 架构也将与其他架构一起构建，但它不会被交付给 openSUSE Leap 或以其他方式暂时可用。

# 我如何联系 openSUSE Step 团队？

openSUSE Step 团队正在 Freenode 的 #opensuse-step 频道中闲聊。如果发现问题，可以在 GitHub 的 https://github.com/openSUSE/step/issues 下报告。

----
源文：[Portal:Leap/openSUSE:Step](https://en.opensuse.org/Portal:Leap/openSUSE:Step)

