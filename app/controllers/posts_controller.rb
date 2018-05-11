class PostsController < ApplicationController
  def index
    @posts = Post.send(params[:type])
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.not_by_id(params[:id]).sample(10)
    @comment = Comment.new
    @comments = @post.comments
  end
end
