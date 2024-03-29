class ActivitiesController < ApplicationController
  before_action :set_trail, only: %i[index new create edit update destroy]
  before_action :set_activity, only: %i[show edit update destroy]

  def index
    @activities = policy_scope(Activity).geocoded # returns activities with coordinates
    authorize @activities
    @activities = @activities.where(trail_id: @trail.id)

    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: activity }),
        image_url: helpers.asset_url('bluemarker.png')
      }
    end
  end

  def show
    @activity = Activity.find(params[:id])
    authorize @activity
  end

  def new
    @date = params[:date]
    @activity = Activity.new
    @activity.trail = @trail
    authorize @activity
    respond_to do |format|
      format.html { redirect_to trail_path(@trail) }
      format.js
    end
  end

  def create
    @trail = Trail.find(params[:trail_id])
    @activity = Activity.new(activity_params)
    @activity.date = params[:activity][:date]
    @activity.trail = @trail
    authorize @activity
    if @activity.save
      @activities = find_activities(@trail, @activity)
      respond_to do |format|
        format.html { redirect_to trail_path(@trail) }
        format.js
      end
    end
  end

  def edit
    authorize @activity
    respond_to do |format|
      format.html { redirect_to trail_path(@trail) }
      format.js
    end
  end

  def update
    @activity = Activity.find(params[:id])
    authorize @activity
    if @activity.update(activity_params)
      @activities = find_activities(@trail, @activity)
      respond_to do |format|
        format.html { redirect_to trail_path(@trail) }
        format.js
      end
    end
  end

  def destroy
    authorize @activity
    if @activity.destroy
      @activities = find_activities(@trail, @activity)
      respond_to do |format|
        format.html { redirect_to trail_path(@trail) }
        format.js
      end
    end
  end

  private

  def find_activities(trail, activity = nil)
    @activities = trail.activities.group_by(&:date)
    @activities = @activities[@activity.date]  || []
  end

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
