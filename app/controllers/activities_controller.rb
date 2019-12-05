class ActivitiesController < ApplicationController
  before_action :set_trail, only: %i[new create edit update destroy]
  before_action :set_activity, only: %i[show edit update destroy]

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
    @activity.trail = @trail
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.trail = @trail
    if @activity.save
      redirect_to trail_path(@trail)
    else
      render :new
    end
  end

  def edit
    @activity.trail = @trail
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.trail = @trail
    if @activity.update(activity_params)
      flash[:notice] = "Activity Updated!"
      redirect_to trail_path(@trail)
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to trail_path(@trail)
  end

  private

  def set_trail
    @trail = Trail.find(params[:trail_id])
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:start_time, :end_time, :name, :description, :location)
  end
end
