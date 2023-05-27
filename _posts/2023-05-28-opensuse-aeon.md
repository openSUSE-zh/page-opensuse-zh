---
author: Hanjingxue Boling
date: 2023-05-28 07:30:00 +0800
layout: post
license: GNU Free Documentation License 1.2
title: 欢迎新的分支：openSUSE Aeon！
image: /assets/posts/misc/openSUSE_party.jpg
categories:
- 社区新闻
tags:
- 翻译作品
- openSUSE Aeon
- 维基文档译文
- 官方新闻
---

## TL;DR

2023 年 5 月 27 日，[Richard Brown] 宣布 [openSUSE MicroOS Desktop] 更名为 [openSUSE Aeon]。

openSUSE Aeon 仅提供带有 GNOME 桌面环境和基本配置工具的最小基础系统。所有应用程序、浏览器、编解码器等均由 [flathub] 分发的 [flatpak] 软件包提供。

<strong>请注意！</strong>openSUSE Aeon 仍处于 RC 阶段，仍然有许多事情等待迁移和处理。

- 请关注官方推特：<https://twitter.com/AeonDesktop>
- openSUSE Aeon Wiki 页面在：<https://en.opensuse.org/Portal:Aeon>
- openSUSE Aeon 已经注册了一个域名：<https://aeondesktop.org>

搭载 KDE Plasma 桌面环境的 MicroOS Desktop 将被命名为 [openSUSE Kalpa]。

[Richard Brown]: https://t.me/openSUSE_Aeon/33344
[openSUSE Aeon]: https://en.opensuse.org/Portal:Aeon
[flathub]: https://flathub.org/
[flatpak]: https://flatpak.org/
[openSUSE MicroOS Desktop]: https://en.opensuse.org/Portal:MicroOS/Desktop
[openSUSE Kalpa]: https://en.opensuse.org/Portal:Kalpa

----

## openSUSE Aeon 适合谁？

Aeon 不适合所有人。高度可定制的 Tumbleweed & Leap 桌面是稳妥的，对于那些想要修改桌面的人来说仍然是最佳选择。

对于懒惰的开发人员来说，它应该是完美的选择，他们不想再摆弄他们的桌面，只想“把事情做好”，尤其是当他们围绕容器进行开发时。

它还应该会吸引那些现在更习惯于类似于 iOS、Chromebook 或 Android 体验的受众，其中操作系统是静态的、自动化的和可靠的，而应用程序是用户关心的主要内容。

要深入了解 openSUSE Aeon 的起源和原因，请查看以下研讨会：

- [MicroOS Desktop - The Road to Daily Driving](https://www.youtube.com/watch?v=jcl_4Vh6qP4)

## 设计目标

Aeon 应该是可靠的、可预测的和不可变的，就像 openSUSE MicroOS 一样。

Aeon 的可定制性应该不如常规的 openSUSE Tumbleweed/Leap。

Aeon 应该很小，但不能以牺牲功能为代价。打印、游戏、媒体制作等功能都应该可以使用。

Aeon 应该“开箱即用”，无需额外配置即可获得软件安装和网页浏览等关键功能。默认提供的所有功能都应该可用——不可用的功能不应向用户提供/可见/可用。

## 如何下载和安装

1. 安装介质目前只能以项目的旧名称 "MicroOS Desktop" 提供。
2. 请从 <https://en.opensuse.org/Portal:MicroOS/Downloads> 下载 openSUSE MicroOS base ISO 镜像。
3. 将 ISO 写入 USB 驱动器并开始安装过程。

## 按偏好顺序安装应用程序的方法

现在你已经安装了 Aeon，你可能想安装软件。

因为 Aeon 只提供一个带有桌面环境的最小基础系统，所以它被设计成默认只带有基本的配置工具。

因此，全部的应用程序、浏览器和特定程序依赖的编解码器等软件包使用由 [flathub] 提供的 flatpak 软件包。

为了让用户更轻松地完成此过程，包含所有可用 flatpak 包的 Flathub 存储库已集成至选定的软件中心（Gnome 桌面环境的 [Software] 和 KDE Plasma 桌面环境的 [Discover]）。这样，你就可以简单地以一种无缝和集成的方式搜索和找到所有你喜欢的应用程序。

[Software]: https://apps.gnome.org/app/org.gnome.Software/
[Discover]: https://apps.kde.org/discover/
[distrobox]: https://distrobox.privatedns.org/

虽然还有其他安装软件的方法，但请务必记住，我们强烈建议按照以下优先顺序安装软件：

1. 从软件中心或 Flathub 获取的 flatpak 包；
2. 在 user [distrobox] *distrobox-enter* 中安装的 RPM 包；
3. 在 root distrobox *distrobox-enter -r* 中安装的 RPM 包；
4. 通过 `transactional-update` 获得的 RPM 包，如驱动、内核模块，严格来说是你的主机操作系统工作所需要的软件包。

**重申一下：一切都应该通过 flatpak 完成，或者如果一个包不能作为 flatpak 提供，则应安装在 Distrobox 中。请使用 `transactional-update` 获取严格来说是你的主机操作系统工作所需要的东西（如奇异的驱动程序，专门的 vpn 服务）。**

注意：Aeon 默认预装了 Distrobox。该工具允许你以普通用户权限，在终端内安装任何的 Linux 发行版。对于那些想通过 Distrobox 运行 GUI 应用程序的人来说，可以使用特殊的导出命令来实现，这样你会感觉应用程序更原生并与系统集成度更高。请查看  [Distrobox 部分]以了解有关从主机菜单启动器启动基于 Distrobox 的应用程序的便捷方式的更多信息。

[Distrobox 部分]: https://en.opensuse.org/Portal:Aeon#DistroBox

### transactional-update - 介绍

openSUSE Aeon **没有**像 openSUSE Tumbleweed 或 Leap 那样直接使用 zypper 安装 RPM 包。Aeon 在后台使用带有 zypper 的 **transactional-update**。

大多数情况下，你不需要交互使用这些命令，因为 Aeon 通过 `transactional-update.service` systemd 服务实现了系统自动更新。

### transactional-update - 示例命令

下面列出了 `transactional-update` 的命令。**注意：**请记住在命令完成后重新启动系统以查看更改！

- `sudo transactional-update pkg install package_name` 安装 rpm 包
- `sudo transactional-update pkg remove package_name` 删除 rpm 包
- `sudo transactional-update dup` 将系统升级到下一个版本
- `sudo transactional-update shell` 打开下一个快照的 shell（你可以在那里使用 zypper 命令）。**这应该只用于调试目的。**任何只能通过使用 transactional-update shell 重现的错误报告几乎肯定会作为 WONTFIX 关闭。

### transactional-update - 自动更新

默认情况下，用于处理系统的自动更新的 `transactional-update.timer` 被设置为每天更新，即更新任务将在每天的 00:00:00 执行。

如果这可能是在计算机关闭的时候，因为 timer 被设置为 `persistance=true`，那么更新将在第一时间发生。

可能无法触发更新的一些原因如下：

* 电脑关机了
* 在预定的时间，网络连接受到干扰。

要避免自动重启：

请查看故障排除部分的[意外重启]

[意外重启]: https://en.opensuse.org/Portal:Aeon#Unexpected_reboot

由于 `transactional-update` 的工作方式，这应该不会造成问题，因为新的软件包被安装在一个新的快照上，为了使其生效，你必须重启系统。

要跟踪 `transactional-update` 是否能够升级并正确运行，你可以使用 `journalctl`：

```
$ sudo journalctl -u transactional-update.service 
```

你还可以使用带有 `-f` 标志的 `journalctl` 来实时追踪日志。

### transactional-update - 关于快照和启动行为的最后一句话

默认情况下，每条 `transactional-update` 命令都会产生一个单独的、完备的，包括 `transactional-update` 命令所要求的变化的快照。

此快照**基于最后已知的良好/已启动快照。**由多个 `transactional-update` 命令产生的最后一个快照会在重启时生效。

换句话说，如果你运行 `sudo transactional-update pkg install $pkg1`，然后 `sudo transactional-update pkg install $pkg2`，然后重启，你会发现新系统安装了 `$pkg2`，而不是 `$pkg1`。

这是预期的，也是合理的默认行为——Aeon 总是希望以最小的、最不具破坏性的方式从最后一个已知的良好/已启动的快照转移到新的状态。

当你认为 Aeon 的默认/预期行为是自动更新，而大多数用户根本就不应该交互式地使用 `transactional-update` 时，这一点就特别合理。由于 `transactional-update dup` 经常在后台自动发生，Aeon 希望确保它只更新到最新的干净的系统更新状态，而不是一些奇怪的混合体，即以前未启动的、未检查的、中间的 `transactional-update dup` 从未被启动过。

然而，当忽略这一最佳实践并以交互方式使用 `transactional-update` 时，有时你可能希望针对现有的、未启动的，未知的快照运行 `transactional-update`。

这时，请使用 `transactional-update --continue`

如下：

在运行 `sudo transactional-update pkg install $pkg1` 之后，运行 `sudo transactional-update --continue pkg install $pkg2`；这将安装 `$pkg1`，然后在包含 `$pkg1` 的同一快照中安装 `$pkg2`，并将该组合快照标记为下一个启动目标。

然而，如果出现问题，也不会有额外的复杂性，因为用户需要回滚到 `$pkg1` 安装前的快照，返回到最后已知的良好状态，从而弄清楚是 `$pkg1` 还是 `$pkg2` 破坏了什么东西。

## GNOME Software + Flathub 集成

Gnome 目前处于 **RC** 阶段。

- 第一次启动时，系统将默认启用 `flatpak`，并安装一些 flatpak 包（[Mozilla Firefox]、[文本编辑器]、[Gnome 计算器]和[扩展管理器]）。
- 第一次启动脚本完成后，你可以打开 Gnome Software，从 flathub 上安装更多的软件。

[Mozilla Firefox]: https://flathub.org/apps/org.mozilla.firefox
[文本编辑器]: https://flathub.org/apps/org.gnome.TextEditor
[Gnome 计算器]: https://flathub.org/apps/org.gnome.Calculator
[扩展管理器]: https://flathub.org/apps/com.mattjakeman.ExtensionManager

## KDE Discover + Flathub 集成

KDE 目前处于 **ALPHA** 阶段。

- 第一次登录时，Discover 的 flathub 存储库将自动启用，并默认安装一些 flatpak 应用（[Mozilla Firefox] 和 [kCalc]）。文本编辑器 kate 仍然通过基本镜像中的 RPM 提供（到目前为止它还不能通过 flatpak 完全操作）。
- 注意，对于主题美化，以正常方式安装的全局主题在 KDE Plasma 中是无效的，但是你可以通过 Discover 直接安装组件。

[kCalc]: https://flathub.org/apps/org.kde.kcalc

## DistroBox

[Distrobox] 可以像 [toolbox] 一样使用（默认情况下包含在服务器版本的 MicroOS 中），但对于桌面情景还有一些其他优势。有关所有选项，请参阅 <https://github.com/89luca89/distrobox>。

[toolbox]: https://containertoolbx.org/

## 故障排除

本节描述了 openSUSE Aeon 上的已知问题和它们的解决方案。

### 设置 hostname

因为目前它还不能从 Gnome 设置中设定，请使用以下命令设置你的主机名：

```
# sudo hostnamectl set-hostname <new name>
```

重启后，主机名的改变将生效。

### 调整 transactional-update.timer

根据你的日常使用情况，即使在 persistent=true 的情况下，定时器也可能无法成功触发自动更新过程，因为它会在每次启动时使用 `RandomizedDelaySec=` 添加随机延迟。

如果你想每天自动更新你的系统，你可能会发现你需要调整所述的延迟。

编辑 `transactional-update.timer`（创建 override.conf 文件）：

```
# sudo systemctl edit transactional-update.timer
```

编辑 `[Timer]` 部分下的一行：

```
RandomizedDelaySec=5m
```

上面的例子是针对最大 5 分钟的随机延迟（默认值是 2 小时）。

更多信息可以参考[此文]。

[此文]: https://www.freedesktop.org/software/systemd/man/systemd.time.html

### 从 flathub 安装的 Steam Proton、Bottles、WINE、Lutris、Android Studio emulator 无法工作。

如果你在使用 WINE 以及 flatpak 中基于 WINE 的程序时遇到问题，这很可能是由于 SELinux 的问题，可以通过运行如下命令来检查：

```
# sudo getsebool selinuxuser_execmod
```

对于 Android Studio：

```
# sudo getsebool selinuxuser_execstack
```

如果返回结果是 "selinuxuser_execmod --> disabled" 和 "selinuxuser_execstack --> disabled"，你将需要启用它。这可以临时进行（在下次启动时重置）。

对于 WINE：

```
# sudo setsebool selinuxuser_execmod 1
```

对于 Android Studio：

```
# sudo setsebool selinuxuser_execstack 1
```

或者可以设置为持久性：

```
# sudo setsebool -P selinuxuser_execmod 1
# sudo setsebool -P selinuxuser_execstack 1
```

openSUSE 安全团队正在审查这些默认策略，你需要自己承担启用这些策略的风险。请参阅 <https://bugzilla.opensuse.org/show_bug.cgi?id=1206292> 和 <https://bugzilla.opensuse.org/show_bug.cgi?id=1206789> 了解更多信息。

## 交流场所

openSUSE Aeon 有许多可以讨论整个项目的地方：

- Telegram: <https://t.me/openSUSE_MicroOS_Desktop>
- Matrix: <https://matrix.to/#/#microos-desktop:opensuse.org>
- Discord: <https://discord.gg/opensuse> #MicroOS-Desktop 频道

所有这些渠道都是通过 [Matrix] 连接在一起的，所以你在一个渠道中发送的评论，就会在另外两个渠道中被看到。

[Matrix]: https://matrix.org/

------

原文：[Portal:Aeon - openSUSE Wiki](https://en.opensuse.org/Portal:Aeon)，作者：openSUSE community
