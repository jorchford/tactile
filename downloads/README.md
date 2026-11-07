# Tactile (秒触) 官方预编译独立安装包下载

欢迎访问 Tactile 官方预编译独立安装包分发目录。本项目针对不同架构提供经过严格构建与 Apple Developer ID 签名认证的独立应用压缩包（解压即用）。

> 🚀 **当前最新正式版本**: **`v0.21`** (Build 3)  
> 🏷️ **GitHub Release 页面**: [Tactile v0.21 Releases (海外)](https://github.com/jorchford/tactile/releases/tag/v0.21)  
> 🇨🇳 **Gitee 码云发行标签页**: [Tactile v0.21 Gitee Tags (国内)](https://gitee.com/jorchford/tactile/tree/v0.21)  
> 🍺 **Homebrew Cask 一键安装**: `brew install --cask jorchford/tactile/tactile`

---

## 📥 最新稳定版下载列表 (Latest Releases)

### 1. 通用双架构与版本专属下载

| 文件名称 | 架构说明 | 适用机型 | 直接下载 (GitHub) | Gitee 国内极速下载 |
| :--- | :--- | :--- | :--- | :--- |
| **`Tactile-Universal.zip`** | **Universal 2 通用架构 (强烈推荐)** | 所有 Intel 与 Apple Silicon (M1~M4) 设备 | [点击下载](https://raw.githubusercontent.com/jorchford/tactile/master/downloads/Tactile-Universal.zip) | [⚡ 极速下载](https://gitee.com/jorchford/tactile/raw/master/downloads/Tactile-Universal.zip) |
| **`Tactile-AppleSilicon.zip`** | **Apple Silicon 原生独立版** | 搭载 M1/M2/M3/M4 系列芯片的 Mac | [点击下载](https://raw.githubusercontent.com/jorchford/tactile/master/downloads/Tactile-AppleSilicon.zip) | [⚡ 极速下载](https://gitee.com/jorchford/tactile/raw/master/downloads/Tactile-AppleSilicon.zip) |
| **`Tactile-Intel.zip`** | **Intel x86_64 原生独立版** | 2015~2020 年搭载 Intel 处理器的 Mac | [点击下载](https://raw.githubusercontent.com/jorchford/tactile/master/downloads/Tactile-Intel.zip) | [⚡ 极速下载](https://gitee.com/jorchford/tactile/raw/master/downloads/Tactile-Intel.zip) |
| **`Tactile.app.zip`** | 通用旧版下载兼容镜像 | 全平台兼容 | [点击下载](https://raw.githubusercontent.com/jorchford/tactile/master/downloads/Tactile.app.zip) | [⚡ 极速下载](https://gitee.com/jorchford/tactile/raw/master/downloads/Tactile.app.zip) |

---

## 🏷️ v0.21 独立版本归档包 (Release v0.21 Archive)

| 文件名 | 适用平台 | 版本号 | GitHub Release 下载 | Gitee 国内极速下载 |
| :--- | :--- | :--- | :--- | :--- |
| **`Tactile-v0.21-Universal.zip`** | Universal 2 (Intel + Apple Silicon) | v0.21 (Build 3) | [GitHub 下载](https://github.com/jorchford/tactile/releases/download/v0.21/Tactile-Universal.zip) | [⚡ Gitee 下载](https://gitee.com/jorchford/tactile/raw/master/downloads/Tactile-v0.21-Universal.zip) |
| **`Tactile-v0.21-AppleSilicon.zip`** | Apple Silicon (arm64) | v0.21 (Build 3) | [GitHub 下载](https://github.com/jorchford/tactile/releases/download/v0.21/Tactile-AppleSilicon.zip) | [⚡ Gitee 下载](https://gitee.com/jorchford/tactile/raw/master/downloads/Tactile-v0.21-AppleSilicon.zip) |
| **`Tactile-v0.21-Intel.zip`** | Intel (x86_64) | v0.21 (Build 3) | [GitHub 下载](https://github.com/jorchford/tactile/releases/download/v0.21/Tactile-Intel.zip) | [⚡ Gitee 下载](https://gitee.com/jorchford/tactile/raw/master/downloads/Tactile-v0.21-Intel.zip) |

---

## 🔒 校验哈希 (SHA-256 Checksums - v0.21)

如需对下载的文件进行完整性与防篡改验证，可在终端中执行 `shasum -a 256 <文件名>` 并核对以下哈希：

```text
57916832196c4dca0c324338f0b04185f102cf61743f82cc784b0bd39009f8e7  Tactile-AppleSilicon.zip
57916832196c4dca0c324338f0b04185f102cf61743f82cc784b0bd39009f8e7  Tactile-v0.21-AppleSilicon.zip

3d427dbbcf3b03861c9e17ef4730c57ac84a5cf85f1c9ca27ad6d409568f9b91  Tactile-Intel.zip
3d427dbbcf3b03861c9e17ef4730c57ac84a5cf85f1c9ca27ad6d409568f9b91  Tactile-v0.21-Intel.zip
```

---

## 🛠️ 安装与使用指南

1. 下载对应架构的 `.zip` 压缩包并解压；
2. 将解压出来的 **`Tactile.app`** 拖移至系统的 **`Applications` (应用程序)** 目录；
3. 首次启动时，根据系统引导开启 **辅助功能 (Accessibility)** 与 **输入监控 (Input Monitoring)** 权限；
4. 若 macOS Gatekeeper 提示“无法打开，因为无法验证开发者”，在系统 **“系统设置” -> “隐私与安全性”** 中点击 **“仍要打开”** 即可。
