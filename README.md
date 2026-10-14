# 奶蛙大笑 · Codex 桌宠

中文 | [English](README.en.md)

一只给 OpenAI Codex 用的桌面宠物：平时眨眼发呆，鼠标一放上去就笑得前仰后合；Codex 干活时打功夫，等你回复时静坐，出错了直接笑到摔倒打滚。

![预览](assets/preview.gif)

## 各状态动作

| Codex 状态 | 什么时候出现 | 奶蛙在干嘛 |
|---|---|---|
| 待机 idle | 平时 | 眨眼，眼珠慢慢飘过来 |
| 悬停 jumping | 鼠标移到宠物上 | **前仰后合大笑** |
| 拖动 running-left / right | 拖着它走 | 仰头大笑 |
| 干活 running | Codex 正在执行任务 | 打功夫 |
| 等待 waiting | 等你批准或回复 | 静坐 |
| 通知 waving | 有新通知 | 快速眨一下眼 |
| 完成 review | 任务完成、结果未读 | 双手抱头大笑 |
| 出错 failed | 任务失败 / 被取消 | 笑到摔倒打滚 |

## 安装

需要已安装 [Codex 桌面应用](https://openai.com/codex/)（或带 Codex 的 ChatGPT 桌面版）。

**方法一：一行命令（macOS / Linux）**

```bash
curl -fsSL https://raw.githubusercontent.com/WentaoZhu626/naiwa-codex-pet/main/install.sh | bash
```

**方法一：一行命令（Windows PowerShell）**

```powershell
irm https://raw.githubusercontent.com/WentaoZhu626/naiwa-codex-pet/main/install.ps1 | iex
```

**方法二：手动安装**

1. 下载本仓库（右上角 Code → Download ZIP）并解压。
2. 把 `pets/naiwa-laugh` 整个文件夹复制到：
   - macOS / Linux：`~/.codex/pets/`
   - Windows：`%USERPROFILE%\.codex\pets\`
   - 如果设置过 `CODEX_HOME`，就放到 `$CODEX_HOME/pets/`
3. 最终结构应该是：

   ```text
   ~/.codex/pets/naiwa-laugh/
   ├── pet.json
   └── spritesheet.webp
   ```

**然后：** 打开 Codex → Settings → Appearance → Pets，选择 **「奶蛙大笑」**。看不到的话重启一下 Codex。

## 常见问题

**更新了文件但 Codex 里还是旧样子？**
Codex 第一次读到一个自定义宠物时，会把它上传到你的账号，之后一直用云端那份，本地文件再改也不会生效。想换新版本：先在 Pets 设置里删掉旧的「奶蛙大笑」，再把文件夹改个名字（比如 `naiwa-laugh-2`）重新放进去。

**为什么悬停时只笑几秒就停了？**
这是 Codex 的规则：除了待机，其他动作每次触发只播 3 遍，然后回到待机。待机动作还会被放慢 6 倍，所以待机用的是适合慢放的眨眼。

**完全不动？**
检查系统是否开启了「减少动态效果」（macOS：系统设置 → 辅助功能 → 显示 → 减少动态效果）。开启后 Codex 只显示静态画面。

## 文件说明

```text
pets/naiwa-laugh/pet.json          宠物信息
pets/naiwa-laugh/spritesheet.webp  1536×1872 动画图集（8 列 × 9 行，每格 192×208）
install.sh / install.ps1           安装脚本
assets/                            预览图
```

图集格式遵循 Codex 自定义宠物规范（[openai/skills · hatch-pet](https://github.com/openai/skills/tree/main/skills/.curated/hatch-pet)），已通过官方校验脚本检查。

## 素材说明

动画画面取自网络上的奶蛙视频和图片，经过抠图、排版制作而成，仅供个人娱乐使用。
