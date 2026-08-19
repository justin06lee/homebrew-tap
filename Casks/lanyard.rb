# Cask for Lanyard — floating name tags for your Claude Code sessions.
# https://github.com/justin06lee/lanyard
cask "lanyard" do
  version "0.3.3"
  sha256 "b512b4ff45d8e2d3e29cb47e5b836fd19a526167450ad772166484b442137150"

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
