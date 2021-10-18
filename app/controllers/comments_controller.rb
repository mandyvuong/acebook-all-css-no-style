class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    # format.html { redirect_to @post, notice: 'Comment was successfully created.' }
    # redirect_to posts_url
    # redirect_to post_path(@post.id)
    # sleep(30)
    # puts 1
    # redirect_to post_path(params[:post_id])
    redirect_to post_path(@post.id)
    # redirect_to post_path(@post), notice: 'test run'
    # redirect_back(fallback_location: post_path(@post))
  end

  private
    def comment_params
      params.require(:comment).permit(:message)
    end
end
