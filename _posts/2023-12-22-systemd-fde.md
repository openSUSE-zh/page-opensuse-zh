---
author:  Poplar at twilight
date: 2023-12-22 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: Tumbleweed 和 MicroOS 的 Systemd-boot 与全盘加密
image:  /assets/posts/misc/systemd-logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

## Tumbleweed 和 MicroOS 的 Systemd-boot 与全盘加密

[openSUSE] [Tumbleweed] 和 [MicroOS] 现在提供一个使用 `systemd-boot` 作为引导加载程序，并基于 [systemd] 进行全盘加密的镜像。加密设备的解锁可以通过传统密码、`TPM2`（系统中已存在的加密设备），如果系统健康状况良好，将附加该设备，或 `FIDO2` 密钥（验证令牌的所有权）来完成。。

要解释的东西很多，但基本上这些变化都是为了让发行版变得更安全。一方面是使发行版的设计更加简单，另一方面是顺应当前的安全趋势，其他发行版也在向这一趋势看齐。

那么，让我们从头开始……

### systemd-boot

我们都知道并喜欢 `GRUB2`。它是一个很好的引导加载器。同时，它也是一个丰富而庞杂，开发进展缓慢的程序，

openSUSE 为 [GRUB2] 引导加载器打了 200 多个补丁。其中一些补丁已经存在了 5 年、6 年，甚至……10 年。这既表明了维护者的才华，也表明了上游贡献过程有多慢的问题。

[grub2]: https://www.gnu.org/software/grub/grub-download.html

GRUB2 支持所有相关系统，包括大型机、[arm] 和 [powerpc] 等；支持多种类型的文件系统，包括 [btrfs] 和 [NTFS] 等。它包含一个完整的网络协议栈、一个 USB 协议栈、一个可用以编写脚本的终端......从某种意义上说，它本身几乎就是一个微型操作系统。

[powerpc]: https://en.wikipedia.org/wiki/PowerPC
[NTFS]: https://en.wikipedia.org/wiki/NTFS

但随着 [UEFI] 于 18 年前发布，使得 `GRUB2` 提供的几乎所有功能都变得多余。系统固件已经将这些功能中的大部分作为服务提供，操作系统、引导加载器或任何其他用户提供的应用程序都可以使用这些服务。当然，`GRUB2` 也支持 `UEFI`。

[UEFI]: https://en.wikipedia.org/wiki/UEFI

很快，[Linux 内核][kernel]就可以通过附加到内核代码的 stub 来编译为 `EFI` 二进制文件。这意味着内核本身可以直接由固件启动，使得引导加载器在大多数情况下变得可有可无。

随着时间的推移，出现了新的、更直接的 `UEFI` 引导加载器，如 [gummiboot]。后来，这些代码被集成到 `systemd` 中，并更名为 `systemd-boot`。

[gummiboot]: https://cgit.freedesktop.org/gummiboot/

`systemd-boot` 代码非常简单，比 GRUB2 简单许多。它基本上是一个非常小的 `EFI` 二进制文件，提供一个包含不同引导加载器条目（[Boot Loader Specification] 或简称 `BLS` 中描述的文本文件）的菜单，并调用 `UEFI LoadImage` 函数将执行委托给所选的内核。

[Boot Loader Specification]: https://uapi-group.org/specifications/specs/boot_loader_specification/

该引导加载器还可以使用新的[统一内核映像][uki]（UKI）；`UKI` 是将内核、命令行和 `initrd` 整合在一起的文件。这些 `UKI` 对于基于映像的发行版来说非常方便，openSUSE 也计划支持它们。

[uki]: https://uapi-group.org/specifications/specs/unified_kernel_image/

提供 `systemd-boot` 作为 `GRUB2` 的替代方案是 openSUSE 一直想做的事。2023 年 8 月，[Factory 邮件列表]上发布了关于 Tumbleweed 支持 `systemd-boot` 的公告。

[Factory 邮件列表]: https://lists.opensuse.org/archives/list/factory@lists.opensuse.org/thread/4FNZ7HEPH6KQQ2JVFNPN7PXWHZZRU5H5/

公告引用了一个 [wiki 条目]，解释了如何手动将使用 `GRUB2` 的安装迁移到 `systemd-boot`。公告发布后不久，[yast-bootloader] 就[获得了]对新安装方案的支持。

[wiki 条目]: https://en.opensuse.org/Systemd-boot
[获得了]: https://github.com/yast/yast-bootloader/pull/686
[yast-bootloader]: https://github.com/yast/yast-bootloader

支持另一个引导加载程序是有代价的。如上所述，代码库更小，错误更少，更容易推理。但对 `UEFI` 的依赖减少了支持的架构数量（目前支持 `x86-64` 和 `aarch64`）。通过为 `GRUB2` 提供另一个补丁来支持 `BLS` 条目，可以大大缓解这个问题，这样引导加载器背后的发行版架构就可以独立于引导加载器本身。好消息是该补丁已经存在，并且有可能添加到软件包中。

另一个问题是 `systemd-boot` 不支持 `btrfs`。作为 `EFI` 二进制文件，它只能从 [FAT32] 文件系统读取文件。将[内核][kernel]和 `initrd` 移入 [EFI 系统分区] (`ESP`) 可以解决这一限制。

[FAT32]: https://en.wikipedia.org/wiki/File_Allocation_Table#FAT32
[EFI 系统分区]: https://en.wikipedia.org/wiki/EFI_system_partition

最后，还要考虑在 Tumbleweed 中支持快照，在 MicroOS 中支持 [transaction]。用户应能从引导加载器中选择从哪个快照启动，就像使用 `GRUB2` 时一样。这两个概念都是通过 `btrfs` 子卷实现的，而且只有内核、命令行、`initrd` 组合的子集对每个子卷有效。

[transaction]: https://microos.opensuse.org/blog/2018-04-20-transactionalupdates2/

例如，假设我们的系统中有两个快照，每个快照都代表一个安装了两个内核的系统。所有快照中的这两个内核可能都不相同。也许其中一次升级用更新的版本替换了一个内核。我们需要一些工具来完成关联正确组合所需的簿记工作，以便成功启动到这些快照中的任何一个，并在这些限制下创建启动项。

这个工具就是 [sdbootutil]。每次 [snapper] 创建或销毁快照时（例如，系统更新时），它都会调用这个工具，分析快照的内容，确保 `ESP` 中安装了相应的内核，存在该内核的有效 `initrd`（如果没有，则调用 [mkinitrd] 创建），并创建一个启动项，通过命令行连接内核、`initrd` 和快照。它还会处理其他细节，如检查分区的可用空间。

[sdbootutil]: https://github.com/openSUSE/sdbootutil
[mkinitrd]: https://linux.die.net/man/8/mkinitrd

通常情况下，它的处理过程是透明的，但请记住，我们可以使用以下方式强制进入干净状态：

```
sdbootutil add-all-kernels
sdbootutil remove-all-kernels
```

以防万一，你知道……

### 全盘加密

我们要宣布的另一个方面是基于 `systemd` 的[全盘加密]（`FDE`）支持。

[全盘加密]: https://en.wikipedia.org/wiki/Full_disk_encryption

`FDE` 并不是新生事物。`GRUB2` 很久以前就可以使用 `cryptomount` 命令解锁 [LUKS] 卷。传统上，这会向用户请求两次密码：一次是在启动加载程序解锁时，另一次是在 `initrd` 解锁时。有一些方法可以避免第二次请求，比如将密码注入 `initrd`，或者，如果使用 openSUSE 软件包，它会将密码透明地注入 `initrd`。

[LUKS]: https://en.wikipedia.org/wiki/Linux_Unified_Key_Setup

最近，`GRUB2` 获得了两个新功能：部分支持 `LUKS2` 加密设备（使用 [PBKDF2] 作为密钥派生函数，而不是更安全且推荐的 [Argon2id]）以及可以在 `TPM2` 等设备中存储机密的密钥保护机制。

[PBKDF2]: https://en.wikipedia.org/wiki/PBKDF2
[Argon2id]: https://en.wikipedia.org/wiki/Argon2

### TPM2

要详细解释 [TPM2] 的工作原理是另一篇文章的主题，但现在我们可以把它看作是一个加密设备，只有在满足与系统状态相关的特定条件时，才能用来解锁秘密。如果系统处于健康状态，`TPM2` 就会解锁秘密。

[TPM2]: https://en.wikipedia.org/wiki/TPM2

该术语是一个技术术语，与断言（assert）系统处于**已知**的良好状态有关。换句话说，我们确信固件没有被篡改，引导加载程序是我们安装的并且没有被替换，内核正是来自发行版的内核，内核命令行是我们所期望的，并且我们使用的 `initrd` 不包含任何我们无法控制的额外二进制文件。

TPM2 内部有一些寄存器，称为[平台配置寄存器]（`PCR`）。在 `TPM2` 规范中，共有 24 个这样的寄存器，其中每一个的大小足以存储 [SHA1] 或 [SHA256] 等哈希函数的值。这些寄存器由库分隔：每个支持的散列函数有一个库，但现在说得太详细了。

[平台配置寄存器]: https://learn.microsoft.com/en-us/windows/security/hardware-security/tpm/switch-pcr-banks-on-tpm-2-0-devices
[SHA1]: https://en.wikipedia.org/wiki/SHA-1
[SHA256]: https://en.wikipedia.org/wiki/SHA-2

这些寄存器比较特殊。我们可以重置它们，通常是将其值设置为 0。我们可以读取其值，也可以“扩展”它们。写入操作的设计方式是，我们不能在寄存器中设置任何随机值，除非是相关哈希函数将当前 `PCR` 值和用户提供的新值连接起来的结果。

只有使用完全相同的数值序列扩展该寄存器，才能产生当前的 `PCR` 值。如果我们改变其中一个值的哪怕一个比特，那么同样的 `PCR` 将产生完全不同的最终结果。

这一功能用于“[测量启动]”过程，即在执行启动链的每个阶段之前对其进行测量。这意味着，在固件的初始阶段运行之前，内存中有一个进程会计算代码的哈希值，并使用该值扩展其中一个 `PCR`。这一过程一直重复到启动序列的最末端：内核和 `initrd`。

[测量启动]: https://en.opensuse.org/Portal:MicroOS/RemoteAttestation#Measured_boot

当测量引导到位后，前 10 个 `PCR` 的最终值将包含只有在机器使用已知版本的固件、引导加载器和内核以及相关数据（如证书、配置文件或内核参数）时才能预测的值。如果其中一个元素发生变化（例如，使用了不同的安全启动证书），就会产生与我们预期不同的 `PCR` 值。

`TPM2` 芯片是非常有趣的设备，其功能远远超出了测量启动的范围。如果你想了解更多，我推荐你参考 [TPM.dev] 或 [A Practical Guide to TPM 2.0] 等资源。

[TPM.dev]: https://developers.tpm.dev/
[A Practical Guide to TPM 2.0]: https://trustedcomputinggroup.org/resource/a-practical-guide-to-tpm-2-0/

### FDE 的 TPM2

总之，这里的要点是，我们可以创建一个 "策略"，指示 `TPM2` 只有在某些 `PCR` 包含预期值的情况下才对秘密进行解密。具体细节略有不同，但现在让我们把这个模型作为一个很好的第一近似值。

我们的想法是，我们可以使用某些 `PCR` 寄存器的值来加密密码，这样，如果 `TPM2` 可以恢复密码，`GRUB2` 就可以在稍后附加 `LUKS2` 设备，从而在此之前验证系统的健康状况。如果 `TPM2` 无法解密，则意味着某些 `PCR` 的值与预期不符，启动过程中的某个阶段发生了变化。在这种情况下，`GRUB2` 会要求用户输入密码，以继续加载内核和系统的其他部分。它将新状态的信任委托给用户。

`GRUB2` 还提供了一个工具，用于根据 `PCR` 子集的当前值封存秘密。这很好，但也带来了几个问题。一个问题是，也许我们在设置系统时知道 `PCR` 的值会在下一次启动时发生变化（例如，在第一次安装、升级引导加载器或更新固件时）。在这种情况下，使用当前寄存器值密封密码是没有用的：我们需要能够预测新的寄存器值，并使用这些假设值进行密封。

另一个问题更为隐蔽，稍后会变得至关重要。预期值可能会经常变化，而且不可能是唯一的。也许有一组有效值。我们可以选择从不同的内核或快照启动。`TPM2` 提供了一种使用授权策略（authorized policies）的解决方案。授权策略是一种创建策略的方法，策略可以更改，但通过签名进行验证。从本质上讲，我们创建了一个公钥和一个私钥，并创建了多个使用私钥签名的 `PCR` 策略。现在，`TPM2` 可以使用公钥部分验证签名，并使用存储在新策略中的 `PCR` 值解密。

自 2023 年初起，openSUSE 提供了 [pcr-oracle] 工具，帮助预测 PCR 寄存器，并使用 `PCR` 策略或授权策略在这些值下加密密钥。使用该工具，我们现在可以在一组可能发生变化的 `PCR` 值下加密密钥！

[pcr-oracle]: https://github.com/okirch/pcr-oracle

在 openSUSE wiki 中，你可以找到更多关于这些主题的[文档]，包括如何在安装中使用的说明。

[文档]: https://en.opensuse.org/SDB:Encrypted_root_file_system

### 使用 systemd 进行磁盘加密

使用 `GRUB2` 时，`FDE` 可以正常工作，为什么还要寻找其他方法呢？其中一个原因非常明显：这种架构只有......嗯......只有在使用我们的 openSUSE `GRUB2` 版本时才能工作。它不适用于 `systemd-boot` 等其他引导加载器。事实上，它本身也不适用于 `GRUB2` 的上游版本。

但还有第二个原因：我们可以说 `GRUB2` 没有完全测量引导。如果引导加载器在加载内核**之前**需要解锁设备，那么评估系统健康状况的 `PCR` 策略自然就不能对将要使用的内核、命令行或 `initrd` 进行断言。这些内容将在 `LUKS2` 设备打开后加载。

`systemd-boot` 的使用为 `FDE` 提供了一个替代架构，它可以与任何遵循 `BLS` 的引导加载器正常工作（请记住，`GRUB2` 有一个支持它的补丁，所以它并没有被排除在外），并提供了在解锁设备前进行完整测量引导验证的机会。

不同之处在于，内核和 `initrd` 将被放置在未加密的 `ESP` 中，而 `sysroot` 的解锁将在 `initrd` 中使用 `systemd-cryptsetup` 提供的不同选项完成。目前，它可以使用普通密码、带授权策略的 `TPM2`（用户必须输入 PIN）或 `FIDO2` 密钥设备解锁设备。我们需要在 `/etc/crypttab` 文件中描述[解锁机制]。

[解锁机制]: https://www.freedesktop.org/software/systemd/man/latest/crypttab.html

`pcr-oracle` 已被扩展用于支持创建 `systemd` 可以理解的授权策略。这些策略存储在一个 `JSON` 文件中，该文件包含多个预测，每个预测都说明了所涉及的 `PCR`、`TPM2` 策略哈希值、公钥指纹和策略签名。这些信息与公钥 `PEM` 文件一起，构成了 `systemd-cryptsetup` 使用 `TPM2` 解封 `LUKS2` 密钥所需的全部数据。

用于签署策略的 [RSA] 2048 密钥可以用 [openssl] 或 `pcr-oracle` 创建。需要注意的是：如果私钥泄露，那么 `TPM2` 所能提供的预期安全性就完了。幸运的是，这种情况下的解决方案很简单：生成一个新密钥，用 `systemd-cryptenroll` 在 `LUKS2` 密钥槽中重新注册密钥，然后使用 `sdbootutil` 为每个启动项重新生成预测值。是的......我们将在 "[systemd-fde]"维基页面中记录所有过程，并提供更好的工具，但请相信我，这确实是个低成本的操作。

[RSA]: https://en.wikipedia.org/wiki/RSA_numbers
[systemd-fde]: https://en.opensuse.org/Systemd-fde

openSUSE 提供了一个名为 [kvm-and-xen-sdboot] 的 [MicroOS 镜像]，展示了所有这些是如何工作的。该镜像包含一些已集成的工具和其他一些新工具：

[kvm-and-xen-sdboot]: http://download.opensuse.org/tumbleweed/appliances/openSUSE-MicroOS.x86_64-kvm-and-xen-sdboot.qcow2
[MicroOS 镜像]: https://build.opensuse.org/package/show/devel:microos:images/openSUSE-MicroOS

- `systemd-boot`： 使用引导加载器代替默认 `GRUB2`
- `sdbootutil`： 同步系统引导项的辅助脚本
- `pcr-oracle`： 预测下一次启动的 `PCR` 值，并为 `systemd` 创建授权策略
- `disk-encryption-tool`： 在第一次启动时加密 `sysroot` 所在的设备
- `dracut-pcr-signature`：将预测值从 `ESP` 加载到 `initrd` 的 `dracut` 模块

这些工具旨在为这种新的 `FDE` 架构协同工作。以下是所有连接方式的简要描述。

获得新的 MicroOS `qcow2` 镜像并设置好虚拟机后，我们就可以开始启动程序了。如果虚拟机有虚拟 `TPM2` 设备，它将开始测量执行的代码和数据，并扩展相应的 `PCR`。一旦进入 `systemd-boot`，它将为该会话找到正确的启动项，并从中读取相应的内核和 `initrd`。

此时镜像尚未加密。在第一次启动时使用的 `initrd` 中，将调用 `disk-encryption-tool` 脚本。通过一些启发式方法，它将找到属于 `sysroot`（系统所在位置）的分区，并调整其大小，为 `LUKS2` 标头预留 32MB。之后，它将使用 `cryptsetup` 提供的所有神奇功能，使用本地生成的密码重新加密设备。截至今天，该密码将与最后提供给用户的恢复密钥相对应，用户应注意并妥善保管。

重新加密后，系统的 `/etc/crypttab` 将被更新，以告知该设备现已加密，以后应使用不同的工具进行管理。

在 `initrd` 结束后，我们切换到新的 `sysroot`，现在它终于位于加密设备中了。`disk-encryption-tool` 脚本已经完成了它的主要工作，但它还为 `jeos-firstboot` 安装了两个模块，这些模块将在系统首次启动时执行！

第一个模块，`enroll`，将检测是否插入了 `FIDO2` 密钥和 `TPM2`。如果有，它将弹出一个对话框，询问你想用什么来解锁系统。第二个模块会询问用户是否将 `root` 密码作为新密钥注册到 `LUKS2` 标头中，并显示之前生成的恢复密钥。

从目前来看，两种密钥都注册并不可取。正如我们前面所述，如果我们使用的是笔记本电脑或台式机，并且我们希望通过自己拥有的令牌证明来解锁加密设备，那么 `FIDO2` 密钥将更有意义。这是一个交互过程。而 `TPM2` 则更适用于我们不想与系统交互的情况，只有在我们能确定系统健康（启动链中未发生篡改）的情况下，我们才希望自动解锁设备。

如果我们注册了 `FIDO2` 密钥，`systemd-cryptenroll` 将被调用，并要求我们按两下按钮，安装过程就结束了。下一次启动时，我们需要出示密钥，如果密钥丢失，则会询问恢复密码。

如果我们注册了 `TPM2` 设备，新的 `RSA` 2048 密钥就会生成并存储在 `/etc/systemd` 中（公钥和私钥部分），`systemd-cryptenroll` 将用于注册公钥和注释用于封存 `LUKS2` 密钥的 `PCR`。默认情况下，我们将使用 0、2、4、7 和 9。具体含义可参阅[此处]。`PCR` 0 和 2 将测量所有 `UEFI` 固件代码。`PCR` 4 将测量引导加载器（`systemd-boot`）和内核（也是 `UEFI` 二进制文件）。`PCR` 7 将注册所有安全启动证书，`PCR` 9 将被内核用于测量命令行和 `initrd`。

[此处]:  https://uapi-group.org/specifications/specs/linux_tpm_pcr_registry/

这几乎涵盖了所有可能有意义的内容，但用户有权最终决定测量什么。原因是预测是在 `sdbootutil` 中完成的，记住，每次系统发生变化（更新、删除软件包、快照管理等）后，`sdbootutil` 都会自动执行，而且该工具只针对在 `LUKS2` 标头中注册的 `PCR` 进行预测。

无论选择哪种解锁机制，`/etc/crypttab` 文件都将根据这一选择进行更新，并生成一个新的 `initrd` 文件，其中包含下次启动时需要的信息。

最后，最后一个组件 `dracut-pcr-signature` 将负责在后续启动过程中，`systemd-cryptsetup` 解锁所需的所有信息都将**即时**出现在 `initrd` 中。需要注意的是，`initrd` 需要包含策略和密钥的 `JSON` 文件，但这些信息无法包含在 `initrd` 中！当我们对 `PCR` 进行预测并使用 `initrd` 的哈希值进行扩展后，我们就不能再接触 `initrd` 了，因为这会产生新的哈希值，并自动使预测失效。

该 `dracut` 模块将在任何加密设备的 `systemd-cryptsetup` 生成器启动之前执行，并在 `ESP` 分区中搜索包含当前启动的所有有效预测的 `tpm2-pcr-signature.json` 文件。一旦该文件就位，`systemd-crypsetup` 就能断言当前状态下的设备就是预期的设备，启动过程就能继续直至结束。

### 未来

如上，它提供了一个更简单的架构，并将一些组件放置在正确的位置。这将对下一阶段的工作大有帮助，因为我们还想在与 `FDE` 有关的分布式系统中做一些其他事情。

一种非常清晰的 `disk-encryption-tool` 工具在基于镜像的安装之外的使用有限。该代码的一部分应该位于 `YaST` 和 `Agama` 中。安装程序已经在创建 `LUKS2` 设备，因此以适合我们的方式扩展它应该很“容易”。

理想情况下，`jeos-firstboot` 模块也应安装在安装程序中，但不知何故，它们在这里也有意义。无论如何，这两个模块的功能不应分开，而应合并。

加密工具从一开始就在做正确的事情：主密钥和所有用户密钥都是在安装时生成的，但一个可能的改进是稍后使用 `systemd` 工具生成恢复密钥。这只是一个小细节，但将系统密钥与用户密钥分开可以简化架构。

另一个需要改进的方面是，用户可能希望同时使用 `TPM2` 和 `FIDO2` 密钥。例如，默认情况下使用 `TPM2`，如果阶段发生变化，导致预测失败（或检测到安全漏洞），用户可以将解锁委托给 `FIDO2` 密钥，而不是使用密码。

`sdbootutil` 脚本包含了许多 `systemd` 中也应具备的功能。与上游合作将使这个工具随着时间的推移而过时，这将是一个更好的消息。

我们可以帮助 `systemd` 进行的另一项改进是改进对 `TPM2` 拒绝解封 `LUKS2` 密钥原因的诊断。目前，我们只有一条普通的失败消息，却没有报告是哪个 `PCR` 或 `PCR` 内部的哪个测量组件报告了与预测值不同的哈希值。这将大大有助于了解出错的原因。是否更改了引导加载器？还是固件出了问题？

`pcr-oracle` 是预测下一个 `PCR` 值的非常好的工具。它很容易扩展，以解析日志中与整个测量启动过程相关的新事件，包括内核、`PCR` 12 上的 `systemd-boot` 扩展，或生成 `systemd` 所需的 `JSON` 文档。新的 `systemd` 255（撰写本文时已发布一周）包含一个名为 `systemd-pcrlock` 的类似工具，它可以帮助我们提供所需的改进诊断。对该工具的预测评估也将很快完成。

目前，`BLS` 中的 Type#1 和 Type#2 条目并非同构。在 `UKI` 格式的 `EFI` 文件中，有些部分在文本表示中并不存在。也许我们将来会决定使用 `UKI`，也许不会。因此，一个很好的改进就是帮助实现这种统一，，这将提供一种标准方法来分割 `JSON` 文件并将预测与每个引导加载程序条目相关联。

目前，生成和注册一个新密钥或选择一组不同的 `PCR` 都需要人工操作。我们可以扩展现有工具，以帮助完成这些过程，或者提供更好的文档。

`FDE` 的新方法并不是要将 `GRUB2` 排除在外。它提供了一个使用不同引导加载器的机会，这些引导加载器都遵循 `BLS`。验证经过适当修补的 `GRUB2` 是否可以处理所有这些问题的工作仍然有待完成。

此外，另一个需要验证和改进的问题是安装多个加密磁盘。原则上，设计和代码都支持这种情况（即使每个卷的 PCR 寄存器不同）。

最后，我们应该重新考虑 `UKI` 是否对 openSUSE 有意义。如果我们朝这个方向发展，用于签署策略的私钥将保存在 [OBS][openSUSE OBS 系统] 中，这些策略也将在构建服务中生成，并使用一组不同的 `PCR` 值。

无论如何，我们还有大量工作要做。

------

原文：[Systemd-boot and Full Disk Encryption in Tumbleweed and MicroOS](https://news.opensuse.org/2023/12/20/systemd-fde/)，作者：Alberto Planas

[openSUSE]: https://get.opensuse.org/
[Tumbleweed]: https://get.opensuse.org/tumbleweed/
[MariaDB]: https://mariadb.org/
[GTK]: https://www.gtk.org/
[gnome-software]: https://gitlab.gnome.org/GNOME/gnome-software
[gnome-shell]: https://gitlab.gnome.org/GNOME/gnome-shell
[GNOME]: https://www.gnome.org/
[gnome-maps]: https://gitlab.gnome.org/GNOME/gnome-maps
[loongarch64]: https://en.wikipedia.org/wiki/Loongson
[fwupd]: https://fwupd.org/
[sudo]: https://www.sudo.ws/
[Wacom]: https://en.wikipedia.org/wiki/Wacom
[polkit]: https://gitlab.freedesktop.org/polkit/polkit
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[hwdata]: https://github.com/vcrhonek/hwdata
[ncurses]: https://en.wikipedia.org/wiki/Ncurses
[rowhammer]: https://en.wikipedia.org/wiki/Row_hammer
[gcc]: https://gcc.gnu.org/
[gcc13]: https://gcc.gnu.org/
[sqlite3]: https://www.sqlite.org/index.html
[CLI]: https://en.wikipedia.org/wiki/Command-line_interface
[Qt 6]: https://www.qt.io/product/qt6
[qt6-base]: https://www.qt.io/
[qt6-wayland]: https://www.qt.io/
[Wayland]: https://wayland.freedesktop.org/
[ibus]: https://github.com/ibus/ibus
[libguestfs]: https://www.libguestfs.org/
[API]: https://en.wikipedia.org/wiki/API
[llvm17]: https://llvm.org/
[llvm]: https://llvm.org/
[git]: https://github.com/git
[i686]: https://en.wikipedia.org/wiki/P6_(microarchitecture)
[inkscape]: https://inkscape.org/
[evolution]: https://wiki.gnome.org/Apps/Evolution
[gtk4]: https://www.gtk.org/
[内存泄漏]: https://en.wikipedia.org/wiki/Memory_leak
[perl]: https://www.perl.org/
[CVE]: https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures
[snapper]: https://zh.opensuse.org/openSUSE:Snapper_Tutorial
[逻辑卷管理器]: https://en.wikipedia.org/wiki/Logical_volume_management
[iproute2]: https://git.kernel.org/pub/scm/network/iproute2/iproute2.git
[ethtool]: https://mirrors.edge.kernel.org/pub/software/network/ethtool/
[gpgme]: https://www.gnupg.org/related_software/gpgme/
[openSUSE 社区会议]: https://etherpad.opensuse.org/p/weeklymeeting
[Survey.opensuse.org]: https://survey.opensuse.org/
[meet.opensuse.org/bar]: https://meet.opensuse.org/bar
[LC3]: https://en.wikipedia.org/wiki/LC3_(codec)
[PipeWire]: https://pipewire.org/
[Mozilla Firefox]: https://www.mozilla.org/
[Firefox]: https://www.mozilla.org/
[usbutils]: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usbutils.git/
[icewm]: https://ice-wm.org/
[OpenCC]: https://pypi.org/project/OpenCC/
[Transmission]: https://transmissionbt.com/download
[Linux]: https://www.kernel.org/
[kernel]: https://www.kernel.org/
[kernel-source]: https://www.kernel.org/
[python]: https://www.python.org/
[Node.js]: https://nodejs.org/en/
[ALSA]: https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
[php8]: https://www.php.net/
[Opcache]: https://www.php.net/manual/en/book.opcache.php
[OpenSSL]: https://www.openssl.org/
[selinux-policy]: https://github.com/SELinuxProject
[zstd]: https://facebook.github.io/zstd/
[NVIDIA]: https://www.nvidia.com/
[libsecret]: https://wiki.gnome.org/Projects/Libsecret
[transactional-update]: https://github.com/openSUSE/transactional-update
[python-pip]: https://pypi.org/project/pip/
[xen]: https://xenproject.org/
[openvpn]: https://openvpn.net/
[SIGSEGV]: https://en.wikipedia.org/wiki/Segmentation_fault
[ImageMagick]: https://imagemagick.org/index.php
[yast2-trans]: https://software.opensuse.org/package/yast2-trans
[gnutls]: https://www.gnutls.org/
[Flatpak]: https://flatpak.org/
[harfbuzz]: https://github.com/harfbuzz/harfbuzz
[gnome-bluetooth]: https://wiki.gnome.org/Projects/GnomeBluetooth
[bluez-gnome]: http://www.bluez.org/
[webkit2gtk3]: https://webkitgtk.org/
[webgl]: https://www.khronos.org/webgl/
[段错误]: https://en.wikipedia.org/wiki/Segmentation_fault
[Bash]: https://www.gnu.org/software/bash/
[AppStream]: https://www.freedesktop.org/wiki/Distributions/AppStream/
[DNSSEC]: https://en.wikipedia.org/wiki/Domain_Name_System_Security_Extensions
[bind]: https://bind9.readthedocs.io/
[ALP]: https://susealp.io/
[openSUSE Factory]: https://en.opensuse.org/Portal:Factory
[gstreamer]: https://gstreamer.freedesktop.org/
[libcrypt]: https://www.gnupg.org/software/libgcrypt/index.html
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[nodejs21]: https://nodejs.org/en/
[nodejs]: https://nodejs.org/en/
[poppler]: https://poppler.freedesktop.org/
[服务定位协议]: https://en.wikipedia.org/wiki/Service_Location_Protocol
[社区会议]: https://etherpad.opensuse.org/p/weeklymeeting
[openSUSE 社区]: https://www.opensuse.org/
[董事会]: https://en.opensuse.org/openSUSE:Board
[openSUSE 成员]: https://en.opensuse.org/openSUSE:Members
[openSUSE 项目邮件列表]: https://lists.opensuse.org/archives/list/project@lists.opensuse.org/
[sssd]: https://sssd.io/
[xterm]: https://invisible-island.net/xterm/
[ARM]: https://www.arm.com/
[Linux Kernel]: https://www.kernel.org/
[KDE]: https://kde.org/
[KIO]: https://api.kde.org/frameworks/kio/html/index.html
[DBus]: https://www.freedesktop.org/wiki/Software/dbus/
[KConfig]: https://api.kde.org/frameworks/kconfig/html/
[ffmpeg-6]: https://www.ffmpeg.org/
[ffmpeg]: https://www.ffmpeg.org/
[pip]: https://pypi.org/%20version
[libmagic]: https://man7.org/linux/man-pages/man3/magic_list.3.html
[SMTP]: https://en.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol
[TLS]: https://en.wikipedia.org/wiki/Transport_Layer_Security
[postfix]: https://www.postfix.org/
[Ark]: https://apps.kde.org/ark/
[Kdenlive]: https://kdenlive.org/en/
[Dolphin]: https://apps.kde.org/dolphin/
[postgresql16]: https://www.postgresql.org/
[binutils]: https://www.gnu.org/software/binutils/
[gimp]: https://www.gimp.org/
[gawk]: https://www.gnu.org/software/gawk/
[openSUSE 项目的 Jitsi 实例]: https://meet.opensuse.org/
[meet.opensuse.org/meeting]: https://meet.opensuse.org/meeting
[Hack Week]: https://hackweek.opensuse.org/
[Linux 内核固件]: https://www.kernel.org/
[VLC]: https://www.videolan.org/vlc/index.html
[英特尔]: https://www.intel.com/
[intel]: https://www.intel.com/
[libgusb]: https://github.com/hughsie/libgusb
[bluez]: http://www.bluez.org/
[ABI]: https://en.wikipedia.org/wiki/Application_binary_interface
[Weblate]: https://weblate.org/
[WASI]: https://wasi.dev/
[WebAssembly]: https://webassembly.org/
[systemd]: https://freedesktop.org/wiki/Software/systemd/
[redis]: https://redis.io/
[RubyGems]: https://rubygems.org/
[wiki]: https://en.opensuse.org/
[openSUSE 项目]: https://www.opensuse.org/
[Vim]: https://www.vim.org/
[libsoup]: https://gitlab.gnome.org/GNOME/libsoup.git
[libzypp]: https://github.com/openSUSE/libzypp
[strace]: https://strace.io/
[ramdisk]: https://en.wikipedia.org/wiki/RAM_drive
[dracut]: https://dracut.wiki.kernel.org/index.php/Main_Page
[gnome-text-editor]: https://gitlab.gnome.org/GNOME/gnome-text-editor
[hxtools]: https://inai.de/projects/hxtools/
[poppler]: https://poppler.freedesktop.org/
[gpg]: https://gnupg.org/
[selinux-policy]: https://github.com/SELinuxProject
[Mozilla NSS]: https://firefox-source-docs.mozilla.org/security/nss/index.html
[KDE 集成插件]: https://community.kde.org/Plasma/Browser_Integration
[gnu-unifont-fonts]: https://unifoundry.com/unifont/index.html
[Thunar]: https://en.wikipedia.org/wiki/Thunar
[Shadow]: https://github.com/shadow-maint/shadow/
[C]: https://en.wikipedia.org/wiki/The_C_Programming_Language
[CMake]: https://cmake.org/
[hiredis]: https://github.com/redis/hiredis
[vulkan-loader]: https://github.com/KhronosGroup/Vulkan-Loader
[Vulkan]: https://www.vulkan.org/
[vulkan-tools]: https://github.com/KhronosGroup/Vulkan-Tools
[glib2]: https://wiki.gnome.org/Projects/GLib
[libstorage-ng]: https://github.com/openSUSE/libstorage-ng
[mozilla-nss]: https://wiki.mozilla.org/NSS
[xfconf]: https://docs.xfce.org/xfce/xfconf/start
[YaST]: https://yast.opensuse.org/
[YaST2]: https://yast.opensuse.org/
[Apache]: https://httpd.apache.org/
[GVfs]: https://gitlab.gnome.org/GNOME/gvfs
[kconfigwidgets]: https://api.kde.org/frameworks/kconfigwidgets/html/index.html
[Kwin]: https://invent.kde.org/plasma/kwin
[firewalld]: https://firewalld.org/
[nftables]: https://git.netfilter.org/nftables/
[IPv6]: https://en.wikipedia.org/wiki/IPv6
[ICMPv6]: https://en.wikipedia.org/wiki/ICMPv6
[gnome-control-center]: https://gitlab.gnome.org/GNOME/gnome-control-center
[gnome-terminal]: https://gitlab.gnome.org/GNOME/gnome-terminal
[AMD]: https://www.amd.com/en
[kernel-firmware]: https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
[PackageKit]: https://www.freedesktop.org/software/PackageKit/
[apache2]: https://httpd.apache.org/
[ceph]: https://ceph.io/
[BlueFS]: https://www.ibm.com/docs/en/storage-ceph/5?topic=bluestore-ceph-bluefs
[dracut]: https://dracut.wiki.kernel.org/index.php/Main_Page
[RISC-V]: https://riscv.org/
[ALSA SoC]: https://www.kernel.org/doc/html/v4.10/sound/soc/platform.html
[JACK]: https://jackaudio.org/
[yast2-storage-ng]: https://github.com/yast/yast-storage-ng
[freerdp]: https://www.freerdp.com/
[lenovo]: https://www.lenovo.com/
[X11]: https://en.wikipedia.org/wiki/X_Window_System
[Wayland]: https://wayland.freedesktop.org/
[KImageFormats]: https://api.kde.org/frameworks/kimageformats/html/index.html
[Kirigami]: https://github.com/KDE/kirigami
[avif]: https://web.dev/learn/images/avif
[xcf]: https://en.wikipedia.org/wiki/XCF_(file_format)
[libnvme]: https://github.com/linux-nvme/libnvme
[samba]: https://www.samba.org/
[kmod]: https://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
[Leap]: https://get.opensuse.org/leap/
[Slowroll]: https://en.opensuse.org/openSUSE:Slowroll
[Kalpa]: https://en.opensuse.org/Portal:Kalpa
[Aeon]: https://en.opensuse.org/Portal:Aeon
[MicroOS]: https://get.opensuse.org/microos/
[Leap Micro]: https://get.opensuse.org/leapmicro/
[品牌指南]: https://opensuse.github.io/branding-guidelines/
[CC-BY-SA 4.0]: https://creativecommons.org/licenses/by-sa/4.0/deed.zh-hans
[gnome-sudoku]: https://wiki.gnome.org/Apps/Sudoku
[mutter]: https://gitlab.gnome.org/GNOME/mutter
[gnome-photos]: https://wiki.gnome.org/Apps/Photos
[gnome-user-share]: https://gitlab.gnome.org/GNOME/gnome-user-share
[zchunk]: https://github.com/zchunk/zchunk
[Qt]: https://www.qt.io/
[TrueType]: https://en.wikipedia.org/wiki/TrueType
[freetype2]: https://freetype.org/
[OpenVMS]: https://vmssoftware.com/
[wireplumber]: https://github.com/PipeWire/wireplumber
[microos-tools]: https://github.com/openSUSE/microos-tools
[libyui]: https://github.com/libyui
[yast2-country]: https://github.com/yast/yast-country
[zypper]: https://github.com/openSUSE/zypper
[Kitinerary]: https://invent.kde.org/pim/kitinerary
[KWindowSystem]: https://api.kde.org/frameworks/kwindowsystem/html/
[AMDGPU 驱动程序]: https://en.opensuse.org/SDB:AMDGPU
[Mesa]: https://www.mesa3d.org/
[gpg2]: https://gnupg.org/
[libva]: https://github.com/intel/libva
[DRM]: https://en.wikipedia.org/wiki/Direct_Rendering_Manager
[Orca]: https://wiki.gnome.org/Projects/Orca
[NetworkManager-applet]: https://gitlab.gnome.org/GNOME/network-manager-applet
[WireGuard]: https://www.wireguard.com/
[Ruby]: https://www.ruby-lang.org/en/
[Xfce]: https://www.xfce.org/
[xfce4-clipman-plugin]: https://gitlab.xfce.org/panel-plugins/xfce4-clipman-plugin
[D-Bus]: https://en.wikipedia.org/wiki/D-Bus
[惠普]: https://developers.hp.com/
[NFS]: https://en.wikipedia.org/wiki/Network_File_System
[IPv4]: https://en.wikipedia.org/wiki/IPv4
[LibreOffice]: https://www.libreoffice.org/
[Unicode]: https://home.unicode.org/
[icewm]: https://ice-wm.org/
[libvirt]: https://libvirt.org/
[AArch64]: https://en.wikipedia.org/wiki/AArch64
[Hack Week]: https://hackweek.opensuse.org/
[SUSE]: https://www.suse.com/
[openQA]: http://open.qa/
[GraphicsMagick]: http://www.graphicsmagick.org/
[SLE]: https://www.suse.com/products/server/
[GIMP Toolkit]: https://www.gimp.org/
[nvme-cli]: https://github.com/linux-nvme/nvme-cli
[LXQt]: https://lxqt-project.org/
[xdg-utils]: https://www.freedesktop.org/wiki/Software/xdg-utils/
[yast2-python-bindings]: https://github.com/yast/yast-python-bindings
[mpg123]: https://www.mpg123.de/
[p7zip]: https://7-zip.org/
[transactional-update]: https://github.com/openSUSE/transactional-update
[yast2-bootloader]: https://github.com/yast/yast-bootloader
[x86_64]: https://en.wikipedia.org/wiki/X86-64
[yast2-installation]: https://github.com/yast/yast-installation
[QEMU]: https://www.qemu.org/
[UUID]: https://en.wikipedia.org/wiki/Universally_unique_identifier
[libHX]: https://inai.de/projects/libhx/
[libblockdev]: https://github.com/storaged-project/libblockdev
[DNS]: https://en.wikipedia.org/wiki/Domain_Name_System
[xwayland]: https://wayland.freedesktop.org/xserver.html
[SMB3]: https://en.wikipedia.org/wiki/Server_Message_Block
[lvm2]: https://en.wikipedia.org/wiki/Logical_Volume_Manager_(Linux)
[gdm]: https://wiki.gnome.org/Projects/GDM
[gedit]: https://wiki.gnome.org/Apps/Gedit
[openSUSE 调查]: https://survey.opensuse.org/
[openSUSE 产品]: https://get.opensuse.org/
[systemctl]: https://www.freedesktop.org/software/systemd/man/systemctl.html
[kiwi]: https://opensuse.github.io/kiwi/
[libwebp]: https://developers.google.com/speed/webp/
[KMail]: https://github.com/KDE/kmail
[Konsole]: https://konsole.kde.org/
[Okular]: https://okular.kde.org/
[Gwenview]: https://apps.kde.org/gwenview/
[Discover]: https://apps.kde.org/discover/
[HiDPI]: https://wiki.archlinux.org/title/HiDPI
[curl]: https://curl.se/
[sudo]: https://www.sudo.ws/
[libportal]: https://github.com/flatpak/libportal
[USB4]: https://en.wikipedia.org/wiki/USB4
[Wi-Fi 7]: https://en.wikipedia.org/wiki/IEEE_802.11be
[utmp]: https://en.wikipedia.org/wiki/Utmp
[AppArmor]: https://apparmor.net/
[SELinux]: https://github.com/SELinuxProject
[ACPI]: https://en.wikipedia.org/wiki/ACPI
[libavif]: https://github.com/AOMediaCodec/libavif
[CAB 文件]: https://en.wikipedia.org/wiki/Cabinet_(file_format)
[btrfsprogs]: https://btrfs.wiki.kernel.org/
[FIPS]: https://en.wikipedia.org/wiki/Federal_Information_Processing_Standards
[python311]: https://www.python.org/
[pypi]: https://pypi.org/
[kexec-tools]: https://github.com/horms/kexec-tools
[sssd]: https://sssd.io/
[unbound]: https://nlnetlabs.nl/projects/unbound/about/
[NAT64]: https://en.wikipedia.org/wiki/NAT64
[perl-Bootloader]: https://github.com/openSUSE/perl-bootloader
[FreeRDP]: https://www.freerdp.com/
[CMake]: https://cmake.org/
[LibreSSL]: https://www.libressl.org/
[endian systems]: https://en.wikipedia.org/wiki/Endianness
[suse-module-tools]: https://github.com/openSUSE/suse-module-tools
[cockpit-selinux]: https://cockpit-project.org/guide/latest/feature-selinux
[Cockpit]: https://cockpit-project.org/
[路线图]: https://en.opensuse.org/openSUSE:Roadmap
[get.opensuse.org]: https://get.opensuse.org/
[glibc]: https://www.gnu.org/software/libc/
[Cython]: https://pypi.org/project/Cython/
[libfprint]: https://fprint.freedesktop.org/
[sysvinit]: https://github.com/slicer69/sysvinit
[KDE Plasma]: https://kde.org/plasma-desktop/
[Baloo]: https://community.kde.org/Baloo
[less]: https://www.greenwoodsoftware.com/less/
[openSUSE OBS 系统]: https://build.opensuse.org/
[开放构建服务]: https://openbuildservice.org/
[openSUSE 服务和工具]: https://status.opensuse.org/
[联机帮助页]: https://manpages.opensuse.org/
[man]: https://gitlab.com/man-db/man-db
[ndctl]: https://github.com/pmem/ndctl
[389-ds]: https://github.com/389ds/389-ds-base
[catfish]: https://docs.xfce.org/apps/catfish/start
[xz]: https://tukaani.org/xz/
[SLES]: https://www.suse.com/products/server/
[fusion3]: https://github.com/libfuse/libfuse
[JRE]: https://en.wikipedia.org/wiki/Java_(software_platform)#Java_Runtime_Environment
[xruns]: https://unix.stackexchange.com/questions/199498/what-are-xruns
[MIDI]: https://en.wikipedia.org/wiki/MIDI
[plasma5-desktop]: https://kde.org/plasma-desktop/
[s390]: https://en.wikipedia.org/wiki/IBM_System/390
[btrfs]: https://btrfs.wiki.kernel.org/
[radeon]: https://www.amd.com/en/graphics/radeon-rx-graphics
[sdl2]: https://www.libsdl.org/
[openssl-3]: https://www.openssl.org/
[Novell]: https://en.wikipedia.org/wiki/Novell
[Fedora]: https://fedoraproject.org/
[openSUSE 的虚拟酒吧]: https://meet.opensuse.org/bar
[openSUSE-repos]: https://github.com/openSUSE/openSUSE-repos
[PPPoE]: https://en.wikipedia.org/wiki/Point-to-Point_Protocol_over_Ethernet
[hwinfo]: https://github.com/openSUSE/hwinfo
[yast2-network]: https://github.com/yast/yast-network
[hwinfo]: https://github.com/openSUSE/hwinfo
[kdump]: https://www.kernel.org/doc/html/latest/admin-guide/kdump/kdump.html
[libmount]: https://github.com/util-linux/util-linux
[flac]: https://xiph.org/flac/
[TCP]: https://en.wikipedia.org/wiki/Transmission_Control_Protocol
[UDP]: https://en.wikipedia.org/wiki/User_Datagram_Protocol
[autofs]: https://mirrors.edge.kernel.org/pub/linux/daemons/autofs/
[wifi]: https://www.wi-fi.org/
[sendmail]: https://www.linuxfromscratch.org/blfs/view/svn/server/sendmail.html
