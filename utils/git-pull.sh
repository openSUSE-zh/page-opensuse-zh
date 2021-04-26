#!/bin/sh

git --git-dir=/home/bearchild/html-opensuse-zh/ pull --force
git --git-dir=/home/bearchild/page-opensuse-zh/ pull --force
rsync -av --exclude .git/ /home/bearchild/html-opensuse-zh/ /srv/www/vhosts/suse.org.cn
