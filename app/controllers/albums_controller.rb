class AlbumsController < ApplicationController

  def new
  end

  def create
    @album = Album.new(album_params)
    @album.save
    redirect_to @album
  end

  def show
    @album = Album.find(params[:id])
  end

  private
  def album_params
    params.require(:album).permit(:title, :text)
  end

end
