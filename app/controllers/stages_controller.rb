class StagesController < ApplicationController
  def home
    # DESC(역순) <-> ASC(원래) .order(created_at: :asc)
    @stages = Stage.paginate(page: params[:page], per_page: 15)
    respond_to do |format|
      format.html
      format.js { render 'stages/scroll_stage' }
    end
  end

  def watch
    set_stage
  end

  def add_stage
  end

  # stage db CREATE
  def create_stage
    @stage = Stage.create(title: params[:title], artist: params[:artist], user_id: params[:user_id], youtube_id: params[:youtube_id], count_like: params[:count_like], count_share: params[:count_share], count_view: params[:count_view])

    if @stage.save
      redirect_back(fallback_location: root_path)
    else
      render text: @stage.errors.messages
    end
  end

  private
  def set_stage
    @stage = Stage.find(params[:stage_id])
  end
end
