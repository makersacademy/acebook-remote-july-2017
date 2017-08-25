class LikesController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
  end

  def create
    @like = Like.create
    @like.post = Post.find(params[:post_id])
    @like.user = User.find(current_user.id)
    @like.save
    redirect_to posts_url
  end

end
