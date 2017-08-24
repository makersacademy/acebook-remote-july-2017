class LikesController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
  end

  def create
    p 'fired'
    @post = Post.find(params[:post_id])
    @post.likes.create
    # redirect_to posts_url
  end

end
