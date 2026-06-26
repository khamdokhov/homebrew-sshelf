# typed: false
# frozen_string_literal: true

class Sshelf < Formula
  desc "Terminal UI for managing SSH connections"
  homepage "https://github.com/khamdokhov/sshelf"
  url "https://github.com/khamdokhov/sshelf/archive/refs/tags/v0.2.1.tar.gz"
  version "0.2.1"
  sha256 "32153dc73ba15ecb1724d0f04bc839d2cd7aacb36266f709a1df5e5c56252c26"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", "sshelf"
    bin.install "sshelf"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/sshelf -v")
  end
end
