class ListsController < ApplicationController
  before_action :set_trail, only: %i[new create edit update destroy]
  # before_action :set_activity, only: %i[show edit update destroy]
  before_action :set_list, only: %i[show edit update destroy]

  def show
    @list_items = ListItem.where(list_id: @list.id)
  end

  def new
    @list = List.new
    @categories = Category.all
  end

  def create
    @list = List.new(list_params)
    @list.trail = @trail
    if @list.save
      params[:items].each do |item|
        # check if id is a number, then create listitem
        if item.to_i.positive?
          ListItem.create(item_id: item, list_id: @list.id)
        else
          list_item = ListItem.new(list_id: @list.id)
          category = Category.find(params[:list][:others][:category].to_i)
          item = Item.create(name: item)
          ItemCategory.create(item_id: item.id, category_id: category.id)
          list_item.item = item
          list_item.save
        end
      end
      flash[:notice] = "List created!"
      redirect_to list_path(@list)
    else
      flash[:alert] = "Something went wrong!"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @list.destroy
    redirect_to trail_path(@trail)
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
