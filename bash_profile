export N_PREFIX="/Users/atreb/DEV/nodejs"
export PATH=$N_PREFIX/bin:$PATH

#for making use of brew vim from /usr/local/bin instead of system vim from /usr/bin if /usr/local/bin does not take precedence over /usr/bin
#export PATH="/usr/local/bin:$PATH"

#supervisor shortcut
alias super-start='supervisor -w repository -e "js|mu|json" app.js'
alias npm-start='supervisor -w repository -e "js|mu|json" lib/*.js'
alias sstart='supervisor -w . -e "js|mu|json|jade" server.js'

#shortcut paths
alias gotonode='cd ~/DEV/WORKSPACE/node-apps'

# Recursively execute `git status` on each repo
alias gstr='for i in ./*; do echo "$i" && git --git-dir=$i/.git --work-tree=$i status | grep -v "# On branch *" | grep -v "nothing *"; done;'
# Recursively execute `git pull` on each repo
alias glr='for i in ./*; do echo "$i" && git --git-dir=$i/.git fetch && git --git-dir=$i/.git --work-tree=$i merge origin/master | grep -v "Already up-to-date."; done;'

#mongodb start,stop and restart scripts
alias start-mongodb='/Users/atreb/DEV/mongodb/bin/mongod --fork --smallfiles --logpath /Users/atreb/DEV/mongodb-data/logs/mongo.log --dbpath /Users/atreb/DEV/mongodb-data/db'
alias stop-mongodb='kill -15 `pgrep mongod`'
alias restart-mongodb='stop-mongodb; start-mongodb'
alias mongo-connect='/Users/atreb/DEV/mongodb/bin/mongo'

#tomcat6 start,stop and restart scripts
alias start-tomcat='~/DEV/tomcat6/bin/startup.sh'
alias stop-tomcat='~/DEV/tomcat6/bin/shutdown.sh'

#mongodb testrepl scripts using mongo installed from brew with ssl enabled
alias start-pri='mongod --config /Users/atreb/DEV/mongodb-data-repl/pri/mongod.conf'
alias start-sec='mongod --config /Users/atreb/DEV/mongodb-data-repl/sec/mongod.conf'
alias start-arb='mongod --config /Users/atreb/DEV/mongodb-data-repl/arb/mongod.conf'
alias stop-pri='kill -15 `cat /Users/atreb/DEV/mongodb-data-repl/pri.pid`'
alias stop-sec='kill -15 `cat /Users/atreb/DEV/mongodb-data-repl/sec.pid`'
alias stop-arb='kill -15 `cat /Users/atreb/DEV/mongodb-data-repl/arb.pid`'
alias start-all-repl='start-pri; start-sec; start-arb'
alias stop-all-repl='stop-pri; stop-sec; stop-arb'

#redis
alias start-redis='/Users/atreb/DEV/redis-2.8.9/src/redis-server'
