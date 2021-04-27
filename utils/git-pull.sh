#!/bin/bash

echo [ $(date +%Y-%m-%d\ %H:%M:%S) ] 拉取开始
echo [ $(date +%Y-%m-%d\ %H:%M:%S) ] 拉取 HTML
git --git-dir=/home/bearchild/html-opensuse-zh/.git --work-tree=/home/bearchild/html-opensuse-zh/ pull --force
git --git-dir=/home/bearchild/html-opensuse-zh/.git --work-tree=/home/bearchild/html-opensuse-zh/ reset --hard origin/gh-pages
echo [ $(date +%Y-%m-%d\ %H:%M:%S) ] 拉取 Page 备份
git --git-dir=/home/bearchild/page-opensuse-zh/.git --work-tree=/home/bearchild/page-opensuse-zh/ pull --force
git --git-dir=/home/bearchild/page-opensuse-zh/.git --work-tree=/home/bearchild/page-opensuse-zh/ reset --hard origin/main
echo [ $(date +%Y-%m-%d\ %H:%M:%S) ] 同步到 vhosts
rsync -av --exclude .git/ /home/bearchild/html-opensuse-zh/ /srv/www/vhosts/suse.org.cn
