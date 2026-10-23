# Tactile (妙触) 🪄

<p align="center">
  <img src="images/AppIcon.png" alt="Tactile Icon" width="128" height="128">
</p>

<p align="center">
  <strong>Ultra-Low Memory, 120Hz ProMotion Multitouch Gesture Powerhouse for macOS</strong>
</p>

<p align="center">
  <a href="https://github.com/jorchford/tactile/releases"><img src="https://img.shields.io/github/v/release/jorchford/tactile?color=blue&label=Release" alt="Release"></a>
  <a href="https://developer.apple.com/macos/"><img src="https://img.shields.io/badge/macOS-12.0%2B%20(Monterey%20--%20Sequoia)-success" alt="macOS Version"></a>
  <a href="https://developer.apple.com/swift/"><img src="https://img.shields.io/badge/Swift-6.0-orange" alt="Swift 6"></a>
  <a href="https://github.com/jorchford/tactile/blob/master/LICENSE"><img src="https://img.shields.io/badge/License-Proprietary-lightgrey" alt="License"></a>
  <a href="https://app.needai.top/app/tactile"><img src="https://img.shields.io/badge/Website-Tactile-blueviolet" alt="Website"></a>
</p>

<p align="center">
  <a href="README.md">English Documentation</a> | <strong>中文使用手册</strong>
</p>

---

## 🎬 动态效果演示

<p align="center">
  <img src="images/tactile_demo.gif" alt="Tactile Demo" width="90%">
</p>

> 🎥 视频演示：可直接播放工程内高清演示视频 [`videos/tactile_demo.mp4`](videos/tactile_demo.mp4)。

---

## 📖 目录 (Table of Contents)

1. [核心亮点与性能特性](#-核心亮点与性能特性)
2. [全部功能矩阵 (Feature Matrix)](#-全部功能矩阵)
3. [触控板手势详解 (Trackpad Gestures)](#-触控板手势详解)
4. [字符与方向笔画绘制 (Character Drawing)](#-字符与方向笔画绘制)
5. [妙控鼠标手势 (Magic Mouse Pro)](#-妙控鼠标手势-magic-mouse-pro)
6. [省电模式与 CPU 极限优化](#-省电模式与-cpu-极限优化)
7. [场景模式 (Scene Mode - Pro 专属)](#-场景模式-scene-mode---pro-专属)
8. [分应用独立配置 (Per-App Profiles - Pro 专属)](#-分应用独立配置-per-app-profiles---pro-专属)
9. [系统权限与运行状态 (Permissions & Health)](#-系统权限与运行状态)
10. [下载与安装指引 (Download & Installation)](#-下载与安装指引-download--installation)
11. [致敬与致谢 (Acknowledgments & Tribute)](#-致敬与致谢-acknowledgments--tribute)
12. [开源与软件授权说明 (License & Notice)](#-开源与软件授权说明-license--notice)
13. [常见问题与支持 (FAQ & Support)](#-常见问题与支持-faq--support)

---

## 🌟 核心亮点与性能特性

- **⚡️ 零堆分配触控热路径 (Zero-Alloc Hot Path)**：栈上内存分配触控帧缓冲，在 120Hz ProMotion 触控硬件回调中实现真正的**零堆内存分配**，内存占用常驻 < 20MB。
- **⏱ 微秒级极速响应 (Microsecond Latency)**：直通 macOS 驱动层 `kCGHIDEventTap` 注入按键与鼠标事件，杜绝传统自动化工具的几十毫秒粘滞感。
- **🎯 彻底消除跳页与连击 (Debounced Dispatcher)**：统一 HID 事件分发管道，彻底解决双管道并发导致的“下一标签页跳过变成第三个”的历史顽疾，内置 100ms 快速连击防抖。
- **✍️ 字符绘制与直线度防误判 (Character Drawing)**：在触控板或使用鼠标划出字母（`T` 新建标签、`W` 关闭、`B` 浏览器、`F` 访达、`Q` 退出等）或方向箭头秒级触发对应操作。HUD 实时呈现 Top 1 匹配动作与整数置信度，直线度拦截机制（`straightness >= 0.82`）彻底根除斜划误识别。
- **🔋 极速省电模式与屏幕休眠自动挂起**：监听系统屏幕休眠事件智能挂起硬件触控监听，亮屏即刻自动唤醒恢复，闲置 0.0% CPU 占用。
- **💨 设置窗口 0% CPU 消耗优化**：采用事件按需监听，Metal GPU 硬件加速渲染，设置窗口关闭时主动置空并销毁所有视图与计时器。
- **👁 状态栏图标完全隐藏**：支持从菜单栏完全隐藏应用图标进入静默后台常驻，随时从访达或启动台再次点击图标唤出设置中心。
- **🖱 妙控鼠标 Pro 全表面手势**：专为 Magic Mouse 打造的独立多点触控增强（标签切换、滑动关闭、三指调度、中键模拟），与触控板手势独立开关。
- **🎛 场景模式 (Scene Mode)**：一键保存、备份与恢复整套手势绑定配置，内置日常、办公、开发、影音 4 大常用预设，菜单栏 1 秒即开即用。
- **🪟 原生窗口快速平铺 (Window Tiling)**：直接利用系统 Accessibility API 实现最大化、左半屏、右半屏、居中还原，不依赖任何第三方窗口管理插件。

---

## 📊 全部功能矩阵

| 功能模块 | 功能特性 | 免费版 (Free) | Pro 专业版 (Pro) |
| :--- | :--- | :---: | :---: |
| **触控板基础手势** | 单指定位 + 另指左右轻点 (上一/下一标签页) | ✅ 永久免费 | ✅ 完全支持 |
| | 单指定位 + 另指上下滑动 (刷新 / 关闭标签页) | ✅ 永久免费 | ✅ 完全支持 |
| | 单指按压 + 双指滑动 (关闭窗口/最小化) | ✅ 永久免费 | ✅ 完全支持 |
| | 双指固定 + 另指双击/轻点 (中键点击/新建标签) | ✅ 永久免费 | ✅ 完全支持 |
| | 三指轻点 (系统避让 / 自定义动作) | ✅ 永久免费 | ✅ 完全支持 |
| | 四指轻点 (锁屏 / 调度 / 自定义动作) | ✅ 永久免费 | ✅ 完全支持 |
| | 三指 / 四指向左 / 向右轻扫 (平滑切应用 / 切换空间) | ✅ 永久免费 | ✅ 完全支持 |
| | 无名指到食指波浪轻点 (最大化窗口) | ✅ 永久免费 | ✅ 完全支持 |
| | 食指到无名指波浪轻点 (最小化窗口) | ✅ 永久免费 | ✅ 完全支持 |
| | 两指固定 + 一指滑动 (分屏贴靠 / 桌面调度) | ✅ 永久免费 | ✅ 完全支持 |
| | 触控板轻点速度与灵敏度 Slider 自定义 | ✅ 永久免费 | ✅ 完全支持 |
| **字符绘制** | 触控板单指/双指绘字与鼠标右键画手势 | ✅ 永久免费 | ✅ 完全支持 |
| | 12 个常用字母手势 (`B, F, T, W, Q, O, S, C, V, Z, L, N`) | ✅ 永久免费 | ✅ 完全支持 |
| | 8 个方向笔画 (`↑, ↓, ←, →, ↗, ↙, ↖, ↘`) | ✅ 永久免费 | ✅ 完全支持 |
| | 实时候选 HUD：匹配度整数百分比 + 最优动作实时呈现 | ✅ 永久免费 | ✅ 完全支持 |
| | 直线度防误触过滤 (解决斜下划线被 W/V 误拦截) | ✅ 永久免费 | ✅ 完全支持 |
| | 全屏流光笔迹跟随光标与虚线触控板辅助框 | ✅ 永久免费 | ✅ 完全支持 |
| **妙控鼠标手势 (Pro 专属)** | 独立妙控鼠标总开关控制与 Pro 门禁保护 | 🔒 Pro 专属 | ✅ 完全支持 |
| | 中指固定 + 食指轻点 (近点/远点切换标签页) | 🔒 Pro 专属 | ✅ 完全支持 |
| | 中指固定 + 食指滑动 (内滑/外滑关闭与刷新) | 🔒 Pro 专属 | ✅ 完全支持 |
| | 表面三指上下轻扫 (调度中心 / 显示桌面) | 🔒 Pro 专属 | ✅ 完全支持 |
| | 鼠标表面点按模拟原生鼠标中键点击 | 🔒 Pro 专属 | ✅ 完全支持 |
| **场景模式 (Scene Mode)** | 4 套预设场景 (日常通用、高效办公、开发编程、影音视听) | 🔒 查看展示 | ✅ 一键无缝激活 |
| | 保存当前配置为新场景快照 (自定义图标、名称与描述) | 🔒 Pro 专属 | ✅ 无限保存与切换 |
| | 菜单栏下拉快捷切换场景 | 🔒 Pro 专属 | ✅ 一键秒级生效 |
| | 恢复场景初始默认配置 | 🔒 Pro 专属 | ✅ 完全支持 |
| **分应用独立配置** | 为特定 App (Safari, Chrome, Xcode, VS Code 等) 绑定独立手势 | 🔒 Pro 专属 | ✅ 无限应用支持 |
| | 从磁盘选取任意第三方 App 或自定义 Shell 脚本 | 🔒 Pro 专属 | ✅ 完全支持 |
| | 前台应用切换时自动秒级热重载手势映射 | 🔒 Pro 专属 | ✅ 完全支持 |
| **视觉与动作提示** | 触控板普通操作提示与字符绘制提示独立开关 | ✅ 永久免费 | ✅ 完全支持 |
| | 动态光晕反馈 (Halo Effect) | ✅ 永久免费 | ✅ 完全支持 |
| | HUD 浮动提示位置调节 (4 种方位) | ✅ 永久免费 | ✅ 完全支持 |
| **省电与系统常驻** | 屏幕休眠自动挂起硬件监听 (Low Power Mode) | ✅ 永久免费 | ✅ 完全支持 |
| | 启动后自动退出设置进入静默省电模式 | ✅ 永久免费 | ✅ 完全支持 |
| | 不在状态栏显示图标 (完全隐藏后台常驻) | ✅ 永久免费 | ✅ 完全支持 |

---

## 🖐 触控板手势详解

<p align="center">
  <img src="images/01_preferences_overview.png" alt="Preferences Overview" width="90%">
</p>

### 1. 单指定位 + 另指轻点 (One-Fix Tap)
- **左侧轻点 (One Fix Left Tap)**：食指静止搭在触控板上，中指在左侧轻点一下，默认触发 **上一个标签页 (`Cmd+Shift+[` )**。
- **右侧轻点 (One Fix Right Tap)**：食指静止搭在触控板上，中指在右侧轻点一下，默认触发 **下一个标签页 (`Cmd+Shift+]` )**。

### 2. 单指定位 + 另指滑动 (One-Fix Slide)
- **向上滑动 (One Fix Two Slide Up)**：一指搭放，另一指向上轻划，默认触发 **刷新当前网页 (`Cmd+R` )**。
- **向下滑动 (One Fix Two Slide Down)**：一指搭放，另一指向下轻划，默认触发 **关闭当前标签页 (`Cmd+W` )**。
- **向左/向右滑动**：默认映射历史记录后退 / 前进。

### 3. 多指轻点与左右轻扫 (Multi-Finger Swipes & Taps)
- **三指轻点 (Three Finger Tap)**：默认设为无，避免与 macOS 原生查找词典手势冲突；可自由绑定至关闭标签页、中键点击等动作。
- **四指轻点 (Four Finger Tap)**：四指同时轻落触控板，支持绑定快速锁屏或一键最小化。
- **三指/四指左扫与右扫**：轻快向左或向右掠过触控板，支持平滑切屏或翻页。

---

## ✍️ 字符与方向笔画绘制

<p align="center">
  <img src="images/03_live_hud_character.png" alt="Character Drawing & Live HUD" width="90%">
</p>

### 1. 触发方式与按键自定义
- **触控板双指绘字**：食指与无名指分开轻放在触控板上划出轨迹。
- **触控板单指绘字**：单指直接在触控板划字。
- **鼠标右键手势**：可自由设置**按住键盘修饰键（如 Option, Command, Shift）或不按任何键**，按住鼠标键划动后松开即时触发。

### 2. 内置字母手势清单
| 手势代码 | 对应字母 | 默认绑定功能 | 常见替代功能 |
| :---: | :---: | :--- | :--- |
| `char_b` | **B** | 打开系统默认浏览器 (Launch Browser) | 书签栏切换 (Bookmarks) |
| `char_f` | **F** | 打开访达 (Launch Finder) | 页面内查找 (`Cmd+F`) |
| `char_t` | **T** | 新建标签页 (`Cmd+T`) | 终端打开 (`Terminal`) |
| `char_w` | **W** | 关闭当前标签页 (`Cmd+W`) | 关闭整个窗口 (`Cmd+Shift+W`) |
| `char_q` | **Q** | 退出当前应用程序 (`Cmd+Q`) | 快速锁定屏幕 |
| `char_o` | **O** | 打开文件 (`Cmd+O`) | 聚焦搜索栏 |
| `char_s` | **S** | 保存当前文件 (`Cmd+S`) | 另存为 (`Cmd+Shift+S`) |
| `char_c` | **C** | 复制到剪贴板 (`Cmd+C`) | 清屏 (`Clear`) |
| `char_v` | **V** | 从剪贴板粘贴 (`Cmd+V`) | 粘贴并匹配格式 |
| `char_z` | **Z** | 撤销上一步操作 (`Cmd+Z`) | 重做 (`Cmd+Shift+Z`) |
| `char_l` | **L** | 锁屏 / 选中地址栏 (`Cmd+L`) | 整理代码 |
| `char_n` | **N** | 新建窗口 (`Cmd+N`) | 新建备忘录 |

---

## 🖱 妙控鼠标手势 (Magic Mouse Pro)

<p align="center">
  <img src="images/02_multitouch_desktop.png" alt="Desktop Multitouch" width="90%">
</p>

- **中指固定 + 食指轻点 (Near/Far Tap)**：近点切换上一标签，远点切换下一标签。
- **中指固定 + 食指滑动 (Slide In/Out)**：向外滑刷新，向内滑关闭当前标签。
- **三指轻扫**：向上调度中心，向下显示桌面。
- **表面中键模拟**：单触或双指轻击鼠标背部中央，触发原生鼠标中键。

---

## 🔋 省电模式与 CPU 极限优化

<p align="center">
  <img src="images/04_gesture_halo_toast.png" alt="Gesture Halo & Toast" width="90%">
</p>

- **屏幕休眠深度感知**：系统屏幕熄灭时即刻挂起触控监听线程，亮屏毫秒级恢复，闲置 0.0% CPU 占用。
- **事件按需驱动**：彻底移除轮询计时器，改用原生事件监听，设置界面闲置 0.0% CPU 消耗。
- **Metal GPU 硬件加速**：手势预览动效采用 Metal 硬件光栅化，保持满帧 120 FPS 流畅度。
- **完全隐藏状态栏图标**：勾选后进入静默后台常驻，随时从访达或启动台点击应用唤出控制中心。

---

## 🎛 场景模式 (Scene Mode - Pro 专属)

<p align="center">
  <img src="images/05_scene_presets.png" alt="Scene Presets" width="90%">
</p>

1. **日常通用 (Daily General)**：针对 Safari、网页查阅、标签切换与日常桌面交互深度优化。
2. **高效办公 (Office Productivity)**：针对 Word、Pages、Excel、Numbers 与邮件通讯优化。
3. **开发编程 (Software Development)**：针对 Xcode、VS Code、终端（Terminal）深度定制。
4. **影音视听 (Media & Entertainment)**：针对视频剪辑与流媒体播放优化。

---

## 🛡 系统权限与运行状态

1. **辅助功能权限 (Accessibility)**：**必需权限**。用于合成键盘快捷键与窗口平铺。
2. **输入监控权限 (Input Monitoring)**：**推荐权限**。用于拦截底层滚动，防止手势操作与网页滚动产生冲突。

---

## 📦 下载与安装指引 (Download & Installation)

前往 [GitHub Releases](https://github.com/jorchford/tactile/releases) 或 [官网下载](https://app.needai.top/app/tactile) 获取预编译发行包：

| 架构 / 文件名 | 说明 | 适用机型 |
| :--- | :--- | :--- |
| **Tactile-Universal.zip** | 通用二进制格式 (推荐) | M1/M2/M3/M4 及 Intel Mac 全系列 |
| **Tactile-AppleSilicon.zip** | Apple Silicon 原生优化包 | MacBook Air/Pro, Mac mini, Mac Studio (M系列) |
| **Tactile-Intel.zip** | Intel x86_64 原生优化包 | 2015-2020 款 Intel 架构 Mac |

### 安装步骤
1. 下载适合您 Mac 架构的压缩包并解压。
2. 将 `Tactile.app` 拖入 `/Applications`（应用程序）文件夹。
3. 首次启动时，根据系统提示授予 **辅助功能 (Accessibility)** 权限，即可即刻畅享 120Hz 极速多点触控体验！

---

## 🤝 致敬与致谢 (Acknowledgments & Tribute)

Tactile (妙触) 的诞生与手势交互灵感深受 macOS 平台上经典的传奇多点触控神器 **[Jitouch](https://www.jitouch.com/)** 的深刻启发。

在此向 Jitouch 原项目及其创作者表达最诚挚的感谢与崇高敬意：
- 🌐 **官方网站**：[https://www.jitouch.com/](https://www.jitouch.com/)
- 💻 **开源仓库**：[sukolsak/jitouch](https://github.com/sukolsak/jitouch)

### 现代化重构与技术声明
伴随 macOS 系统架构从 Intel 到 Apple Silicon (M系列芯片) 的跃升，以及苹果在系统底层权限与安全架构方面的重大升级，经典 Jitouch 的系统偏好设置面板架构已无法直接在现代 macOS 上运行。为了让这套被全球 Mac 用户珍视的高效手势体系在现代硬件上重获新生：

- **100% Swift 纯原生重写**：Tactile 采用现代 **Swift 6.0** 与原生 AppKit / SwiftUI 架构，**从零完全重写了全部功能与手势检测算法**，彻底移除了对过时 System Preferences 面板及老旧 Objective-C 代码的依赖。
- **驱动级现代事件流水线**：直通现代驱动层 `kCGHIDEventTap` 实现微秒级响应与 120Hz ProMotion 触控硬件零堆分配处理，杜绝传统手势插件的粘滞与跳页。
- **全面原生适配**：原生支持 Apple Silicon (M1/M2/M3/M4) 与 Intel 双架构，全面兼容 macOS Monterey (12.0) 至 macOS Sequoia (15.0+)，并新增了智能直线度过滤、字符流光笔触 HUD 与场景化预设等现代创新特性。

---

## ⚖️ 开源与软件授权说明 (License & Notice)

- **免费使用 (Free Edition)**：
  - Tactile 的所有基础手势体验（包括触控板单指驻留轻点、双指滑动、全部 12 种字符轨迹绘制、方向笔画手势、HUD 实时候选动作预测等）**永久免费提供给所有 Mac 用户直接使用**。
- **GitHub 仓库定位 (Distribution Hub)**：
  - 本 GitHub 仓库（[`jorchford/tactile`](https://github.com/jorchford/tactile)）是 Tactile 的**官方公开版本发布、更新下载（GitHub Releases）、多语言使用文档、问题排查与 Issue 反馈交流中心**。
- **专有独立产权 (Proprietary Engine)**：
  - Tactile 核心 120Hz ProMotion 零分配驱动级触控引擎、直线度防误判算法及 Pro 专业版高级特性为独立研发的专有产权商业软件（遵循 Clean-Room 洁净室工程标准，不包含任何 GPL 开源传染代码）。
  - 为保护核心算法与商业知识产权，底层 Swift/C 源码不对外公开，本公开仓库专注于提供官方安装包下载与用户支持。
- **安全验证与签名**：
  - 发布的全部通用二进制安装包均已集成 Apple Developer ID 官方签名，确保可在 macOS 12 Monterey 至 macOS 15 Sequoia 上安全稳定运行。

---

## 💡 常见问题与支持 (FAQ & Support)

- **Q: 为什么状态栏没有看到图标？**  
  A: 如果在设置中开启了「不在状态栏显示图标」，应用会以静默模式在后台常驻。随时在「启动台」或「应用程序」中再次双击打开 Tactile，即可呼出设置窗口。
- **Q: 是否需要联网激活？**  
  A: 基础手势永久免费。Pro 专业版采用离线 HMAC-SHA256 机器识别码激活，纯本地离线验证，不上传任何个人隐私。

---

<p align="center">
  Crafted with ❤️ for Mac Power Users. Elevate your gestures with Tactile.
</p>
