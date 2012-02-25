class PostsController < ApplicationController

  def index
    # must have logic to determine whether we're showing an individual user's posts
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new

    # must have logic to determine whether we're showing an individual user's post
  end

  def edit
    @post = Post.find(params[:id])  
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_path, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    # not sure if this is the 'right way' but it works...
    @post = Post.find(params[:id])
    @comment = Comment.new(params[:post][:comments_attributes])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path, notice: 'Comment was successfully added.' }
        format.json { head :no_content }
      else
        format.html { render action: "show" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  
  end

end
