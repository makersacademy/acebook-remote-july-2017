class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    @user1 = current_user
    @user2 = User.find_by(user_id: @user.id  )
    # @friend = User.create(friend)
  end

end
