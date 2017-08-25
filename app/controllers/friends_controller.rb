class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    @user = current_user
    @friend = User.find_by(user_id: @user.id)
    if UserFriend.between(@user.id, @friend.id).present?
      @user_friend = UserFriend.between(@user.id, @friend.id)
    else
      @user_friend = UserFriend.create({user_id: @user.id, friend_id: @friend.id})
    end

    redirect_to friends_path(@user_friend)
  end

end
