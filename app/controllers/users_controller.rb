class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @posts = @user.posts
    p @posts
    render 'posts/index'
  end
end
