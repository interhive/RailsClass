class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    
    respond_to do |format|
      format.html
    end
  end

  def create
    @post    = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])

    if @comment.save
      redirect_to post_path(@post)
    else
      flash[:error] = "We were unable to process or save your comment"
      redirect_to post_path(@post)
    end
  end

end
