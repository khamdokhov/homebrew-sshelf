# typed: false
# frozen_string_literal: true

class Sshelf < Formula
  desc "Terminal UI for managing SSH connections"
  homepage "https://gitverse.ru/khamdokhov/sshelf"
  url "https://gitverse.ru/api/repos/khamdokhov/sshelf/archive/000432cd662261ea6d8000e84d2e73f4d2aeb8c3.tar.gz"
  version "0.2.0"
  sha256 "9a5dba97dcdf624106435c6e53eea71b92a23aa63c73db86a7366664c8390b76"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", "sshelf"
    bin.install "sshelf"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/sshelf -v")
  end
end
