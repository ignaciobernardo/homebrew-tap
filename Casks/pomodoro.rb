cask "pomodoro" do
  version "1.1.0"
  sha256 "7a8a54738b5ce2bd2071037d32079173a77e05c85c172d89c9c8c88724c931ad"

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
