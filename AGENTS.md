# 项目规则与安全性记忆 (Workspace Rules & Security Guidelines)

## 🔒 核心机密与源码保护规则 (CRITICAL SECURITY RULE)

> [!CAUTION]
> **绝对禁止将任何源代码上传至公开 Git 仓库！**
> 本仓库 (`https://github.com/jorchford/tactile`) 为公开代码仓库，严禁在此仓库中提交或推送任何项目的源代码（包括但不限于 Swift、C、Objective-C 等源文件）。

### 1. 仓库定位与白名单规范
- 本仓库定位：**静态官网宣传与预编译软件下载发布仓**。
- **允许入库的内容**（白名单）：
  - 预编译独立安装包（`downloads/*.zip`，仅限本地签名后的已打包产物）
  - 静态展示网页与媒体资源（`index.html`、`images/`、`videos/`）
  - 软件说明文档（`README.md`、`README_zh.md`、`LICENSE`）
- **绝对禁止入库的内容**：
  - 任何源代码文件（`.swift`、`.m`、`.h`、`.c` 等）
  - 内部构建规范（`project.yml`、`.xcodeproj`、`xcworkspace` 等）
  - 严禁创建并推送任何源码形态分支（如 `source` 分支）。
