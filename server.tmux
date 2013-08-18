# Source the original config
source ~/.tmux.conf

# First window to run server and psql.
new-session -s server -n run_server -d
send-keys -t server 'cd ~/src/nextdoor.com/apps/nextdoor' C-m
send-keys -t server 'server' C-m

split-window -h -t server:1
send-keys -t server:1.2 'p' C-m

# Layout selection.
#select-layout -t server main-horizontal

# Second window to run celery and output /var/log/nextdoor.log.
new-window -n celery -t server
send-keys -t server 'cd ~/src/nextdoor.com/apps/nextdoor' C-m
send-keys -t server:2 'python manage.py celery worker' C-m

split-window -h -t server:2 
send-keys -t server:2.2 'tail -f /var/log/nextdoor.log' C-m

# Layout selection.
#select-layout -t server main-horizontal

# Third window in the mobile directory.
new-window -n mobile -t server
send-keys -t server:3 'mobile' C-m

# Four window in the web directory.
new-window -n web -t server
send-keys -t server:4 'web' C-m

# Window selection; start in the mobile window.
select-window -t server:3
