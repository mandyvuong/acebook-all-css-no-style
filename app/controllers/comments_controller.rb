class CommentsController < ApplicationController

  before_action :find_post

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user_id: session[:user_id]))
    redirect_to post_path(@post.id)
  end

  private
    def comment_params
      params.require(:comment).permit(:message)
    end
end
