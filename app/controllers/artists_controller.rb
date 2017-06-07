class ArtistsController < ApplicationController
  def home
    @artists = Artist.all
  end

  def list
  end

  def add_artist
  end

  def upload_image
    @artist = Artist.create(artist: params[:artist], image: params[:image])

    if @artist.save
      redirect_back(fallback_location: root_path)
    else
      render text: @artist.errors.messages
    end
  end
end
