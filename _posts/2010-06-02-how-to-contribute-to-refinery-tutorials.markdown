---
layout: tutorial
title: How To Contribute to Refinery Tutorials
description: 
  Learn how to contribute your own refinerycms tutorial to this site and help 
  make refinerycms usable for all
category: beginner
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
{% highlight text %}
yyyy-mm-dd-name-of-the-tutorial.markdown
{% endhighlight %}
* Add the appropriate metadata at the front of the tutorial
{% highlight yaml %}
---
layout: tutorial
title: How To Contribute to Refinery Tutorials
description: 
  Learn how to contribute your own refinerycms tutorial to this site and help 
  make refinerycms usable for all
category: beginner
author: Steven Heidel
---
{% endhighlight %}

## Write the tutorial

* Write your tutorial using markdown
* You can surround your code with 
{% highlight text %}
{ % highlight ruby % } 
Make sure you remove the space between { and %
{ % endhighlight % }
{% endhighlight %}
* Take a look at other examples in the "\_posts" folder

## Submit the tutorial

* Test it out by installing and running jekyll
{% highlight bash %}
jekyll --server
{% endhighlight %}
* Make a pull request describing your new tutorial

### Thank you for helping out with refinery!
