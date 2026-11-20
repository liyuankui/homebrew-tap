class Ikit < Formula
  desc "Apple Ecosystem CLI for Agents (Notes/Reminders/Calendar/Photos/Health/Meet/Timer/Notify)"
  homepage "https://github.com/liyuankui/ikit"
  url "https://github.com/liyuankui/ikit/releases/download/v2.11.0/ikit-arm64.tar.gz"
  version "2.11.0"
  sha256 "b7bbb3da9fc9311b0a340561d4e9bac95e8dca6a62e560d6f789873d905c805b"

  def install
    bin.install "ikit"
  end

  test do
    assert_match "iKit", shell_output("#{bin}/ikit --help")
  end
end
