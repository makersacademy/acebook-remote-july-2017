class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    render 'users/show'
  end
end
