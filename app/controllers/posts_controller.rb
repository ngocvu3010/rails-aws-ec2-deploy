class PostsController < ApplicationController

  def blog
    @posts = Post.blog
    render :index
  end

  def review_book
    @posts = Post.review_book
    render :index
  end

  def bun_story
    @posts = Post.bun_story
    render :index
  end

  def love_story
    @posts = Post.love_story
    render :index
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.not_by_id(params[:id]).sample(10)
    @comment = Comment.new
    @comments = @post.comments
  end
end
