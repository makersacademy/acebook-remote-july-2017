class AlbumsController < ApplicationController

  def new
  end

  def create
    @album = Album.new
    @album.save
    redirect_to @album
  end

  def show
    @album = Album.find(params[:id])
  end

end
