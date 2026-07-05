---
author: Alessandro de Oliveira Faria
date: 2026-04-28 06:00:00 +0200
layout: post
license: CC-BY-SA-4.0
image: /assets/posts/2026-04/logo-libzupt.jpg
title: openSUSE 生态系统中的量子安全加密技术
categories:
- 技术文章
tags:
- 翻译作品
- 官方新闻
- openSUSE
- Quantum
- ML-KEM
- NIST
- Security
---
> 本文为社区投稿作品翻译

我非常高兴地正式宣布，面向后量子时代的新加密软件包已在 openSUSE 家族（Leap 和 Tumbleweed）中发布。

[libzupt](https://software.opensuse.org/package/libzupt) 库旨在提供基于 **ML-KEM-768 + X25519** 混合方案的文件及内存中二进制数据的加密与解密功能。

libzupt 由 Alessandro de Oliveira Faria 创建，是一款现代化的 SDK，旨在简化后量子加密技术在实际应用中的使用。目前，它已初步支持 C++、Python 和 Java，Node.js 支持正在开发中。其目标是让高级加密机制的实现变得易于上手，同时不牺牲开发者的使用体验。

该项目源自 **Zupt** 计划，由 Cristian Cezar Moisés 构思。作为致敬，该库沿用了原始项目的名称。Zupt 本身是一款压缩与备份工具，已具备经过认证的 AES-256 加密和后量子密钥封装等先进功能。

libzupt 的诞生与现代加密技术的演进密切相关。ML-KEM 算法已于 [2024 年 8 月 13 日由 NIST 标准化](https://csrc.nist.gov/pubs/fips/203/final)，作为后量子场景下的安全密钥封装机制。即使在不安全的通道中，它也能安全地建立密钥，以应对未来的威胁。

以下是 libzupt 在 Python 中的简单用法示例：

```python
import zupt
encryptor = zupt.Encryptor(keypair.public_key)
message = b"Hello, Post-Quantum World! This is a secret message."
ciphertext, enc_header = encryptor.encrypt(message)
```

在 openSUSE 中原生提供此库的最大优势在于，它能让现有应用提前做好准备，以应对量子计算可能破解经典算法（如 Shor 算法）的场景。

通过将传统加密技术与抗量子计算的机制相结合，libzupt 增添了一层战略性保护。这使得开发更具韧性的系统成为可能，即使面对技术演进，也能确保数据在长期的机密性与完整性。

更多信息，请访问 [software.opensuse.org](https://software.opensuse.org/package/libzupt) 或[源代码仓库](https://github.com/cabelo/libzupt)。

---
原文：[Quantum-Resilient Cryptography in the openSUSE Ecosystem](https://news.opensuse.org/2026/04/28/libzupt-post-quantum-crypto/)，翻译：Fangzhou Liu
