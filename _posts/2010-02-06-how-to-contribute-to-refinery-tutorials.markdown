---
layout: tutorial
title: How to Contribute to Refinery Tutorials
category: tutorialsite
author: Steven Heidel
---

It's easy to contribute to these Refinery tutorials!

## Forking the tutorials

* Login to github and fork the resolve/refinerycms project
* Create a local copy on your computer
* Sort out branches so that you are actively working on the 'gh-pages' branch

## Create a tutorial

* Take a look in the "\_posts" folder, this is where all tutorials are located
* Name your new tutorial appropriately using this guide:
    yyyy-mm-dd-name-of-the-tutorial.markdown
* Add the appropriate metadata at the front of the tutorial
    {% highlight YAML %}
    --
    layout: tutorial
    title: How to Contribute to Refinery Tutorials
    category: tutorials
    author: Steven Heidel
    --
    {% endhighlight %}

## Write the tutorial

* Write your tutorial using markdown
* You can surround your code with 
    { % highlight ruby % } 
    Code goes here
    { % endhighlight % }
* Take a look at other examples in the "\_posts" folder

## Submit the tutorial

* Test it out by installing and running jekyll
    jekyll --server
* Make a pull request describing your new tutorial

### Thank you for helping out with refinery!
