class Admin::PostsController < ApplicationController
  layout "layouts/admin/admin"
  before_action :load_post, only: [:edit, :update, :destroy]

  def index
    @posts = Post.page(params[:page]).per(10)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to admin_posts_path
    else
      render :new
    end
  end


  def update
    if @post.update_attributes post_params
      redirect_to admin_posts_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category)
  end

  def load_post
    @post = Post.find params[:id]
  end
end
