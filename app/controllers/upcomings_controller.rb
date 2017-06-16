class UpcomingsController < ApplicationController
  def home
    # DESC(역순) <-> ASC(원래) .order(created_at: :asc)
    @upcomings = Upcoming.paginate(page: params[:page], per_page: 15)
    respond_to do |format|
      format.html
      format.js { render 'upcomings/scroll_upcoming' }
    end
  end

  def watch
    set_upcoming
  end

  # upcoming db CRUD
  def edit_upcoming
    @upcomings = Upcoming.all
  end

  def create_upcoming
    @upcoming = Upcoming.create(title: params[:title], artist: params[:artist], is_youtube: true, video_url: params[:video_url], d_day: params[:d_day], place: params[:place], ticket_link: params[:ticket_link])

    if @upcoming.save
      redirect_back(fallback_location: root_path)
    else
      render text: @upcoming.errors.message
    end
  end

  def update_upcoming
    set_upcoming

    if @upcoming.update(title: params[:title], artist: params[:artist], video_url: params[:video_url], d_day: params[:d_day], place: params[:place], ticket_link: params[:ticket_link])
      redirect_back(fallback_location: root_path)
    else
      render text: @upcoming.errors.message
    end
  end

  def destroy_upcoming
    set_upcoming

    if @upcoming.destroy
      redirect_back(fallback_location: root_path)
    else
      render text: @upcoming.errors.message
    end
  end

  private
    def set_upcoming
      @upcoming = Upcoming.find_by(upcoming_token: params[:upcoming_token])
    end
end
