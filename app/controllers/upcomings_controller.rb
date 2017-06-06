class UpcomingsController < ApplicationController
  def home
    # DESC(역순) <-> ASC(원래) .order(created_at: :asc)
    @upcomings = Upcoming.paginate(page: params[:page])
    respond_to do |format|
      format.html
      format.js { render 'upcomings/scroll_upcoming' }
    end
  end

  def watch
    set_upcoming
  end

  def add_upcoming
  end

  # upcoming db CREATE
  def create_upcoming
    @upcoming = Upcoming.create(title: params[:title], artist: params[:artist], youtube_id: params[:youtube_id], d_day: params[:d_day], place: params[:place], ticket_link: params[:ticket_link])

    if @upcoming.save
      redirect_back(fallback_location: root_path)
    else
      render text: @upcoming.errors.message
    end
  end

  private
    def set_upcoming
      @upcoming = Upcoming.find(params[:upcoming_id])
    end
end
