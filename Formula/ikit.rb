class Ikit < Formula
  desc "Apple Ecosystem CLI for Agents (Notes/Reminders/Calendar/Photos/Meet/Timer)"
  homepage "https://github.com/liyuankui/ikit"

  # Homebrew 6.x 私有仓库下载：deferred-env 注入 Authorization header 时
  # 会禁用重定向（--max-redirs 0），但 GitHub release 下载需跟随 302→S3，
  # 此策略解除该限制（curl 跨域不转发 Authorization，无泄露风险）。
  class PrivateReleaseDownloadStrategy < CurlDownloadStrategy
    def _curl_args
      args = super
      i = args.index("--max-redirs")
      i ? args[0...i] + args[(i + 2)..] : args
    end
  end

  url "https://github.com/liyuankui/ikit/releases/download/v2.10.1/ikit-arm64.tar.gz",
      headers: ["Authorization: Bearer {{HOMEBREW_DEFERRED_ENV:HOMEBREW_GITHUB_API_TOKEN}}"],
      using: PrivateReleaseDownloadStrategy
  version "2.10.1"
  sha256 "fffb0432c5b9edd7ea01e746377364425dbc874153211f6b6f6273ce4d4c84a2"

  def install
    bin.install "ikit"
  end

  test do
    assert_match "iKit", shell_output("#{bin}/ikit --version")
  end

  def caveats
    <<~EOS
      iKit 从私有仓库分发，安装/升级前需设置 token：
        export HOMEBREW_GITHUB_API_TOKEN=$(gh auth token)
    EOS
  end
end
