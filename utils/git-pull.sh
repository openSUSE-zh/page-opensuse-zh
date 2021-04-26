#!/bin/sh

date
git --git-dir=/home/bearchild/html-opensuse-zh/.git --work-tree=/home/bearchild/html-opensuse-zh/ pull --force
git --git-dir=/home/bearchild/html-opensuse-zh/.git --work-tree=/home/bearchild/html-opensuse-zh/ reset --hard origin/gh-pages
git --git-dir=/home/bearchild/page-opensuse-zh/.git --work-tree=/home/bearchild/page-opensuse-zh/ pull --force
git --git-dir=/home/bearchild/page-opensuse-zh/.git --work-tree=/home/bearchild/page-opensuse-zh/ reset --hard origin/main
rsync -av --exclude .git/ /home/bearchild/html-opensuse-zh/ /srv/www/vhosts/suse.org.cn
