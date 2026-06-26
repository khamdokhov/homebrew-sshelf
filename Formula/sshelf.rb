# typed: false
# frozen_string_literal: true

class Sshelf < Formula
  desc "Terminal UI for managing SSH connections"
  homepage "https://github.com/khamdokhov/sshelf"
  url "https://github.com/khamdokhov/sshelf/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "9e905ac61b4caeb80d69fa1ef961052610b31858834e61345de5da0188401423"
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
