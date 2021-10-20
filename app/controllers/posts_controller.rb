class PostsController < ApplicationController
  def new
    redirect_to root_path if !session[:user_id] 
    @post = Post.new
  end

  def create
    redirect_to root_path if !session[:user_id]
    @user = User.find(session[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to posts_url
  end

  def index
    redirect_to root_path if !session[:user_id]
    @posts = Post.all
  end

  def show
    redirect_to root_path if !session[:user_id]
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:message, :image, :user_id)
  end
end
