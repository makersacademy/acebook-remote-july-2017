class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all.reverse
  end
end
