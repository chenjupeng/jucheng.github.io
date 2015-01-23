---
layout: post
title: "jekyll install"
date: 2015-1-2
categories: skill
---
windows安装jekyll最后的步骤

<!-- more -->
1、在windows下安装jekyll是，使用`gem install jekyll`时安装不了（又是GFW吧。。）最后在[这里](https://github.com/jekyll/jekyll/issues/1409 "https://github.com/jekyll/jekyll/issues/1409")找到了解决方法

----------
>gem sources --remove http://rubygems.org/
>
>gem sources -a http://ruby.taobao.org/
>
>gem sources -l
>
>gem install rack 
>
>gem install jekyll