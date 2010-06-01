class Admin::RefineryCoreController < Admin::BaseController

  def update_plugin_positions
    params[:menu].each do |plugin_title|
      if (plugin = current_user.plugins.find_by_title(plugin_title))
        plugin.update_attribute(:position, params[:menu].index(plugin_title))
      end
    end
    render :nothing => true
  end

  def render_flash_messages
    render :partial => "/shared/message"
  end

end
