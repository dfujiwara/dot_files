# Source the original config
source ~/.tmux.conf

# Initializing.
new-session -s iOS -n ide -d
send-keys -t iOS 'cd ~/src/mobile/iOS/' C-m
send-keys -t iOS 'open -a /Applications/Xcode.app Nextdoor.xcworkspace' C-m

# Creating more windows.
new-window -n dns -t iOS
send-keys -t iOS:2 'dns' C-m

new-window -n shell -t iOS
send-keys -t iOS 'cd ~/src/mobile/iOS/' C-m

# Window selection.
select-window -t iOS:1
