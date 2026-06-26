# typed: false
# frozen_string_literal: true

class Sshelf < Formula
  desc "Terminal UI for managing SSH connections"
  homepage "https://github.com/khamdokhov/sshelf"
  url "https://github.com/khamdokhov/sshelf/archive/refs/tags/v0.2.1.tar.gz"
  version "0.2.1"
  sha256 "e04103cd4309d1f268b490465597b1b856f097214749468726542c9ac057e71d"
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
