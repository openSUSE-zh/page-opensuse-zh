---
author: Hanjingxue Boling
date: 2022-07-14 07:30:00 +0800
layout: post
license: CC-BY-SA-3.0
title: openSUSE 为 Nim 语言提供一流的支持
image: /assets/posts/2022-07/logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
- Nim
---

[openSUSE](https://get.opensuse.org/) 与其他开源项目 [Arch Linux](https://archlinux.org/) 一起为 [Nim 语言](https://nim-lang.org/)提供最新的软件包，openSUSE 现在拥有一流的静态类型的命令式编程语言（Nim）支持

Nim 语言为程序员提供了运行时效率（`runtime efficiency`），并结合了 [Python](https://www.python.org/)、[Ada](https://www.adaic.org/) 和 [Modula](http://www.modula3.org/) 等成熟语言的成功概念。


“这是真正的不依赖操作系统也可运行的软件，但如果您需要操作系统，请选择像 SUSE 一样提供一流 Nim 支持的系统。”当被问及 openSUSE 从现在开始支持最新的 Nim 时，Nim 编程语言创建者 Andreas Rumpf 说道。

Rumpf 早在 2005 年就创造了 Nim，最近出版的由他编写的 [Mastering Nim](https://nim-lang.org/blog/2022/06/29/mastering-nim.html) 一书涵盖了这种新兴编程语言的各个方面。

现已有使用 openSUSE 为 [x86-64](https://en.wikipedia.org/wiki/X86-64)、[i586](https://en.wikipedia.org/wiki/Pentium_(original))、[ppc64le](https://en.wikipedia.org/wiki/Ppc64) 和 [ARM64](https://en.wikipedia.org/wiki/AArch64) 架构编译构建的 Nim 包。

“我们很高兴拥有第一个宣布对 Nim 提供一流支持的 Linux 发行版，”Nim 核心开发人员和 [Nim in Action](https://book.picheta.me/) 一书的作者 [Dominik Picheta](https://picheta.me/) 说。“希望这为其他发行版提供良好支持提供先例。”

除了宏系统和运行时效率之外，Nim 的优势之一是它与其他语言类似，涵盖了大多数标准功能的标准库；这些标准库包括字符串处理和格式化、异步代码开发、网络甚至高级语言功能（如编译器本身），以及 NimScript，它是 Nim 的一个子集，专门为脚本构建，可以在运行时嵌入和执行。

此外，Nim 附带了许多默认包含的工具。编译器允许以 C、C++ 和 Javascript 作为其后端。有一些工具可用于轻松开发：

- nim 编译器
- [nimsuggest](https://github.com/nim-lang/nimsuggest)（支持语言建议、自动完成、错误/问题检测等）
- nimgrep（一个强大的，内置 Nim 支持的 grep 替代方案，用以查找符号和检查 Nim 代码库）。
- nim-gdb 包装器（对 Nim 类型的 gdb 支持）
- [nimble](https://github.com/nim-lang/nimble#readme)（包管理器）

openSUSE 构建有自动化测试。openSUSE 的 Nim 的普遍可用性包括将特定架构的损坏测试与安全补丁的向后移植和同步至上游。

Nim 有一个非常有趣且充满活力的软件包生态系统，可以在许多方面轻松开发；从 Web 开发到系统编程，从科学到数据处理等方面，这里仅举几例。你可以使用 [Weave](https://github.com/mratsim/weave) 开发极其快速和并行化的应用程序，使用 [Karax](https://github.com/karaxnim/karax) 或 [Jester](https://github.com/dom96/jester) 完全在 Nim 中开发前端和后端 Web 应用程序，并使用 [ArrayMancer](https://github.com/mratsim/Arraymancer) 执行大量基于计算的数学运算。在游戏的方面，Nim 可用于通过使用 [Godot-Nim](https://github.com/pragmagic/godot-nim) 作为桥梁来开发高性能 3D 可视化和使用 [Godot](https://godotengine.org/) 进行游戏开发。

即使开发人员只想支持另一种语言，Nim 也允许丰富的[外部函数接口](https://en.wikipedia.org/wiki/Foreign_function_interface) (FFI) 技术生态系统与其他语言进行交互。除了与 [C++ 代码库](https://nim-lang.org/docs/manual.html#implementation-specific-pragmas-importcpp-pragma)和[ C 交互的原生支持](https://nim-lang.org/docs/manual.html#foreign-function-interface-importc-pragma)外，还可以使用 Nim 通过 [NimPy](https://github.com/yglukhov/nimpy) 轻松构建 Python 模块。

开发人员可以在 https://play.nim-lang.org/ 上试用 Nim，并且可以在[五分钟内了解它](https://learnxinyminutes.com/docs/nim/)。

Nim 的一个示例：

```
import strformat

type
  Person = object
    name*: string # Field is exported using `*`.
    age: Natural  # Natural type ensures the age is positive.

var people = [
  Person(name: "John", age: 45),
  Person(name: "Kate", age: 30)
]

for person in people:
  # Type-safe string interpolation.
  echo(fmt"{person.name} is {person.age} years old")
```

有用的信息链接：

- [开发仓库](https://github.com/nim-lang/Nim)
- [编译期用户指南](https://nim-lang.org/docs/nimc.html)
- [文档](https://nim-lang.org/documentation.html)
- [手册](https://nim-lang.org/docs/manual.html)

------

原文：[openSUSE Reaches First-Class Support for Nim Language](https://news.opensuse.org/2022/07/14/os-reaches-first-class-support-for-nim/)，作者：David Anes and Douglas DeMaio