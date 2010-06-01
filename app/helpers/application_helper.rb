# Methods added to this helper will be available to all templates in the application.

# You can extend refinery with your own functions here and they will likely not get overriden in an update.
module ApplicationHelper
  include Refinery::ApplicationHelper # leave this line in to include all of Refinery's core helper methods.
  
  # Render the menu
  def render_menu(args = {})
    args = {
      :surrounding => "<ul id='menu' class='menu clearfix'>",
      :menu_item => "<li>",
      :surrounding_submenu => "<ul class='clearfix'>",
      :submenu_item => "<li>",
      :first_class => "first",
      :last_class => "last",
      :first_submenu_class => "first",
      :last_submenu_class => "last",
      :selected_class => "selected",
      :hide_children => RefinerySetting.find_or_set(:menu_hide_children, false),
      :collection => @menu_pages
      #...
    }.merge!(args)
    
    menu = ""
    menu << args[:surrounding] + "\n"
    
    
    
    menu << closing_tag(args[:surrounding]) + "\n"
    
    menu
  end
  
  protected
  
  def closing_tag(opening_tag)
    "</" + opening_tag.match(/<([^\s]*)[^>]*>/)[1] + ">"
  end
  
end

=begin

<% cache(:action_suffix => RefinerySetting.find_or_set(:refinery_menu_cache_action_suffix, "site_menu")) do %>
  <ul id='<%= dom_id ||= "menu" %>' class='menu clearfix'>
    <%= render :partial => "/shared/menu_branch", :collection => (collection ||= @menu_pages), :locals => {
      :hide_children => RefinerySetting.find_or_set(:menu_hide_children, false),
      :sibling_count => (collection ||= @menu_pages).size-1
    } -%>
  </ul>
<% end %>

<%
  css = []
  css << "selected" if selected_page?(menu_branch) or descendant_page_selected?(menu_branch)
  css << "first" if menu_branch_counter == 0
  css << "last" if menu_branch_counter == (sibling_count ||= menu_branch.shown_siblings.size)
  domid = "item_#{menu_branch_counter}" unless menu_branch.parent_id.present? or menu_branch.title.blank?
-%>
<% if menu_branch.in_menu? %>
  <li<%= " class='#{css.join(' ')}'" if css.present? -%><%= " id='#{domid}'" if domid.present? -%>>
    <%= link_to menu_branch.title, menu_branch.url %>
    <%
      unless hide_children or
        menu_branch.parent_id.present? or
        (children = menu_branch.children.collect{|c| c if c.in_menu?}.compact).empty?
    -%>
      <ul class='clearfix'>
        <%= render :partial => "/shared/menu_branch",
                    :collection => children,
                    :locals => {:hide_children => hide_children, :sibling_count => children.size-1} -%>
      </ul>
    <% end -%>
  </li>
<% end -%>

=end

