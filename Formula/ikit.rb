class Ikit < Formula
  desc "Apple Ecosystem CLI for Agents (Notes/Reminders/Calendar/Photos/Health/Meet/Timer)"
  homepage "https://github.com/liyuankui/ikit"
  url "https://github.com/liyuankui/ikit/releases/download/v2.10.3/ikit-arm64.tar.gz"
  version "2.10.3"
  sha256 "157ea7f380124c5cc89c8ec492696ddf87d0d09cc68cd1b6c02f6551215173f1"

  def install
    bin.install "ikit"
  end

  test do
    assert_match "iKit", shell_output("#{bin}/ikit --help")
  end
end
