export N_PREFIX="/Users/atreb/DEV/nodejs"
export PATH=$N_PREFIX/bin:~/bin:$PATH

#shortcut paths
alias gotows='cd ~/DEV/WORKSPACE'
alias gotonodeapps='cd ~/DEV/WORKSPACE/node-apps'
alias gotoservo2='cd ~/DEV/WORKSPACE/node-apps/servo2'

# Recursively execute `git status` on each repo
alias gstr='for i in ./*; do echo "$i" && git --git-dir=$i/.git --work-tree=$i status | grep -v "# On branch *" | grep -v "nothing *"; done;'
# Recursively execute `git pull` on each repo
alias glr='for i in ./*; do echo "$i" && git --git-dir=$i/.git fetch && git --git-dir=$i/.git --work-tree=$i merge origin/master | grep -v "Already up-to-date."; done;'

#aliases to tunnel to servo2 mongo
alias servo1Vir='ssh atreb@jump.onservo.com -L 27018:10.192.90.235:27017 -Nf'
alias servo1Ore='ssh atreb@jump.onservo.com -L 27018:10.198.73.114:27017 -Nf'
alias servo2betaCali='ssh atreb@jump2.onservo.com -L 27018:54.193.33.109:27017 -Nf'
alias servo2dj01Vir='ssh atreb@jump2.onservo.com -L 27018:52.0.113.165:27017 -Nf'
alias servo2dj01Ore='ssh atreb@jump2.onservo.com -L 27018:54.200.237.145:27017 -Nf'
alias servo2dj01Ohio='ssh atreb@jump2.onservo.com -L 27018:52.14.233.73:27017 -Nf'
alias servo2dj01Tokyo='ssh atreb@jump2.onservo.com -L 27018:54.249.79.147:27017 -Nf'
#The above tunnels runs in background. To stop the port forwarding do following to get the pid and kill it
alias killMongoTunnel='kill `lsof -ti :27018`'

#enable/disable hidden files/folders in finder
#alias unhideInFinder=`defaults write com.apple.finder AppleShowAllFiles TRUE`
#alias hideInFinfder=`defaults write com.apple.finder AppleShowAllFiles FALSE`

#docker cleanup aliases
alias docker-rm='docker rm -f $(docker ps -aq)'
alias docker-rmi='docker rmi -f $(docker images -q)'

#resinstall global npm packages and clean cache after node version change using n
#alias noderestart='npm uninstall -g n jsonlint supervisor nodemon js-beautify eslint-plugin-react eslint babel-eslint;npm cache clean --force;npm install -g n jsonlint supervisor nodemon js-beautify eslint-plugin-react eslint babel-eslint'
