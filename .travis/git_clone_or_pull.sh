#!/bin/bash
#purpose: Clone or Pull Git Repository
# source: https://gist.github.com/nicferrier/2277987 
REPOSRC=$1
LOCALREPO=$2

# We do it this way so that we can abstract if from just git later on
LOCALREPO_VC_DIR=$LOCALREPO/.git

if [ ! -d $LOCALREPO_VC_DIR ]
then
    git clone $REPOSRC $LOCALREPO
else
    cd $LOCALREPO
    git pull $REPOSRC
fi

# End