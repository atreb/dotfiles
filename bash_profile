export N_PREFIX="/Users/atreb/DEV/nodejs"
export PATH=$N_PREFIX/bin:$PATH

#for making use of brew vim from /usr/local/bin instead of system vim from /usr/bin if /usr/local/bin does not take precedence over /usr/bin
#export PATH="/usr/local/bin:$PATH"

#supervisor shortcut
alias sstart='supervisor -w . -e "js|mu|json|jade" server.js'

#shortcut paths
alias gotows='cd ~/DEV/WORKSPACE'
alias gotonode='cd ~/DEV/WORKSPACE/node-apps'
alias gotoservoapps='cd ~/DEV/WORKSPACE/node-apps/servo_apps'

# Recursively execute `git status` on each repo
alias gstr='for i in ./*; do echo "$i" && git --git-dir=$i/.git --work-tree=$i status | grep -v "# On branch *" | grep -v "nothing *"; done;'
# Recursively execute `git pull` on each repo
alias glr='for i in ./*; do echo "$i" && git --git-dir=$i/.git fetch && git --git-dir=$i/.git --work-tree=$i merge origin/master | grep -v "Already up-to-date."; done;'

#tomcat6 start,stop and restart scripts
alias start-tomcat='~/DEV/tomcat6/bin/startup.sh'
alias stop-tomcat='~/DEV/tomcat6/bin/shutdown.sh'

#redis
alias start-redis='/Users/atreb/DEV/redis-2.8.9/src/redis-server'
