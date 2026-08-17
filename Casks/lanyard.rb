# Cask for Lanyard — floating name tags for your Claude Code sessions.
# https://github.com/justin06lee/lanyard
cask "lanyard" do
  version "0.2.3"
  sha256 "d3871170dc593fa18edbbeab2e3e21bab49b337c8c7a1343779b89c8a045bef3"

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
