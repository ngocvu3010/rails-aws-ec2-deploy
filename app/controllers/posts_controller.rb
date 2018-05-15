class PostsController < ApplicationController

  def blog
    @posts = Post.blog.page(params[:page]).per(12)
    render :index
  end

  def review_book
    @posts = Post.review_book.page(params[:page]).per(12)
    render :index
  end

  def bun_story
    @posts = Post.bun_story.page(params[:page]).per(12)
    render :index
  end

  def love_story
    @posts = Post.love_story.page(params[:page]).per(12)
    render :index
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.not_by_id(params[:id]).sample(10)
    @comment = Comment.new
    @comments = @post.comments
  end
end
