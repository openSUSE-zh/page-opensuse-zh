---
author: Hanjingxue Boling 
date: 2021-11-24 18:40:00 +0800
layout: post
license: CC-BY-SA-3.0
title: MicroOS 使用 Keylime 扩展安全性
image: /assets/posts/2021-11/2021-11-24 MicroOS 使用 Keylime 扩展安全性.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- MicroOS
---

最近，[MicroOS](https://microos.opensuse.org/) 获得了一些与安全相关的新选项。 该发行版现已集成 [Keylime](https://keylime.dev/)，这是一个用于使用 TPM 进行远程验证的开源项目。

如果您关注有关 Windows 11 的新闻，您就会知道什么是 TPM。 可信平台模块 ( TPM ) 是一种密码处理器，由可信计算组织 ( TCG ) 在 ISO/IEC 文档中标准化的规范中进行了描述。 您可以找到已焊接在计算机主板中的 TPM 芯片，但也可以在固件或 CPU 中找到作为服务的它们。

该协同处理器可用于许多与安全相关的任务。 例如，我们可以用它来生成对称和非对称密钥，加密一些内存块（不要太大，因为它们有点慢），或者作为只能供我们使用的密钥（或具有权限的应用程序）的存储 ）。

因为出厂的TPM有一个独特的密钥（称为认可密钥或EK），它也可以用来生成其他的密钥，以后可以用来检查某些信息是否来自这个特定的机器。当我们想验证某些通信的来源时，这是非常方便的事情（例如，在登录到 VPN 时）。

TPM的另一个主要用途是健康证明（`health attestation`）：我们想知道系统是否处于良好状态，即自从我们打开系统后，它所运行的软件没有任何变化。

这意味着我们需要测量从固件的初始阶段开始在系统中运行的所有软件，直到加载 Linux 内核和 `initrd`。 稍后我们将这些测量值与我们已知的良好值进行比较，如果它们匹配，我们就会知道我们的系统没有进行任何更改。

我们可以使用 TPM 做到这一点。 引导链中的每个阶段都需要在将执行委托给它之前加载下一个阶段。 在此之前，我们需要计算它的哈希函数（例如 SHA256），并将其报告回 TPM 以跟踪测量结果。

引导结束后，我们可以向 TPM 询问这些哈希值，并将它们与预期值进行比较。 如果它们符合我们的预期，则可以安全地假设自初始启动阶段以来使用的软件没有进行任何更改，并且系统处于良好状态。

出于安全原因，我们希望在远程机器中将预期测量值与当前测量值进行比较。 这台机器可以询问当前的测量值，并要求该报告必须由 TPM 签名。 我们可以稍后验证签名并将哈希值与预期值进行比较。

Keylime 是一种工具，可以以更丰富、更安全的方式为我们做到这一点。 我们可以在我们网络的所有机器上安装一个代理服务，它将收集所有的测量值和签名，并将其报告给将进行验证的验证者服务。

MicroOS 现在有两个新的系统角色将安装 Keylime 客户端（`agent`）到我们的系统，我们可以选择一个节点来安装验证者（`verifier`）服务角色。

如果你喜欢这个想法，可以在 [MicroOS 博客](https://microos.opensuse.org/blog/2021-11-08-MicroOS-Keylime-TPM/)和 [MicroOS 门户](https://en.opensuse.org/Portal:MicroOS/RemoteAttestation)中找到更多信息。 在那里，你将找到有关 TPM 如何真正工作以及如何将 Keylime 与测量引导和 IMA 一起使用的技术细节，所有这些都使用 TPM 作为信任根。

------

原文：[MicroOS Expands Security With Keylime](https://news.opensuse.org/2021/11/24/keylime-microos/)，作者：Alberto Planas
