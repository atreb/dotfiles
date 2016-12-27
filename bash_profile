export N_PREFIX="/Users/atreb/DEV/nodejs"
export PATH=$N_PREFIX/bin:~/bin:$PATH

#for making use of brew vim from /usr/local/bin instead of system vim from /usr/bin if /usr/local/bin does not take precedence over /usr/bin
#export PATH="/usr/local/bin:$PATH"

#supervisor shortcut
alias sstart='supervisor -w . -e "js|mu|json|jade" server.js'

#shortcut paths
alias gotows='cd ~/DEV/WORKSPACE'
alias gotonode='cd ~/DEV/WORKSPACE/node-apps'
alias gotoappsservo='cd ~/DEV/WORKSPACE/node-apps/apps_servo'
alias gotoservo2='cd ~/DEV/WORKSPACE/node-apps/apps_servo/servo2'

# Recursively execute `git status` on each repo
alias gstr='for i in ./*; do echo "$i" && git --git-dir=$i/.git --work-tree=$i status | grep -v "# On branch *" | grep -v "nothing *"; done;'
# Recursively execute `git pull` on each repo
alias glr='for i in ./*; do echo "$i" && git --git-dir=$i/.git fetch && git --git-dir=$i/.git --work-tree=$i merge origin/master | grep -v "Already up-to-date."; done;'

#tomcat6 start,stop and restart scripts
alias start-tomcat='~/DEV/tomcat6/bin/startup.sh'
alias stop-tomcat='~/DEV/tomcat6/bin/shutdown.sh'

#redis
alias start-redis='/Users/atreb/DEV/redis-2.8.9/src/redis-server'

#aliases to tunnel to servo2 mongo
alias servo1Vir='ssh atreb@jump.onservo.com -L 27018:10.192.90.29:27017 -Nf'
alias servo1Ore='ssh atreb@jump.onservo.com -L 27018:10.198.73.114:27017 -Nf'
alias servo2betaCali='ssh atreb@jump2.onservo.com -L 27018:54.193.49.76:27017 -Nf'
alias servo2dj01Vir='ssh atreb@jump2.onservo.com -L 27018:52.0.113.165:27017 -Nf'
alias servo2dj01Ore='ssh atreb@jump2.onservo.com -L 27018:54.200.237.145:27017 -Nf'
#The above tunnels runs in background. To stop the port forwarding do following to get the pid and kill it
#lsof -i :2718
alias killMongoTunnel='kill `lsof -ti :27018`'

#start atom with predefined folders
alias myatom='atom ~/Documents ~/Downloads ~/DEV/WORKSPACE/node-apps'

#enable/disable hidden files/folders in finder
alias unhideInFinder=`defaults write com.apple.finder AppleShowAllFiles TRUE`
alias hideInFinfder=`defaults write com.apple.finder AppleShowAllFiles FALSE`

#docker cleanup aliases
alias docker-rm='docker rm -f $(docker ps -aq)'
alias docker-rmi='docker rmi -f $(docker images -q)'
