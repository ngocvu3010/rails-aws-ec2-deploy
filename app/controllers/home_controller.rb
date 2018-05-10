class HomeController < ApplicationController
  def index
    @posts = Post.take(9)
  end
end
