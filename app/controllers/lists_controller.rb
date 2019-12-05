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
    @list = List.new(list_params)
    @list.trail = @trail
    if @list.save
      params[:items].each do |id|
        # check if id is a number, then create listitem
        if id.to_i.positive?
          # TODO
        end
        # ListItem.create(item_id: id, list_id: @list.id)
      end
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
