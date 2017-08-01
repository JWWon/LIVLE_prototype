class StagesController < ApplicationController
  def home
    # DESC(역순) <-> ASC(원래) .order(created_at: :asc)
    @stages = Stage.paginate(page: params[:page], per_page: 8)
    respond_to do |format|
      format.html
      format.js { render 'stages/scroll_stage' }
    end
  end

  def watch
    set_stage
  end

  # stage db CRUD
  def edit_stage
    @stages = Stage.all
  end

  def create_stage
    @stage = Stage.create(title: params[:title], artist: params[:artist], user_id: params[:user_id], is_youtube: true, video_url: params[:video_url], count_like: params[:count_like], count_share: params[:count_share], count_view: params[:count_view])

    if @stage.save
      redirect_back(fallback_location: root_path)
    else
      render text: @stage.errors.messages
    end
  end

  def update_stage
    set_stage

    if @stage.update(title: params[:title], artist: params[:artist], user_id: params[:user_id], video_url: params[:video_url])
      redirect_back(fallback_location: root_path)
    else
      render text: @stage.errors.messages
    end
  end

  def destroy_stage
    set_stage

    if @stage.destroy
      redirect_back(fallback_location: root_path)
    else
      render text: @stage.errors.messages
    end
  end

  private
    def set_stage
      @stage = Stage.find_by(stage_token: params[:stage_token])
    end
end
