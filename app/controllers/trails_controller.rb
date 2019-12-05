class TrailsController < ApplicationController
  before_action :set_trail, only: %i[show edit update destroy list_activity]

  def show
    @activities = @trail.activities.group_by(&:date)
    range_dates = (@trail.start_date...@trail.end_date).to_a
    range_dates.each do |date|
      if @activities[date].nil?
        @activities[date] = []
      end
    end
    @activities = @activities.sort_by{|k, _extras| k }.to_h
  end

  def new
    @trail = Trail.new
  end

  def create
    @trail = Trail.new(trail_params)
    @trail.user = current_user
    if @trail.save
      if params[:trail][:others]
        collab_users_arr = params[:trail][:others][:email]
        create_collab(collab_users_arr, @trail)
      end
      flash[:notice] = "You created a new trail"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @trail.update(trail_params)
      if params[:trail][:others]
        collab_users_arr = params[:trail][:others][:email]
        create_collab(collab_users_arr, @trail)
      end
      flash[:notice] = "Trail info updated!"
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong!"
      render :edit
    end
  end

  def destroy
    @trail.destroy
    redirect_to root_path
  end

  def list_activity
    @date = Date.parse(params[:date])
    @activities = @trail.activities.where(date: @date)
  end


  private

  def set_trail
    @trail = Trail.find(params[:id])
  end

  def trail_params
    params.require(:trail).permit(:name, :start_date, :end_date)
  end

  def create_collab(collab_users_arr, trail)
    collab_users_arr.each do |email|
      collab_user = User.find_by(email: email)
      if collab_user == trail.user
        flash[:alert] = "Cannot invite yourself!"
      elsif collab_user
        Collab.create(user_id: collab_user.id, trail_id: trail.id)
      else
        flash[:alert] = "One or more user not found!"
      end
    end
  end
end
