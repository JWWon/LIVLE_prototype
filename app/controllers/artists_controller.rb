class ArtistsController < ApplicationController
  def home
    @artists = Artist.paginate(page: params[:page], per_page: 24)
    respond_to do |format|
      format.html
      format.js { render 'artists/scroll_artist' }
    end
  end

  def list
    set_artist
    @lists = Stage.where(artist: @artist.artist)
  end

  def edit_artist
    @artists = Artist.all
  end

  # Artist CRUD
  def upload_image
    @artist = Artist.create(artist: params[:artist], image: params[:image])

    if @artist.save
      redirect_back(fallback_location: root_path)
    else
      render text: @artist.errors.messages
    end
  end
  def update_artist
    set_artist

    if @artist.update(artist: params[:artist], image: params[:image])
      redirect_back(fallback_location: root_path)
    else
      render text: @stage.errors.messages
    end
  end
  def destroy_artist
    set_artist

    if @artist.destroy
      redirect_back(fallback_location: root_path)
    else
      render text: @stage.errors.messages
    end
  end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end
end
