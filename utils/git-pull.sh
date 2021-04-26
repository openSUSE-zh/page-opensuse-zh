#!/bin/sh

date
git --git-dir=/home/bearchild/html-opensuse-zh/.git --work-tree=/home/bearchild/html-opensuse-zh/ pull --branch=gh-pages --force
git --git-dir=/home/bearchild/html-opensuse-zh/.git --work-tree=/home/bearchild/html-opensuse-zh/ checkout gh-pages --force
git --git-dir=/home/bearchild/html-opensuse-zh/.git --work-tree=/home/bearchild/html-opensuse-zh/ clean -fd 
git --git-dir=/home/bearchild/page-opensuse-zh/.git --work-tree=/home/bearchild/page-opensuse-zh/ pull --force
git --git-dir=/home/bearchild/page-opensuse-zh/.git --work-tree=/home/bearchild/page-opensuse-zh/ checkout main --force
git --git-dir=/home/bearchild/page-opensuse-zh/.git --work-tree=/home/bearchild/page-opensuse-zh/ clean -fd 
rsync -av --exclude .git/ /home/bearchild/html-opensuse-zh/ /srv/www/vhosts/suse.org.cn
