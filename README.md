# openSUSE 中文社区主页

## 什么样的文章可以发在这里？

openSUSE 中文社区主页是给社区提供新闻与公告的页面。以下内容应当及时发布：

* 需要用户手动介入的系统更新或者严重BUG。比如：风滚草的某个快照引入导致特定硬件无法开机的BUG。

我们鼓励发布符合以下要求的文章：

* 有关发行版中官方软件包的文章。例如：Gnome 版本更新。

* 翻译 news.opensuse.org 的内容。

* 适量关于其他开源项目的人事物的文章。

* 指南或教程。（你也可以搬到 Wiki 上）

下列信息不适合放在这里：

* 关于呼吁社区成员进行某种行动的内容


## 怎么发布文章？

1. 在`_posts`目录下创建 Markdown 文件。 文件名应当遵循 `yyyy-mm-dd-title.md` 格式。例如, `2021-04-22-新帖子.md`. 你可以点击[这个链接](https://github.com/openSUSE-zh/page-opensuse-zh/new/main/?filename=_posts/2020-02-27-my-first-post.md) 开始，别忘了修改文件名。
    
2. 请附带一张大小至少为 1153x505px 的图像. 所有文章相关的附件，包括图片、音频等内容，应该放在 `/assets/posts/yyyy-mm-dd` 目录下. 例如: `/assets/posts/2021-04-22/新帖子-图片.png`. 
    
3. 写内容，你可以遵循下列模板：
    ```
    ---
    author: Nianqing Yao
    date: 2021-04-22 07:30:00 +0800
    layout: post
    license: CC-BY-SA-3.0
    title: 我的一个文章
    image: /assets/posts/2021-04-22/新帖子-图片.png
    categories:
    - 公告
    tags:
    - 网站
    - 社区
    ---

    用MD与HTML写你的文章内容

    ```

4. 保存文件然后创建一个PR。 

## 如何构建?

你需要安装如下软件包：``'rubygem(bundler)' ruby-devel``.
```bash
bundle install --path vendor/bundle
bundle exec jekyll build
```

Resulting site will be in `_site` directory.

## 如何在本地预览?

```bash
bundle install --path vendor/bundle
bundle exec jekyll serve
```

用浏览器访问 <http://127.0.0.1:4000/>


## 如何修改主题?

如果 [openSUSE jekyll-theme-opensue-zh](https://github.com/openSUSE/jekyll-theme) 有新版本，你需要删除 [Gemfile.lock] 并重新运行` bundle install --path vendor/bundle `。