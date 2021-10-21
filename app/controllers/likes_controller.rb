class LikesController < ApplicationController

    before_action :find_post
    before_action :find_like, only: [:destroy]

    def create
      @post.likes.create(user_id: session[:user_id]) if !already_liked?
      # Don't ask me why, but this works lol
      # this redirects back to the current page, doesn't matter what the fallback_location is
      # Although, in some condition it most likely does matter what the location is but there you go
      redirect_back fallback_location: posts_url
    end
    
    def destroy 
      @like.destroy if already_liked?
      redirect_back fallback_location: posts_url
    end 

    private

    def find_post
      @post = Post.find(params[:post_id])
    end

    def already_liked?
      Like.where(user_id: session[:user_id], post_id:
      params[:post_id]).exists?
    end

    def find_like
      @like = @post.likes.find(params[:id])
    end
end
