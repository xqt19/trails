class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def index
    @trails = Trail.where(user_id: current_user.id)
    @trails = @trails.order(name: :asc) if params[:sort_by] == "name"
    @trails = @trails.order(start_date: :asc) if params[:sort_by] == "date"
    @trails = [] if params[:sort_by] == "hide"
    @trails_count = @trails.count
    @collabs = Collab.where(user_id: current_user.id)
    @collabs_count = @collabs.count
    @collabtrails = []
    @collabs.each { |collab| @collabtrails << collab.trail }
    respond_to do |format|
      format.html { render 'pages/index' }
      format.js
    end
  end

  def sortcollab
    @collabs = Collab.where(user_id: current_user.id)
    @collabtrails = []
    @collabs.each { |collab| @collabtrails << collab.trail }
    @collabtrails = @collabtrails.sort_by! { |trail| trail.name } if params[:sort_by] == "name"
    @collabtrails = @collabtrails.sort_by! { |trail| trail.start_date } if params[:sort_by] == "date"
    @collabtrails = [] if params[:sort_by] == "hide"
    respond_to do |format|
      format.html { render 'pages/index' }
      format.js
    end
  end
end
