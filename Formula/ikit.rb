class Ikit < Formula
  desc "Apple Ecosystem CLI for Agents (Notes/Reminders/Calendar/Photos/Meet/Timer)"
  homepage "https://github.com/liyuankui/ikit"
  url "https://github.com/liyuankui/ikit/releases/download/v2.10.2/ikit-arm64.tar.gz"
  version "2.10.2"
  sha256 "46a32b172e26fd373a0ef465dc323102ef640265684ea3be8ce51bc1a5948f56"

  def install
    bin.install "ikit"
  end

  test do
    assert_match "iKit", shell_output("#{bin}/ikit --help")
  end
end
