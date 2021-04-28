---
author: Nianqing Yao & Dongri
date: 2021-04-27 00:24:00 +0800
layout: post
license: CC-BY-SA-3.0
title: TW 推出 UsrMerge 测试，以及其他
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 社区新闻
tags:
- 新闻合集
- Tumbleweed
- Leap
- 原创作品
- V2Ray
- Firefox
- UsrMerge
---

## 新闻简报

### Tumbleweed

* 新快照 20210426 发行。

> <https://review.tumbleweed.boombatower.com/2021/04/26/release.html>

* Kernel 构建失败导致 `kernel-*` 子版本号不统一，此问题已在 20210426 快照中修复。

> <https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/DKWLMVHPAFGFULOIAXKS3NUEOGKBIZAL/>

* UsrMerge 所需改动已进入 Factory 源并通过 openQA，预计正式推送可能与 GCC 11 大型重构建同时进行。

> <https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MRSYKFUGFSBZDCZDP73O35T5HLVWCOEQ/> 

* 部分用户报告火狐88.0 无法使用。

> <https://bugzilla.opensuse.org/show_bug.cgi?id=1185267>

### Leap

* Leap 15.3 & SLE 15 SP3 代码冻结，在正式发布前只接受重要 bug 修复。

> <https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MYWUFPVXVAEMN4JYJGPUD4ZNDAZJ3PVC>

* Leap 15.3 Alpha YAST 内置更新源地址暂时错误，将在未来出现更新时自动修复。

> <https://bugzilla.opensuse.org/show_bug.cgi?id=1184243#c3>


## 社区新闻


### Tumbleweed 推出 UsrMerge 测试

来自 SUSE LLC 的 openSUSE 社区成员 Ludwig Nussel 于四月27日在[邮件列表](https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/MRSYKFUGFSBZDCZDP73O35T5HLVWCOEQ/)中宣布：

> 包含兼容符号链接或需要其他调整的所有软件包已签入openSUSE Factory 下的 UsrMerge 源。阶段测试通过了openQA。

UsrMerge 是一项特性，简单说来是将 `/` 与 `/usr` 目录下相同作用的文件夹统一为到 `/usr` 文件夹下的链接。根据来自 Systemd 方面的[消息](https://www.freedesktop.org/wiki/Software/systemd/TheCaseForTheUsrMerge/)：

> UsrMerge 使在主机和网络客户端之间以及在主机和本地轻量级容器之间共享供应商提供的OS资源变得更加容易和灵活。对操作系统进行快照成为可行的选择。 UsrMerge 还允许将所有供应商提供的OS资源设为只读，以提高安全性和鲁棒性。

相关的用户测试仍在进行，据悉这些更新将于即将到来的 GCC 11 一同正式推送给用户。同时我们 openSUSE 中文社区也会编写文章，以便让用户更好的了解情况。

### 开发者 gcc 在 Qv2ray 代码中恶意剔除 Xray 的支持

四月27日，据来自 Project X 的[消息](https://t.me/projectXtls/33)称：

Qv2ray 开发者之一 gcc 单方面删除了 Qv2ray 中对 Xray 的支持代码，并添加了“检测到 Xray 就自爆”的恶意代码。

Xray 的开发者如此表示：

> 我对 Qv2ray 是问心无愧的，也从来没有主动诋毁过 Qv 或者 gcc，即使此前 gcc 已多次发表对我或 Xray 不友好的言论，且多次承认对我以及 Xray 抱有奇怪的偏见，这些大家都看在眼里。

在 DuckSoft 与 gcc 多次协商无果后，DuckSoft 将 gcc 移出 Qv2ray 组织，并清理掉了有问题的代码。目前 Xray 依然在 Qv2ray 内可用。

同时 DuckSoft [声明](https://t.me/opensuse_cn_offtopic/117068)：

> 没事，锅我来扛就好了

无论如何，谢谢你，我们的鸭鸭！（希望人没事

------

openSUSE 社区论坛讨论串：[{{ page.title }}](https://forum.suse.org.cn/t/topic/13815)






