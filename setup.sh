#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

ln -s $DIR/git-svnbackup /usr/local/bin && echo "git-svnbackup installed"
ln -s $DIR/git-svngetbackup /usr/local/bin && echo "git-svngetbackup installed"
ln -s $DIR/git-svnbranch /usr/local/bin && echo "git-svnbranch installed"

