---
author: Stefan Schubert
date: 2026-05-21 10:00:00 +0200
layout: post
license: CC-BY-SA-4.0
title: 在 openSUSE MicroOS 上使用 sysextmgrcli 管理系统扩展
image: /assets/posts/2026-05/microos.png
categories:
- 社区新闻
tags:
- 翻译作品
- 官方新闻
- MicroOS
- sysextmgrcli
---

如果你在运行 [openSUSE MicroOS](https://get.opensuse.org/microos/)，你一定对这套规则不陌生：根文件系统是只读的，事务性更新是不可违逆的法则。

但当你需要在不重启、也不动基础操作系统层的情况下添加软件或系统扩展时，该怎么办？

例如，你需要 strace 或 gdb 来调试一个正在运行的应用程序，但为此重启去安装这些工具，就会改变现场。

这时就该 **系统扩展（sysext 镜像）** 登场了，还有一款专门让它们易于管理的工具：`sysextmgrcli`。

---

## 什么是 `sysextmgrcli`？

`sysextmgrcli` 本质上是一个用于管理 `systemd-sysext` 镜像的命令行客户端，由 Thorsten Kukuk 编写。它专门针对 MicroOS 的原子化特性而设计。

有了它，不需要每次查询都需要用 `sudo`，它通过 **Varlink** 与一个后台守护进程（`sysextmgrd`）通信。这一架构允许非特权用户列出现有的系统扩展镜像，无需 root 权限；而下载和校验等繁重工作则交由守护进程通过 `systemd-pull` 完成。出于安全考虑，安装或更新 sysext 镜像仍然需要 root 权限。

## 架构：巧妙的快照设计

`sysextmgrcli` 最巧妙的一点，是它如何高效且“可回滚”地处理存储：

* **/var/lib/sysext-store**：实际的镜像文件存放于此。由于 `/var` 是一个独立的子卷，被所有 Btrfs 快照共享，镜像只需存储一份，节省磁盘空间。如果当前没有网络，这里也可以用来存放通过 USB 等设备拷入的离线镜像，甚至自行构建的 sysext 镜像。

* **/etc/extensions**：该目录包含指向 store 中镜像的**符号链接**。由于 `/etc` 是根快照的一部分，扩展便与当前系统状态绑定在一起。

**为什么这很重要？** 如果你执行了系统回滚，符号链接也会随之回滚。这确保了处于激活状态的 sysext 镜像始终与当前启动的操作系统版本相匹配。

---

## 常用命令

上手很简单。以下是你管理扩展时会用到的主要命令：

### 1. 列出并检查镜像

想看看有哪些镜像可用，或者检查镜像是否与当前操作系统版本兼容？

```
# 列出所有镜像并报告兼容性
sysextmgrcli list

# 检查更新并验证兼容性
sysextmgrcli check
```

### 2. 安装新的扩展

你可以通过指定名称和来源 URL 来安装。工具会自动处理 SHA256 校验，并检查镜像是否适配你的操作系统。

```
# --url 为可选项（默认：https://download.opensuse.org/tumbleweed/appliances/ ）
sysextmgrcli install [NAME] --url [https://your-image-repo.com](https://your-image-repo.com)
```

### 3. 维护与更新

更新通过将本地文件与远程清单（manifest）进行比较来处理。如果有更新的版本与当前快照匹配，就会被拉取并建立符号链接。

```
# 将现有镜像更新到最新的兼容版本
sysextmgrcli update

# 清理：删除 store 中不再被任何快照引用的镜像
sysextmgrcli cleanup
```

## 关于“激活”的注意事项

需要注意的是，sysextmgrcli 是管理器，而非激活器。它负责的是后勤工作：下载、版本检查和建立符号链接。要真正把扩展“接入”正在运行的系统，仍需使用标准的 systemd-sysext 命令：

* 手动激活：`systemd-sysext merge`

* 手动停用：`systemd-sysext unmerge`

* 开机启用：`systemctl enable systemd-sysext.service`

## 可用的默认系统扩展（sysext）镜像

* debug（babeltrace、gdb、ltrace、strace、traceroute）
* gcc（cpp、gcc、make、patch）
* git（git、git-core）

## 总结

### 你需要在 **openSUSE MicroOS** 上使用 `git` 吗？

只需执行 `sysextmgrcli install git ; systemd-sysext merge`，即可使用……

### 系统上不再需要 `git` 了吗？

只需执行 `systemd-sysext unmerge`，它就不存在了……

sysextmgrcli 搭起了静态不可变基础设施与灵活的系统扩展需求之间的桥梁。借助 MicroOS 的 Btrfs 目录结构，它确保系统保持整洁、版本同步且易于管理。

---
原文：[Managing System Extensions with sysextmgrcli](https://news.opensuse.org/2026/05/21/sysextmgr/)，翻译：Fangzhou Liu
