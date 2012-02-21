class UsersController < ApplicationController

  def index
  
  end

  def show
  
  end

  def edit
  
  end

  def update
  
  end

  def destroy
    # if this user has posts or comments, we should move the account into an inactive state rather than delete it outright
  end

  def comments
    # show the comments for the current user -- link to actual post#comment view for individual comments
  end
  
  def posts
    # show the posts for the current user -- link to actual post view for individual posts
  end
end
