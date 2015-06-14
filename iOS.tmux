# Source the original config
source ~/.tmux.conf

# Initializing.
new-session -s mobile -n iOS -d
send-keys -t mobile 'cd ~/src/mobile/iOS/' C-m
send-keys -t mobile 'open -a /Applications/Xcode.app Nextdoor.xcworkspace' C-m

# Creating more windows.
new-window -n Android -t mobile
send-keys -t mobile:2 'cd ~/src/android' C-m

new-window -n shell -t mobile
send-keys -t mobile 'cd ~/src/mobile/iOS/' C-m

# Window selection.
select-window -t mobile:1
