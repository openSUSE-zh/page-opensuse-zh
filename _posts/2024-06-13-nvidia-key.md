---
author:  Poplar at twilight
date: 2024-06-13 03:40:00 +0800
layout: post
license: CC-BY-SA-4.0
title: NVIDIA 存储库的新签名密钥
image: /assets/posts/misc/Tumbleweed-Logo.png
categories:
- 更新通告
tags:
- Tumbleweed
- 翻译作品
- 官方新闻
---

NVIDIA 显卡驱动程序的第三方存储库很快将从 1024 位 DSA GPG 密钥切换为 4096 位 RSA GPG 密钥。

为了满足当前的安全建议，这种切换是必要的。

新密钥的 GPG 指纹：

```
pub   rsa4096/0xB1D0D788DB27FD5A 2022-04-14 [SC]
      Key fingerprint = 2FB0 3195 DECD 4949 2BD1  C17A B1D0 D788 DB27 FD5A
uid                             NVIDIA Linux Driver Team <linux-bugs@nvidia.com>
```

请注意，这项更改也将对 openSUSE Leap 15.5 和 15.6 以及 [SLED] 生效。

[SLED]: https://www.suse.com/download/sled/

如果您对此有疑问，请随时联系[列表]中的 Factory 或安全邮件列表。

[列表]: https://lists.opensuse.org/

如果您想手动导入，这里是整个 GPG 密钥：

```
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v2.0.22 (GNU/Linux)

mQINBGJYmlEBEACKX1pzfrPA9WKY1gmoIGNGNOsUKETZQ4iWGCZ/jVuxXZzvXg1c
0xC/44ETenvxOor8kMpy8jJwy6IzIyNZniWWCOeNnITCark0eMY6w18eGqpgvGhL
iFo9y6ZdGOQoVqbyNritM1fQZnlCbPK11SBxkMmQ1eC+rLmD8xMslx/AS3/5Lu+2
GdA5H79p9CJoH/MpfsUH6NeojQkN/jqxG4VgHL488eMO120QSlDY53PuGqB5c/FN
yMQry8Hq+uapKLC1irZun/wfKSP2gIrIcXuS0TLjQeWKn+aX9xdZWZyVNsGUQ3aN
GnfHly14n+K9A+QjINtIt6PON7hHAd/aYNA/weR4IvDEwkU95JtNo37NpKHa0CHO
M+B31phcl9dLPfgDfLpCE04c87mpuSMTfCd8zneGWpHMFGIlW4o6dOsmoc/WwuJz
+U5BVdR483yQd4RMoq9AePtrRPPZCIG48i8oxltQgZqHL02+818hnOFyTml+ZSOr
swREOFa4OC8jYevZ+uu30xkf6/Jjt4cW/Woho62VOz1hQXGaoz8VXsWWnykb/cVr
aBhGLLIhV0WdRmhdh8R0bNC1FuyPtcvvFNA30hBc4OWVEMzJk1aPrbvmFIO6mw7m
93X1pUKYBE7ozEDQvbhItCO1+yDAdzNnrwGSvbuNTzs4Pn+qbldq1QngMQARAQAB
tDBOVklESUEgTGludXggRHJpdmVyIFRlYW0gPGxpbnV4LWJ1Z3NAbnZpZGlhLmNv
bT6JAjkEEwECACMFAmJYmlECGwMHCwkIBwMCAQYVCAIJCgsEFgIDAQIeAQIXgAAK
CRCx0NeI2yf9Wsn9D/9rbEFdcH5RfzhWx1DwaKAcmVSvRZf34w7R2DmES+y6I3lh
JIhc9A2eX+xMaZ1Zm3SQKt+RzyEwwReRYQ0FsEkfpr6tLHY7xt97e69NWH7/4yFN
aPIker/NSdyhOX/9ALmrMs82+I+t37KTCy9pHt31kIK0zCFmHT8g3Dl1gsSXhaWd
cUgpOuiMtcuUEhi6wkYHHIT7RSfHwq2apHVJKOvFI//fVVe01KOAVkdJW0kJFiNr
IBgrLHa3Y42dR9g5XnUINX4V/LUJnf66RLzC+OA/ps4gIl3UJ06dj9h8Dxgo9Md6
57+irheoIbcP+zSN6CaIGFHmmr+2I6ofP9Q9BtKZqNklfcISioWBamInYyyjyVuW
n47COZq8kgKLOS7yCmU8M+Y17W37pvjS9Q07lLxPBkbw6IlPc6MFZAynM13XCE9u
xzKrdFoT75wadAaY4Ox741u12jNYsdNbODrWmc8J4tw3z8whrWf4vSZveidboEav
OfFXxORrPHALB9Wegq9kJSYo68NYr/Dy0bvPeUKUpvJUX93YRVabQfmiTYAuSZIl
PMeQIHPQPh9QvNsZmOHSlOC9Tmncd4O1gqk4WDc2D95kIhzA8HQSSZTThM4Xe1Eh
Xks0dFlInjDFyMgAwsOaVDTWwjBfAaklUysV+CxhhEvSnuGx9h8Mi88K6g8heA==
=g062
-----END PGP PUBLIC KEY BLOCK-----
```

----

原文：[New signing key for NVIDIA repositories](https://news.opensuse.org/2024/06/12/new-NVIDIA-signing-key/)，作者：Marcus Meissner