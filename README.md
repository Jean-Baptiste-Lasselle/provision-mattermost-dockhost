# Recette de provision de mattermost, cible Hôte Docker
Recette de provision de mattermost dans un contneur docker, pour production.
Recette de provision documentée par l'architecture, et les guides d'exploitations


# Utilisation

Exécutez : 
```
export PROVISIONING_HOME=$(pwd)/provision-mattermost-dockhost 
export GIT_SSH_COMMAND=' -i ~/.ssh/id_rsa'
mkdir -p $PROVISIONING_HOME
cd $PROVISIONING_HOME
git clone "git@wgit.bosstek.net:jb.lasselle/provision-mattermost-dockhost" . 
chmod +x ./operations.sh
```
En une seule ligne :

```
export PROVISIONING_HOME=$(pwd)/provision-mattermost-dockhost && export GIT_SSH_COMMAND=' -i ~/.ssh/id_rsa' && mkdir -p $PROVISIONING_HOME && cd $PROVISIONING_HOME && git clone "git@wgit.bosstek.net:jb.lasselle/provision-mattermost-dockhost" . && chmod +x ./operations.sh 
```
# Architecture

# nota bene

```
#!/bin/bash

# parce qu'il faut bien commencer par quelque chose : 
# - cf. [https://docs.mattermost.com/install/docker-local-machine.html#one-line-docker-install]

docker run --name mattermost-preview -d --publish 8065:8065 --add-host dockerhost:127.0.0.1 mattermost/mattermost-preview
```

