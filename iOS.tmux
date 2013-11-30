# Source the original config
source ~/.tmux.conf

# Initializing.
new-session -s iOS -n editor -d
send-keys -t iOS 'cd ~/src' C-m

# Window set up.
split-window -v -t iOS 
select-layout -t iOS main-horizontal

# Creating more windows.
new-window -n dns -t iOS
send-keys -t iOS:2 'dns' C-m

new-window -n shell -t iOS
send-keys -t iOS 'cd ~/src/mobile/iOS/' C-m

# Configuring panes.
send-keys -t iOS:1.2 'cd ~/src/mobile/iOS/' C-m

# Window selection.
select-window -t iOS:1
