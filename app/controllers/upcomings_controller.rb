class UpcomingsController < ApplicationController
  def home
    @upcomings = Upcoming.all
  end

  def watch
    set_upcoming
  end

  def add_upcoming
  end

  # upcoming db CREATE
  def create_upcoming
    @upcoming = Upcoming.create(title: params[:title], artist: params[:artist], youtube_id: params[:youtube_id], d_day: params[:d_day], place: params[:place], ticket_link: params[:ticket_link])
    @upcoming.save
    redirect_back(fallback_location: root_path)
  end

  private
    def set_upcoming
      @upcoming = Upcoming.find(params[:upcoming_id])
    end
end
