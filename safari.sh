echo "Setting up Safari"

#General
echo "Hide bookmarks bar"
defaults write com.apple.Safari ShowFavoritesBar -bool false

echo "Set HomePage to about:blank
defaults write com.apple.Safari HomePage -string "about:blank"

echo "Show full URL in address bar"
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

echo "Update extensions automatically"
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

echo "⌘F search Contains by default"
defaults write com.apple.safari FindOnPageMatchesWordStartsOnly -bool false

echo "Launching Safari reopens last session"
defaults write com.apple.safari AlwaysRestoreSessionAtLaunch -bool true


#Developer
echo "Enable Debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

echo "Enable Develop menu"
defaults write com.apple.Safari IncludeDevelopMenu -bool true

echo "Enable WebKit developer extras"
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true

echo "Enable WebKit 2 developer extras"
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write -g WebKitDeveloperExtras -bool true


