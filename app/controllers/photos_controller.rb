class PhotosController < ApplicationController
  def index
    @photos = Photo.all.reverse
  end

  def new
    @photo = Photo.new
  end

  def create
    p params[:photo]
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to @photo, notice: 'Photo was successfully uploaded.'
    else
      render action: 'new'
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end
end
