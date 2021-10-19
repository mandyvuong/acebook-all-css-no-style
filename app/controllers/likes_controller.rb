class LikesController < ApplicationController
  before_action :find_post
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
  def create
    find_post().likes.create(user_id: @current_user)
    redirect_to post_path(@post.id)
  end
  private
  def find_post
    @post = Post.find(params[:post_id])
  end
end
