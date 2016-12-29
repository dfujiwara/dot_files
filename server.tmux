# Source the original config
source ~/.tmux.conf

# First window to run server and psql.
new-session -s server -n run_server -d
send-keys -t server 'cd ~/src/nextdoor.com/apps/nextdoor' C-m
send-keys -t server 'runserver' C-m

split-window -h -t server:1
send-keys -t server:1.2 'p' C-m

# Layout selection.
#select-layout -t server main-horizontal

# Second window to run celery and output /var/log/nextdoor.log.
new-window -n taskworker -t server
send-keys -t server:2 'cd ~/src/nextdoor.com/apps/nextdoor' C-m
send-keys -t server:2 'python manage.py taskworker' C-m

# Start logging the nextdoor.log output in a pretty format.
split-window -h -t server:2 
send-keys -t server:2.2 'tl' C-m

# Also run open a shell in the docker directory. 
split-window -v -t server:2.1
send-keys -t server:2.3 'cd ~/src/docker-foundry/' C-m

# Layout selection.
#select-layout -t server main-horizontal

# Third window in the mobile directory.
new-window -n mobile_api -t server
send-keys -t server:3 'mobile' C-m

# Fourth window in the common directory.
new-window -n web -t server
send-keys -t server:4 'web' C-m

# Fourth window in the common directory.
new-window -n common -t server
send-keys -t server:5 'common' C-m

# Window selection; start in the mobile window.
select-window -t server:3
