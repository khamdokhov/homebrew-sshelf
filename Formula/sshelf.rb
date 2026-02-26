# typed: false
# frozen_string_literal: true

class Sshelf < Formula
  desc "Terminal UI for managing SSH connections"
  homepage "https://gitverse.ru/khamdokhov/sshelf"
  url "https://gitverse.ru/api/repos/khamdokhov/sshelf/archive/a0dad1f341d15ad00ace19c708f4b591c80b760b.tar.gz"
  sha256 "d8e5342876cee15ab6413c41d6bc014daf92e0a534d135e8dd544a1d76ca6a93"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", "sshelf"
    bin.install "sshelf"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/sshelf -v")
  end
end
