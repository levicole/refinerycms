---
layout: tutorial
title: Using SASS in your themes
description: 
  [Insert description here]
category: intermediate
author: nrhammond
---

To use sass templates with your theme you just need to add the location of your theme to the SASS plugin configuration.

Create the "sass" directory within your theme's stylesheets directory, usually in:

    RAILS_ROOT + "/themes/mytheme/stylesheets"

In your config/application.rb or config/environment.rb add this line
{% highlight ruby %}
Sass::Plugin.add_template_location(RAILS_ROOT + "/themes/my_theme/stylesheets/sass", 
                                   RAILS_ROOT + "/themes/my_theme/stylesheets")
{% endhighlight %}

This works with version 3.0.6 of HAML. The method "add_template_location" is fairly new and didn't exist in older versions.
