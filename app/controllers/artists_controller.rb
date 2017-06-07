class ArtistsController < ApplicationController
  def home
    @artists = Artist.all
  end

  def list
    @artist = Artist.find(params[:artist_id])
    @lists = Stage.where(artist: @artist.artist)
  end

  def watch
    @list = Stage.find(params[:list_id])
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
