softwareupdate --fetch-full-installer --full-installer-version 12.3.1
sudo hdiutil create -o /tmp/Monterey -size 16384m -volname Monterey -layout SPUD -fs HFS+J
sudo hdiutil attach /tmp/Monterey.dmg -noverify -mountpoint /Volumes/Monterey
sudo /Applications/Installer\ macOS\ Monterey.app/Contents/Resources/createinstallmedia --volume /Volumes/Monterey --nointeraction
hdiutil detach -force '/Volumes/Install macOS Monterey'
hdiutil convert /tmp/Monterey.dmg -format UDTO -o ~/Desktop/macos-monterey
mv ~/Desktop/macos-monterey.cdr ~/Desktop/macos-monterey.iso
sudo rm -fv /tmp/Monterey.dmg

#source:
# 1. https://techsviewer.com/how-to-create-macos-monterey-iso-image/
