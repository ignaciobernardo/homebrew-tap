cask "pomodoro" do
  version "1.1.1"
  sha256 "5a77d5cef929108b59d6af51dff44bdbdf7d59d686d515d76de9c3533a8ced8f"

  url "https://github.com/ignaciobernardo/notch-pomodoro/releases/download/v#{version}/Pomodoro.zip"
  name "Pomodoro"
  desc "Pomodoro que vive en el notch del Mac, solo o con gente cerca"
  homepage "https://github.com/ignaciobernardo/notch-pomodoro"

  # The app updates itself from GitHub Releases (signed zips).
  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Pomodoro.app"

  uninstall quit: "cl.natochi.notch-pomodoro"

  zap trash: "~/Library/Preferences/cl.natochi.notch-pomodoro.plist"

  caveats <<~EOS
    Pomodoro no está notarizado por Apple. La primera vez, ábrelo, cierra el aviso y ve a
    Ajustes del Sistema → Privacidad y seguridad → Abrir igualmente.
    Después se actualiza solo desde el notch.
  EOS
end
