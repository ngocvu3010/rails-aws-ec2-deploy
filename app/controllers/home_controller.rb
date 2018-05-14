class HomeController < ApplicationController
  def index
    @posts = Post.take(9)
    @message = Message.new
  end
end
