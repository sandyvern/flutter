# The pages controller contains all of the code for any inside of /pages
class PagesController < ApplicationController
  
  # back-end code for page/index
  def index
  end
  
  # back-end code for page/home
  def home
    @posts = Post.all
  end
  
  # back-end code for page/profile
  def profile
    # grab the username from the URL as :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else 
      # redirect to 404 (root for now)
      redirect_to root_path, :notice=> "User not found!" 
    end
     @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
     @newPost = Post.new
  end
  
  # back-end code for page/explore
  def explore
    @posts = Post.all
  end

end
