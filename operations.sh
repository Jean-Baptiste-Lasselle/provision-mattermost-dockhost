#!/bin/bash

# parce qu'il faut bien commencer par quelque chose : 
# - cf. [https://docs.mattermost.com/install/docker-local-machine.html#one-line-docker-install]

docker run --name mattermost-preview -d --publish 8065:8065 --add-host dockerhost:127.0.0.1 mattermost/mattermost-preview
