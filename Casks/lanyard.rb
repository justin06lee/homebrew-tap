# Cask for Lanyard — floating name tags for your Claude Code sessions.
# https://github.com/justin06lee/lanyard
cask "lanyard" do
  version "0.3.0"
  sha256 "3a094fb2ec06010f884add99b4758d56466407ee7b4ee6d9e5cd2f7d09c053ad"

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
