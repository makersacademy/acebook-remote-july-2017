class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    # @friend = User.create(friend)
  end

end
