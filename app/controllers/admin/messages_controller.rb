class Admin::MessagesController < ApplicationController
  layout "layouts/admin/admin"

  def index
    @messages = Message.all
  end
end
