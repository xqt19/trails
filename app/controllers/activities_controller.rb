class ActivitiesController < ApplicationController
  def show
    # @trail = Trail.find(params[:trail_id])
    @activity = Activity.find(params[:id])
  end

  def new
    @trail = Trail.find(params[:trail_id])
    @activity = Activity.new
  end

  def create
    @trail = Trail.find(params[:trail_id])
    @activity = Activity.new(activity_params)
    @activity.trail = @trail

    if @activity.save
      redirect_to #TODO
    else
      render :new
    end
  end

  def edit
    # @trail = Trail.find(params[:trail_id])
    @activity = Activity.find(params[:id])
    @activity.trail = @trail
  end

  def update
    # @trail = Trail.find(params[:trail_id])
    @activity = Activity.find(params[:id])
    @activity.trail = @trail
    if @activity.update(activity_params)
      flash[:notice] = "Review Updated!"
      redirect_to
    else
      render :edit
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to #TODO
  end

  private

  def activity_params
    params.permit(:activity).require(:start_time, :end_time, :name, :description, :location)
  end
end
