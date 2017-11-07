#!/bin/bash
#required
Dockerfile
app.py
requirements.txt
docker-compose.yml
# build
docker build -t friendlyhello .
#run
docker run -p 4000:80 friendlyhello
#run background
docker run -d -p 4000:80 friendlyhello
#stop
docker container stop ea448f635976
#create repo account and login
docker login
#create repo in below format
docker tag image username/repository:tag
docker tag friendlyhello kenjiasato/get-started:part2
#push repo
docker push username/repository:tag
docker push kenjiasato/get-started:part2
#run
docker run -p 4000:80 kenjiasato/get-started:part2

#start swarm first
docker swarm init
#deploy service give app name getstartedlab
docker stack deploy -c docker-compose.yml getstartedlab
docker service ps <service>

# manager swarm
docker swarm init --advertise-addr <myvm1 ip>
#add manager to swarm
docker swarm join-token manager
#manager worker #given when creating manager
#check all nodes
docker node ls