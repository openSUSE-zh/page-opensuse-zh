---
author: Fangzhou Liu
date: 2025-05-31 08:00:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 为什么选择 openSUSE 玩游戏是个好主意
image: /assets/posts/2025-05/gaming.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
- Windows
- End of 10
- 告别 Win 10
- 游戏
---

想象一下：你在2016年组装了一台游戏电脑，至今仍能轻松应对 1080p 游戏大作，运行温度不高，摆在桌面上也十分美观。但如今，Windows 10 的生命周期即将结束，而升级意味着更高的硬件要求和不菲的成本。或许要换新的主板、新的 CPU，大概要上千的 💰 就为了继续玩你原本就能运行的游戏。

与其屈服于厂家[强制淘汰](https://zh.wikipedia.org/wiki/%E8%A8%88%E7%95%AB%E6%80%A7%E5%A0%B1%E5%BB%A2)的做法，不如安装某一版本的 [openSUSE](https://get.opensuse.org/zh_CN/)。

游戏依旧能玩，对局照样能赢。只是这次，是在 Linux 上。

游戏玩家对 Linux 这个名字并不陌生，其使用率也在悄然转变。Google Trends 数据显示，当前“Windows 平台游戏”的搜索热度与大约五年前（即新冠疫情期间更多人在业余时间参与数字活动时）的趋势相似。而同期“Linux 平台游戏”的搜索量却增长到之前的三倍。

截图：

![兴趣增长趋势](/assets/posts/2025-05/trend.png)

在 Linux 系统上玩游戏，不再意味着必须放弃你的 [Steam](https://store.steampowered.com/) 游戏库，或是为了启动一款游戏而长时间捣鼓配置。得益于 [Proton](https://github.com/ValveSoftware/Proton) 兼容层的支持，Steam 平台上 Top 100 的游戏中已有超过 70% 可以直接在 Linux 系统上运行，其中就包括《赛博朋克 2077》、《荒野大镖客 2》、《艾尔登法环》等热门作品。

像 openSUSE 这样的 Linux 发行版并不只是凑热闹。这些发行版正在以可靠的性能和持续的改进推动 Linux 平台游戏领域的发展。

## 为什么游戏玩家选择 openSUSE
1. 滚动更新版还是稳定版？任你选。想要发布后就能尽快体验到最新的 [Mesa](https://mesa3d.org/) 驱动和 [Linux 内核](https://www.kernel.org/)？请使用 [Tumbleweed](https://get.opensuse.org/zh_CN/tumbleweed/)；这是 openSUSE 的滚动发布版本。更喜欢静态版本？[Leap](https://get.opensuse.org/zh_CN/leap/15.6/) 专为可靠性和长期稳定运行而设计，不会突然有意外的变化。
2. 出色的硬件支持。[AMD](https://www.amd.com/zh-cn.html) 和 [Intel](https://www.intel.cn/content/www/cn/zh/homepage.html) 硬件均可开箱即用。[NVIDIA](https://www.nvidia.cn/) 驱动程度只需要一条命令即可安装。该发行版紧要上游 Linux 图形技术开发要点，专为游戏场景优化。
3. 为高级用户打造。你无需一定是技术专家，但如果你是，Btrfs 文件系统快照和 [zypper](https://zh.opensuse.org/SDB:Zypper_%E7%94%A8%E6%B3%95) 包管理器将赋予你强大的控制权。这不是简化版的 Linux，而是一台为性能和可定制性精心调校的完整系统。

## 数分钟内完成设置
游戏玩家无需花费数小时配制他们的操作系统。openSUSE 提供了简明的 [Wiki 指南](https://zh.opensuse.org/%E9%A6%96%E9%A1%B5)和一行命令让这件事变得很简单：

`sudo zypper install steam lutris mangohud gamemode`

打开 Steam 里的 Proton 兼容层，在 Lutris 上关联你的 Epic 账号，配制结束。

下面是一些能直接开玩的热门游戏：

Linux 原生支持的：

**Counter-Strike 2 （CS 2）**

**Dota 2**

**No Man's Sky 无人深空**

**Valheim: 英灵神殿**

**Terraria （泰拉瑞亚）**

通过 Proton 兼容层运行的游戏：

**赛博朋克 2077**

**Baldur's Gate 3 （博德之门 3）**

**巫师 3：狂猎**

**霍格沃茨之遗**

**Starfield**

升级到 Windows 11 可能会带来超出人们承受范围的成本，甚至导致仍在[正常工作的硬件被弃用](https://news.opensuse.org/2025/04/14/replace-windows-not-your-device/)，从而产生不必要的电子垃圾。这一问题已引起全球范围内 [End of 10](https://endof10.org/zh-cn/) 的倡议。

Linux，尤其是 openSUSE，为用户提供了一条出路。游戏不能因系统支持终止而结束。

无论你是休闲玩家还是硬核发烧友，你的硬件仍有多年使用寿命。openSUSE 和其他 Linux 发行版可以帮助你继续发挥这些设备的价值。

立即加入迁移的行列中来。访问 [endof10.org](https://endof10.org/zh-cn/) 参与社区活动，获取迁移到 Linux 的指导，或前往 [get.opensuse.org](https://get.opensuse.org/zh_CN/) 下载最适合您的 openSUSE 版本。你也还可以考虑 [Aeon](https://aeondesktop.github.io/) 和 [Kalpa](https://kalpadesktop.org/) 作为备选。

<small>这是 [告别 Win 10（End of 10）](https://news.opensuse.org/category/upgrade-to-freedom) 系列内容的一部分，在此我们倡导使用免费及开源软件（Free & Open Source Software, FOSS）作为解决方案，帮助那些希望继续使用现有设备而非更换硬件的 Windows 10 用户，避免造成仍在正常运行设备的电子垃圾问题。</small>

---

原文：[Why Gaming with openSUSE Is A Good Move](https://news.opensuse.org/2025/05/16/why-gaming-w-opensuse-is-a-good-move/)，作者：Douglas DeMaio