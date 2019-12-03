class TrailsController < ApplicationController
  before_action :set_trail, only: %i[show edit update destroy]

  def index
    @trails = Trail.all
    @trails_count = Trail.count
  end

  def show
  end

  def new
    @trail = Trail.new
  end

  def create
    trail = Trail.new(trail_params)
    trail.user = current_user
    if trail.save
      flash[:notice] = "You created a tutor profile!"
      redirect_to trails_path
    else
      flash[:alert] = "Something went wrong!"
      render :new
    end
  end

  def edit
  end

  def update
    if @trail.update(trail_params)
      flash[:notice] = "Trail info updated!"
      redirect_to trails_path
    else
      flash[:alert] = "Something went wrong!"
      render :edit
    end
  end

  def destroy
    @trail.destroy
    redirect_to trails_path
  end

  private

  def set_trail
    @trail = Trail.find(params[:id])
  end

  def trail_params
    params.require(:trail).permit(:name, :start_date, :end_date)
  end
end
