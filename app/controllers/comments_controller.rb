class CommentsController < ApplicationController

  def index
    # must have logic to determine whether we're showing an individual user's comments

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

  def show
    # must have logic to determine whether we're showing an individual user's comment  
  end

  def edit

  end

  def new
  
  end

  def update
  
  end

  def destroy
  
  end

end
