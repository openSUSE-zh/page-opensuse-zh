#!/bin/sh
date
git --git-dir=/home/bearchild/html-opensuse-zh/.git pull --force
git --git-dir=/home/bearchild/html-opensuse-zh/.git clean -fd 
git --git-dir=/home/bearchild/page-opensuse-zh/.git pull --force
git --git-dir=/home/bearchild/html-opensuse-zh/.git clean -fd 
rsync -av --exclude .git/ /home/bearchild/html-opensuse-zh/ /srv/www/vhosts/suse.org.cn
