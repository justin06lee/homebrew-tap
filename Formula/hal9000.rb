class Hal9000 < Formula
  desc "AI project orchestrator TUI — HAL 9000 manages multiple Claude workers"
  homepage "https://github.com/justin06lee/hal9000"
  license "MIT"
  version "0.2.0"

  depends_on "go" => :build

  # Install from source — point this at your repo
  url "https://github.com/justin06lee/hal9000.git", tag: "v0.2.0"
  # Alternatively for a tarball release:
  # url "https://github.com/justin06lee/hal9000/archive/refs/tags/v0.2.0.tar.gz"
  # sha256 "REPLACE_WITH_SHA256"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"hal9000", "."
  end

  test do
    assert_match "HAL", shell_output("#{bin}/hal9000 --help 2>&1", 1)
  end
end
