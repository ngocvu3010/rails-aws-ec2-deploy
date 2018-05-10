class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.not_by_id(params[:id]).sample(10)
  end
end
