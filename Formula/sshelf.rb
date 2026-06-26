# typed: false
# frozen_string_literal: true

class Sshelf < Formula
  desc "Terminal UI for managing SSH connections"
  homepage "https://github.com/khamdokhov/sshelf"
  url "https://github.com/khamdokhov/sshelf/archive/refs/tags/v0.2.2.tar.gz"
  version "0.2.2"
  sha256 "27ecc57fd37769c56650611ad3650480f0de713e15e7a155d973406584e40e8f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", "sshelf"
    bin.install "sshelf"
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/sshelf -v")
  end
end
