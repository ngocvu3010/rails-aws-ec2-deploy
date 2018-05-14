module ApplicationHelper
  def active_class controller, action = nil
    "active" if (params[:action] == action && params[:controller] == "posts") ||
      (params[:controller] == controller && controller != "posts")
  end
end
