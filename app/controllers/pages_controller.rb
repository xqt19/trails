class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def index
    @trails = Trail.where(user_id: current_user.id)
    @trails = @trails.order(name: :asc) if params[:sort_by] == "name"
    @trails = @trails.order(start_date: :asc) if params[:sort_by] == "date"
    @trails_count = @trails.count
    @collabs = Collab.where(user_id: current_user.id)
    @collabs_count = @collabs.count
    respond_to do |format|
      format.html { render 'pages/index' }
      format.js
    end
  end
end
