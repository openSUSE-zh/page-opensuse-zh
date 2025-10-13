---
author: Fangzhou Liu
date: 2025-10-11 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Leap 16.0 发布，新篇章开启
image: /assets/posts/2025-10/kde.png
categories:
- 更新通告
tags:
- 翻译作品
- 官方新闻
- Leap
---
[CA](https://en.opensuse.org/Anunci_de_la_versi%C3%B3_16.0) / [CS](https://cs.opensuse.org/Ozn%C3%A1men%C3%AD_nov%C3%A9ho_vyd%C3%A1n%C3%AD_16.0) / [JA](https://ja.opensuse.org/%E3%83%AA%E3%83%AA%E3%83%BC%E3%82%B9%E3%82%A2%E3%83%8A%E3%82%A6%E3%83%B3%E3%82%B9_16.0) / [LT](https://en.opensuse.org/Skelbimas_apie_16.0_laid%C4%85) / [SV](https://en.opensuse.org/Release_announcement_16.0_sv) / [ES](https://es.opensuse.org/openSUSE:Anuncio_de_la_publicaci%C3%B3n_de_la_versi%C3%B3n_Leap_16) / [ZH-TW](https://zh-tw.opensuse.org/Release_announcement_16.0)

2025 年 10 月 1 日，openSUSE 项目成员非常荣幸地宣布 openSUSE [Leap 16](https://get.opensuse.org/leap/) 正式发布。

作为我们固定发行版社区 Linux 系统的重要版本更新，该版本搭载了全新的软件栈，并引入了无可比拟的维护与安全支持周期、全新的安装程序以及简化的迁移选项。

“供应商和开发者应重点关注 Leap 以及 [Leap Micro](https://get.opensuse.org/leapmicro/)，并将其视为解决方案的目标平台，” 发行经理 Lubos Kocman 表示，“用户可免费获得 24 个月的维护与安全更新，目前没有其他社区发行版能提供如此长期的免费支持。”

作为社区支持的平台，Leap 16 将在未来数年推动开源领域的开发突破与实际应用解决方案的落地。该版本支持 **[2038 年安全标准](https://en.wikipedia.org/wiki/Year_2038_problem)**，且默认禁用 32 位（ia32）支持。不过用户可手动启用该支持，进而通过仍依赖 32 位库的 [Steam](https://en.opensuse.org/Steam) 平台畅玩游戏。此外，Leap 16 的硬件要求已更新：当前最低需支持 [x86-64-v2](https://en.opensuse.org/X86-64_microarchitecture_levels) CPU 架构，这类架构的处理器通常是 2008 年及之后推出的产品。使用老旧硬件的用户可通过 [迁移工具](https://github.com/openSUSE/opensuse-migration-tool) 切换至 [Slowroll](https://en.opensuse.org/Portal:Slowroll) 或 [Tumbleweed](https://get.opensuse.org/tumbleweed) 版本。

Leap 16 以 [SUSE Linux Enterprise Server（SLES）](https://www.suse.com/products/server/) 为基础构建，整合了社区发行版与企业发行版的代码，实现了源码与二进制文件的一致性。用户可从 openSUSE Leap 16 无缝 [迁移](https://en.opensuse.org/SDB:How_to_migrate_to_SLE) 至 SLES 16；开发者则可借助 openSUSE Leap 进行工作负载的创建、测试与运行，以便后续部署到 SLES 平台。

Leap 16 预装了全新的 [Agama](https://en.opensuse.org/Agama) 安装程序，相比已废弃的基于 YaST 的安装程序，它能提供更现代化的设置体验。此外，Leap 16 还在包管理器 [Zypper](https://en.opensuse.org/Portal:Zypper) 中支持并行下载功能，可加快软件安装与更新速度。

此次重大版本更新也让迁移过程变得更简便。全新的 [openSUSE 迁移工具](https://en.opensuse.org/SDB:System_upgrade) 支持用户从 Leap 15 无缝升级至 Leap 16，同时也可迁移至 [Slowroll](https://en.opensuse.org/Portal:Slowroll)、[Tumbleweed](https://get.opensuse.org/tumbleweed) 或 [SLES](https://www.suse.com/products/server/) 版本。

Leap 16 标志着全新生命周期计划的启动。除非项目方做出战略调整，否则预计将持续推出年度次要版本，直至 2031 年发布 Leap 16.6 版本；Leap 16 的后续版本则预计于 2032 年推出。该项目旗下的不可变服务器发行版 [Leap Micro](https://get.opensuse.org/leapmicro/) 也将采用相同的更新时间表。

此次发布的版本以 [SELinux](https://github.com/SELinuxProject/selinux) 作为 Linux 安全模块（LSM）。而 [AppArmor](https://en.opensuse.org/SDB:AppArmor#Switching_from_SELinux_to_AppArmor_for_Leap_16.0_and_Tumbleweed) 仍作为可选方案，用户可在安装完成后手动选择启用。Leap 中与 AppArmor 及 32 位支持相关的变更，为用户提供了一段过渡适应期。

随着自动化、容器化、系统工具和硬件加密的成熟，在未来十年Leap 16向最终版本演进的过程中，将会有更多的进步。

鼓励希望为 Leap 16 开发的人员参加每周一的[功能评审会议](https://calendar.opensuse.org/)。

Leap 16的[已知错误](https://en.opensuse.org/openSUSE:Known_bugs_16.0)可以在项目的维基页面上找到。

在 [survey.opensuse.org](https://survey.opensuse.org/) 可上留下关于Leap 16发布的反馈。

---
原文：[Next Chapter Opens with Leap 16 Release](https://news.opensuse.org/2025/10/01/migrating-to-leap-16-with-opensuse-migration-tool/)，作者：Release Team
