class Ikit < Formula
  desc "Apple Ecosystem CLI for Agents (Notes/Reminders/Calendar/Photos/Meet/Timer)"
  homepage "https://github.com/liyuankui/ikit"
  url "https://github.com/liyuankui/ikit/releases/download/v2.10.1/ikit-arm64.tar.gz"
  version "2.10.1"
  sha256 "fffb0432c5b9edd7ea01e746377364425dbc874153211f6b6f6273ce4d4c84a2"

  def install
    bin.install "ikit"
  end

  test do
    assert_match "iKit", shell_output("#{bin}/ikit --version")
  end
end
