class ThemeGenerator < Rails::Generator::Base
  default_options :haml => false

  def manifest
    record do |m|
      m.directory "themes"
      m.directory "themes/#{theme_name}"
      m.directory "themes/#{theme_name}/stylesheets"
      m.directory "themes/#{theme_name}/javascripts"
      m.file "stylesheets/application.css", "themes/#{theme_name}/stylesheets/application.css"
      m.directory "themes/#{theme_name}/views"
      m.directory "themes/#{theme_name}/views/layouts"
      m.file "views/layouts/application.html.#{template_extension}", "themes/#{theme_name}/views/layouts/application.html.#{template_extension}"
      m.directory "themes/#{theme_name}/views/pages"
      m.file "views/pages/index.html.#{template_extension}", "themes/#{theme_name}/views/pages/index.html.#{template_extension}"
      m.file "views/pages/index.html.#{template_extension}", "themes/#{theme_name}/views/pages/show.html.#{template_extension}"
      m.file 'LICENSE', "themes/#{theme_name}/LICENSE"
      m.file 'README', "themes/#{theme_name}/README"
    end
  end

  def theme_name
    @args[0]
  end

  def template_extension
    options[:haml] ? 'haml' : 'erb'
  end

  def add_options!(opt)
    opt.separator ''
    opt.separator 'Options:'
    opt.on("-h", "--haml", "Generate HAML templates instead of erb") { |v| options[:haml] = true }
  end
end
