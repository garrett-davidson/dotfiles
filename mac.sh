# General

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Language
# Setup system lanuage for English and Arabic
defaults write NSGlobalDomain AppleLanguages -array "en-US" "ar"

source safari.sh

# AirDrop
# Use AirDrop over every interface.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1


# Screensaver
# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

source finder.sh

# QuickLook
# Allow text-selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true


# Dock/Menu bar
# Dark theme
# Requires logout
defaults write $HOME/Library/Preferences/.GlobalPreferences.plist AppleInterfaceStyle -string "Dark"

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Group windows by application in Mission Control
defaults write com.apple.dock expose-group-by-app -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Bottom right hot corner starts screensaver
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0

# Hidden apps have translucent dock icon
defaults write com.apple.Dock showhidden -bool YES

# Mail
# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false


# Terminal
# Only use UTF-8
defaults write com.apple.terminal StringEncodings -array 4

#Use Homebrew theme when launching Terminal and when creating new windows
defaults write com.apple.Terminal.plist "Default Window Settings" Homebrew
defaults write com.apple.Terminal.plist "Startup Window Settings" Homebrew

# Activity Monitor
# Visualize CPU history in the dock icon
defaults write com.apple.ActivityMonitor IconType -int 6

# Show all processes
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

# Setup update period to 2 seconds
defaults write com.apple.ActivityMonitor UpdatePeriod 2


# TextEdit
# Use plain text mode for new documents
defaults write com.apple.TextEdit RichText -int 0

# Open and save files as UTF-8
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4


# Photos
# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true


# Keyboard
# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Set strikethrough to control-command-s globally
defaults write NSGlobalDomain NSUserKeyEquivalents 'Strikethrough = "@^s";'

# Universal Access
# Use control to zoom in
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true


# App Store
# Enable the WebKit Developer Tools
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu
defaults write com.apple.appstore ShowDebugMenu -bool true

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Automatically download apps purchased on other Macs
defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 1

# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true

# Allow the App Store to reboot machine on macOS updates
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true


# Extra Debug menus
# Enable the debug menu
defaults write com.apple.addressbook ABShowDebugMenu -bool true

# Enable the debug menu in iCal (pre-10.8)
defaults write com.apple.iCal IncludeDebugMenu -bool true

# Enable the debug menu in Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true


# Transmission
# Prompt when trying to quit during active download
defaults write org.m0k.transmission CheckQuitDownloading -bool true

# Use `~/Downloads` to store completed downloads
defaults write org.m0k.transmission DownloadLocationConstant -bool true

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission MagnetOpenAsk -bool false

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false
# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

# IP block list.
# Source: https://giuliomac.wordpress.com/2014/02/19/best-blocklist-for-transmission/
defaults write org.m0k.transmission BlocklistNew -bool true
defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true

# Set allowed peers
defaults write org.m0k.transmission PeersTorrent -int 500
defaults write org.m0k.transmission PeersTotal -int 500

# Show bandwidth on dock icon
defaults write org.m0k.transmission SelectedPrefView -string "TOOLBAR_BANDWIDTH"

# Randomize port on launch
defaults write org.m0k.transmission RandomPort -bool true

source menubar.sh
