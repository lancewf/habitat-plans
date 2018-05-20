exit
start
exit
start
status
vi /hab/user/redis/config/user.toml 
exit
start
exit
start
exit
start
start
exit
start
vi /hab/svc/redis/config/redis.config 
netstat -an | grep LISTEN
exit
start
netstat -an | grep LISTEN
exit
start
netstat -an | grep LISTEN
exit
start
netstat -an | grep LISTEN
netstat -an | grep LISTE
rm results/*
build
hab pkg upload results/lancewf-redis-3.2.4-20180520181310-x86_64-linux.hart 
exit
