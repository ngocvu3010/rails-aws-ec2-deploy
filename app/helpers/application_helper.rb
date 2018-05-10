module ApplicationHelper
  def active_class action
    "active" if params[:controller] == action
  end
end
