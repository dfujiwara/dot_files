alias vimr="vim -R"
alias h="heroku"
alias j="jitsu"
alias js="cd ~/src/nextdoor.com/static/js"
alias css="cd ~/src/nextdoor.com/static/css"
alias templates="cd ~/src/nextdoor.com/templates/nextdoor"
alias nextdoor="cd ~/src/nextdoor.com/apps/nextdoor"
alias web="cd ~/src/nextdoor.com/apps/nextdoor/web"
alias mobile="cd ~/src/nextdoor.com/apps/nextdoor/mobile"
alias common="cd ~/src/nextdoor.com/apps/nextdoor/common"
alias schema="cd ~/src/nextdoor.com/apps/nextdoor/schema"
alias p="psql nextdoor gisuser"
alias shell="python ~/src/nextdoor.com/apps/nextdoor/manage.py shell"
alias server="python ~/src/nextdoor.com/apps/nextdoor/manage.py runserver 0.0.0.0:8000"
alias tile="python ~/src/nextdoor.com/apps/nextdoor/manage.py wms_server"
alias web_test="python ~/src/nextdoor.com/apps/nextdoor/manage.py test web"
alias v="vim"
alias third_party="cd ~/src/third_party"
alias cmd="cd ~/src/nextdoor.com/apps/nextdoor/web/management/commands"
alias async="cd ~/src/nextdoor.com/apps/nextdoor/web/async_tasks"
alias ve="cd ~/src/third_party/python/ve"
alias server_tmux="tmux -f ~/dot_files/server.tmux attach -d"

# mobile develeopment
alias ios_tmux="tmux -f ~/dot_files/iOS.tmux attach -d"
alias dns="sudo /usr/local/opt/dnsmasq/sbin/dnsmasq --no-daemon --log-queries"
alias ios="cd ~/src/mobile/iOS"
alias android="cd ~/src/mobile/android"
alias hosts="sudo vim /etc/hosts"
alias ifc="ifconfig"
alias xcode="open -a /Applications/Xcode.app ~/src/mobile/iOS/Nextdoor.xcworkspace"
alias astudio="open -a '/Applications/Android Studio.app'"

# vagrant
alias vup="(cd ~/vagrant/dev/ && vagrant up)"
alias vreload="(cd ~/vagrant/dev/ && vagrant reload)"
alias vssh="(cd ~/vagrant/dev/ && vagrant ssh)"
