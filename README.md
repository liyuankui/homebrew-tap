# iKit Homebrew Tap

[iKit](https://github.com/liyuankui/ikit)（Apple Ecosystem CLI for Agents）的 Homebrew 分发渠道。

## 安装

```bash
brew tap liyuankui/tap
brew install liyuankui/tap/ikit
```

## 升级

```bash
brew upgrade liyuankui/tap/ikit
```

## 发布流程（维护者）

1. `cd ~/Work/iKit && git pull`
2. bump `Sources/iKit/main.swift` 中 `VERSION`，commit 并 push
3. `git tag vX.Y.Z && git push origin vX.Y.Z` → GitHub Actions 自动构建并创建 Release
4. 更新本 tap 的 `Formula/ikit.rb`（version/sha256），commit 并 push

## 注意

- 二进制为 arm64（Apple Silicon）
