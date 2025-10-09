---
author: Fangzhou Liu
date: 2025-10-11 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 使用 opensuse-migration-tool 迁移至 openSUSE Leap 16.0
image: /assets/posts/2025-10/opensuse-migration-tool.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
- Leap
---

多年来，我发现系统升级过程中最大的挑战常与**第三方软件源**相关，这主要因为这些软件源要么无法适配新版本系统或更新存在延迟。

另一个挑战在于发行版软件源的**频繁变更**。例如，在 Leap 15.3 版本中，作为 “缩小 Leap 差距”计划的一部分，我们移除了 ports 软件源，同时还引入了 SLE 更新软件源。

如今，在 Leap 16.0 版本中，**更新软件源（update repositories）已被完全移除**。Leap Micro 6.X 版本也不再提供专门的更新软件源。

过去，用户不得不手动修改发行版软件源。幸运的是，[openSUSE-repos](https://github.com/openSUSE/openSUSE-repos) 工具实现了这一流程的自动化，并将发行版软件源纳入 RPM 包管理体系中。目前，这一机制已成为 Leap Micro 6 和 Leap 16 两个版本的默认行为，极大简化了整个系统升级与发行版迁移流程。

## 为何使用 `opensuse-migration-tool`

系统升级未必是一件令人却步或复杂的事。`opensuse-migration-tool` 这款工具的设计目标，就是让升级过**程简单、安全且可预测**。我的设计灵感来源于我们的 [jeos-firstboot](https://github.com/openSUSE/jeos-firstbootV) —— 它通过对话框实现流畅的交互体验。此外，借助自定义的 dialogrc 配置文件，该工具会以一个**美观的绿色对话框**欢迎用户，从一开始就赋予其熟悉的 openSUSE 风格与质感。


### 该工具能为你提供以下功能：
1. 自动安装更新后的发行版软件源定义
2. 禁用非发行版软件源，以避免版本冲突
3. 运行 `zypper dup` 命令，实现平稳、安全的升级
4. 提供升级后脚本：可帮助你适配新版本的默认设置，也支持保留个人偏好配置（例如在 AppArmor 与 SELinux 两种安全模块间选择保留原有选项）
5. 执行迁移前检查，确保系统满足升级条件，包括验证是否支持 `x86_64-v2`
6. 自动重启系统
7. 可选功能：通过 snapper 工具回滚系统，或直接从 GRUB 引导菜单启动至旧系统快照

适用场景不仅限于同系列升级
该工具并非只能用于 Leap n 版本到 Leap n+1 版本的升级，还支持升级到其他 openSUSE 相关发行版，包括 SUSE Linux Enterprise，Slowroll，Tumbleweed。

此外，Slowroll 到 Tumbleweed 的升级也可支持；近期还新增了对 Leap Micro 到 Slowroll Micro 版本的升级需求适配。只要是“系统升级”场景，该工具都能正常工作。

想查看实际操作效果？可观看 [LowTechLinux 在 YouTube 上发布的 opensuse-migration-tool 评测视频](https://www.youtube.com/watch?v=N-pKs8KJW48)，其中包含实操演示与第三方验证，帮助你直观了解工具的使用流程。

## 开始使用

若你的系统尚未安装该工具，请执行：`sudo zypper in opensuse-migration-tool`

若你是首次使用该工具，或仅想体验其功能，可在测试模式下运行：
`/usr/sbin/opensuse-migration-tool --dry-run`  # 测试模式无需使用 sudo

此模式不会显示具体将升级的内容，但能让你大致了解该工具的功能，且不会对系统做出任何更改。

当你确认无误后，运行：
`sudo opensuse-migration-tool`

该工具会提示禁用非发行版软件源，强烈建议你执行此操作。随后，工具将触发 `zypper dup --r` 命令，若出现任何问题，会自动重新运行 `zypper`。

该工具还会执行迁移前的系统检查。若你遇到任何问题，可直接从 [git](https://github.com/openSUSE/opensuse-migration-tool) 获取并运行最新版本。欢迎大家贡献代码。

```
git clone https://github.com/openSUSE/opensuse-migration-tool.git
cd opensuse-migration-tool
./opensuse-migration-tool --dry-run
```

## 更多文档
更多信息可在 [openSUSE 系统升级](https://en.opensuse.org/SDB:System_upgrade) 页面查看。该文档还介绍了如何手动升级至 16.0 版本，但我不建议这样做，尤其是考虑到我们已收到关于该工具的积极反馈。

升级前请务必阅读 [Leap 16.0 发行说明](https://doc.opensuse.org) 以及 [已知漏洞 Wiki](https://en.opensuse.org/openSUSE:Known_bugs_16.0)。

## 未来计划
我计划提供一个可选的 GTK4 界面，该界面将保留通用的迁移逻辑和 Bash 的强大功能。它将使用自定义 GTK4 对话框以保持 openSUSE 的外观和质感，调用方式将与 zenity 类似。以下是前两个对话框的预览：

!["gtk4 工具截图"](/assets/posts/2025-10/opensuse-migration-tool-gtk4.png)

今日（2025年10月1日）协调世界时（UTC）12:00（北京时间 20:00），openSUSE Leap 16 正式发布后，关于 Leap 16 版本的调查问卷将在survey.opensuse.org上线，届时用户可在该平台提交反馈意见。

---
原文：[Migrating to openSUSE Leap 16.0 with opensuse-migration-tool](https://news.opensuse.org/2025/10/01/migrating-to-leap-16-with-opensuse-migration-tool/)，作者：Lubos Kocman
