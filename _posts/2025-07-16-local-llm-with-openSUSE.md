---
author: Fangzhou Liu
date: 2025-07-16 10:30:00 +0800
layout: post
license: CC-BY-SA-4.0
title: 在 openSUSE Tumbleweed 上使用 Ollama 运行本地大语言模型
image: /assets/posts/2025-07/tw.png
categories:
- 技术文章
tags:
- 翻译作品
---
> 本文为社区投稿作品翻译。

在本地计算机上运行大型语言模型（LLM）正变得越来越流行，它能提供隐私保护、离线访问和自定义功能。[Ollama](https://build.opensuse.org/package/show/openSUSE%3AFactory/ollama) 是一款出色的工具，可以简化本地下载、设置和运行 LLM 的流程。它以强大的 [llama.cpp](https://build.opensuse.org/package/show/openSUSE%3AFactory/llamacpp) 作为后端，支持在各种硬件上高效推理。本指南将介绍如何在 openSUSE Tumbleweed 上安装 Ollama，并解释 Modelfile、模型标签和量化等关键概念。

## 在 openSUSE Tumbleweed 上安装 Ollama

Ollama 提供了简单的一键安装命令。打开终端并运行以下指令：

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

该脚本将在你的系统上下载并安装 Ollama，并自动检测是否支持 GPU 以进行相应配置。

如果更倾向于使用 `zypper` ，你可以直接在仓库中安装 Ollama：

```bash
sudo zypper install ollama
```

该命令会下载 Ollama 及其所有依赖。如遇到问题，请确保系统已经更新：

```bash
sudo zypper refresh
sudo zypper update
```

安装结束后，你可以启动 Ollama 服务：

```bash
sudo systemctl start ollama
```

如需要设置开机自启：

```bash
sudo systemctl enable ollama
```

## 运行第一个大语言模型

安装好 Ollama 之后，只需要一条简单的命令就可以运行大语言模型了。让我们试下运行 `llama3` 模型：

```bash
ollama run llama3
```

首次运行该命令时，Ollama 会下载模型文件。根据你的网络情况，下载可能需要一些时间。完成后，你将进入交互界面，并可以直接与模型对话。

## 选择合适的模型

Ollama 模型库提供了丰富的选择。访问 [Ollama 官网](https://ollama.com/library) 的模型页面时，你会看到各种“标签”。理解这些标签的含义，对选择适合你需求和硬件配置的模型至关重要。

### 模型规格参数（如 `7b`、`8x7b`、`70b`）

这些标签指的是模型参数规格，单位为十亿。

- **`7b`**：70 亿参数模型。适合通用任务，运行速度较快，内存需求不高。
- **`4b`**：40 亿参数模型。体积更小速度更快，适合资源有限的设备。
- **`70b`**：700 亿参数模型。性能更强能力更全面，但需要大内存和高性能 GPU 才能达到理想速度。
- **`8x7b`**：这是“混合专家”（Mixture of Experts, MoE）模型。包含 8 个 70 亿参数的专家模型，每次请求只使用其中部分参数，比同等规模的传统模型更高效。
- **`70b_MoE`**：类似 `8x7b`，这是 700 亿参数的 MoE 模型，在某些任务上效率更高。

### 专用标签（如`tools`、`thinking`、`vision`）

部分模型针对特定任务进行了微调：

- **`tools`**：这类模型专为“工具使用”设计，大语言模型可以调用外部工具（如计算器或 API）来回答问题。
- **`thinking`**：该标签通常表示模型经过训练会“展示思考过程”或逐步推理，在处理复杂推理任务时能提供更准确的结果。
- **`vision`**：带有此标签的模型针对视觉输入任务（如图像识别或分析）进行了优化。

### 蒸馏模型（`distill`）

“蒸馏”模型是通过训练小型模型模仿大型模型输出而得到的精简版本。其目标是将大模型的知识和能力转移到更小、更高效的模型中。

## 量化技术说明

Ollama 上的大多数模型都经过“量化”处理。量化是指降低模型权重（构成模型的数值）精度的过程。这能减小模型文件体积并降低运行所需的内存和显存，但会轻微影响准确性。

常见的量化标签包括：

- **`fp16`**：16 位全精度浮点。通常是未经量化的原始版本，提供最佳质量但资源需求最高。
- **`q8` 或 `q8_0`**：8 位量化。性能与质量的理想平衡。
- **`q4`**：4 位量化。体积显著减小、速度更快，但对质量影响较明显。
- **`q4_K_M`**：进阶版 4 位量化。`K_M` 表示采用 K 均值量化方法的中等规格变体，通常比标准 `q4` 量化质量更好。
- **`q8_O`**：新版 8 位量化方法，相比旧版 8 位量化在性能和质量上都有提升。

对大多数用户来说，选择 `q4_K_M` 或 `q8_0` 版本的模型是最佳起点。

## 使用 `Modelfile` 自定义模型

Ollama 采用 `Modelfile` 概念来实现模型定制。这个文本文件可以定义基础模型、系统提示词、参数等配置。

以下是为 `llama3` 模型创建海盗角色的简单示例：

```text
FROM llama3

# Set the temperature for creativity
PARAMETER temperature 1

# Set the system message
SYSTEM """
You are a pirate. You will answer all questions in the voice of a pirate.
"""
```

创建并运行自定义模型的步骤：

1. 将上述内容保存为当前目录下的 `Modelfile` 文件
2. 执行创建命令：

    ```bash
    ollama create pirate -f ./Modelfile
    ```

3. 运行定制模型：

    ```bash
    ollama run pirate
    ```

现在你的大语言模型就会用海盗口吻回应了！虽然这是简单示例，但 `Modelfile` 能实现更复杂的定制需求。

如需了解更多信息，请查阅 Ollama 官方文档：

- [Ollama官方文档](https://github.com/ollama/ollama/tree/main/docs)：核心功能说明
- [模型导入指南](https://github.com/ollama/ollama/blob/main/docs/import.md)：其他格式模型的导入方法
- [Hugging Face集成](https://huggingface.co/docs/hub/en/ollama)：与Hugging Face平台的协作说明

祝你在 openSUSE 系统上定制模型玩得开心！

---
原文：[Running Local LLMs with Ollama on openSUSE Tumbleweed](https://news.opensuse.org/2025/07/12/local-llm-with-openSUSE/)，作者：Onuralp SEZER
