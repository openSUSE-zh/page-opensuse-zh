# openSUSE 中文社区主页贡献指南

## 文章规范

1. 请遵守我们社区对文章质量的要求：

    * “先预览，后提交”：

        你不需要在本地构建网站来预览，但至少预览一下你的 Markdown 文件
    * 使用简体中文与中文标点符号。
    * 空格规范：

        英文单词前后各有一个空格。比如<空格>China<空格>。如果写整句英文，英文标点后还要多一个空格，这样才能看的清楚。比如 Hi,<空格>I am Han Meimei.
    * 不要写错 openSUSE。
    
2. 我们的文章分类（即 categories）与网站文章的路径相关联，所以请不要随意指定，目前存在的分类有：

    * 更新通告
    * 技术文章
    * 社区新闻


## 怎么发布文章？

1. 在`_posts`目录下创建 Markdown 文件。 文件名应当遵循 `yyyy-mm-dd-title.md` 格式。例如, `2021-04-22-新帖子.md`. 你可以点击[这个链接](https://github.com/openSUSE-zh/page-opensuse-zh/new/main/?filename=_posts/2020-02-27-my-first-post.md) 开始，别忘了修改文件名。
    
2. 请附带一张大小至少为 1153x505px 的图像. 所有文章相关的附件，包括图片、音频等内容，应该放在 `/assets/posts/yyyy-mm` 目录下，也就是用月份区分文件夹。 例如: `/assets/posts/2021-04/新帖子-图片.png`。如果你不想单独找个图片，你可以用`/assets/posts/misc/`这个[文件夹](https://github.com/openSUSE-zh/page-opensuse-zh/tree/gh-pages/assets/posts/misc)下的一些预置图片。如果你连选一个都不想，就用`/assets/posts/misc/bg-contribution.svg`。记住图片链接不能漏掉最前放表示根目录的斜杠。
    
3. 写内容，你可以遵循下列模板：
    ```
    ---
    author: Your Name
    date: 2021-04-22 07:30:00 +0800
    layout: post
    license: CC-BY-SA-3.0
    title: 我的一个文章
    image: /assets/posts/2021-04/新帖子-图片.png #/assets/posts/misc/bg-contribution.svg
    categories:
    - 社区新闻
    tags:
    - 网站
    - 社区
    ---

    用MD与HTML写你的文章内容
    ```

4. 保存文件然后创建一个PR。 

5. 我们使用 Github Actions 自动构建网站，从你的更改进入代码库到出现在网站上可能历时高达40分钟。

## 如何在本地构建?

你需要安装如下软件包：`rubygem(bundler)` `ruby-devel`.

```bash
bundle install --path vendor/bundle
bundle exec jekyll build
```

## 如何在本地预览?

```bash
bundle install --path vendor/bundle
bundle exec jekyll serve
```

用浏览器访问 <http://127.0.0.1:4000/>


## 如何修改主题?

如果 [jekyll-theme-opensue-zh](https://github.com/openSUSE-zh/jekyll-theme-opensuse-zh) 有新版本，你需要删除 [Gemfile.lock] 并重新运行` bundle install --path vendor/bundle `。