# Cask for Lanyard — floating name tags for your Claude Code sessions.
# https://github.com/justin06lee/lanyard
cask "lanyard" do
  version "0.3.2"
  sha256 "683ee429c8b855df5fd12d664a8e812c2e17d0b97e1560a680fb37076ee54a37"

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
