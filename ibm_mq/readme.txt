https://blog.jeroenmaes.eu/2020/01/run-ibm-mq-in-docker-for-local-development/

Step 1 - Run MQ with default config

# get image
docker pull ibmcom/mq

# create volume to sore settings and messages
docker volume create pivqmdata

# run container without default mq_dev config and attach the new volume
docker run --name=ibmmq --env LICENSE=accept --env MQ_QMGR_NAME=PIVQM --env MQ_DEV=false --publish 1414:1414 --publish 9443:9443 --detach --volume pivqmdata:/mnt/mqm ibmcom/mq

# login to web console
https://localhost:9443/
u:admin	
p:passw0rd


Step 2 - Disable security
The default configuration has security configured out of the box. And that is a good thing! But it might be a bit annoying for local development.
Connect to your container using the cli. Use runmqsc to disable security and create a new channel that runs under the mqm user.

docker exec -it ibmmq /bin/bash
runmqsc

ALTER QMGR CHLAUTH (DISABLED)
ALTER QMGR CONNAUTH(' ')
REFRESH SECURITY TYPE(CONNAUTH)
define channel(MQREADER.DEF.SVRCONN) chltype(SVRCONN) trptype(TCP) mcauser('mqm')