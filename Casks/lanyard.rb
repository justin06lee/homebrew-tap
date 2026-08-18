# Cask for Lanyard — floating name tags for your Claude Code sessions.
# https://github.com/justin06lee/lanyard
cask "lanyard" do
  version "0.3.1"
  sha256 "7267126236c80bfb7c476c86edf3b44c4f3ec93309b77b9755e48bd4018d9132"

  url "https://github.com/justin06lee/lanyard/releases/download/v#{version}/Lanyard_#{version}_aarch64.dmg"
  name "Lanyard"
  desc "Floating name tags for your Claude Code sessions"
  homepage "https://github.com/justin06lee/lanyard"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Lanyard.app"

  caveats <<~EOS
    Lanyard needs Accessibility access to see which window has focus:
    System Settings › Privacy & Security › Accessibility
  EOS
end
