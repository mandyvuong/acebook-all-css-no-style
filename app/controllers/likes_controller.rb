class LikesController < ApplicationController

    before_action :find_post
    
    def create
      puts "current post: #{@post}"
      puts "User_id: #{session[:user_id]}"
      @post.likes.create(user_id: session[:user_id])
      redirect_to post_path(@post)
    end

    private

    def find_post
      @post = Post.find(params[:post_id])
    end

end
