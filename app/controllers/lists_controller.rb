class ListsController < ApplicationController
  before_action :set_trail, only: %i[new create edit update destroy]
  # before_action :set_activity, only: %i[show edit update destroy]
  before_action :set_list, only: %i[show edit update destroy]

  def show
  end

  def new
    @list = List.new
    @categories = Category.all
  end

  def create
    raise
    @list = List.new(list_params)
    if @list.save
      redirect_to trail_path(@trail)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def set_trail
    @trail = Trail.find(params[:trail_id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
