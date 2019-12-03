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
    @trail = Trail.new(trail_params)
    @trail.user = current_user
    if @trail.save
      if params[:trail][:others]
        collab_users_arr = params[:trail][:others][:email]
        create_collab(collab_users_arr, @trail)
      end
      flash[:notice] = "You created a new trail"
      redirect_to trails_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @trail.update(trail_params)
      create_collab(params[:trail][:others][:email].reject(&:empty?), @trail)
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
