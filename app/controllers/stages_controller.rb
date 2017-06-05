class StagesController < ApplicationController
  def home
    # 랜더링은 다 되는데 뷰가 겹쳐보임..!
    @stages = Stage.paginate(page: params[:page]).order('created_at DESC')
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
