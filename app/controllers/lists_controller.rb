class ListsController < ApplicationController
  before_action :set_trail, only: %i[new create edit update destroy]
  # before_action :set_activity, only: %i[show edit update destroy]
  before_action :set_list, only: %i[show edit update destroy]

  def show
    authorize @list
    @list_items = ListItem.where(list_id: @list.id).order(:id)
    @collabs = Collab.where(trail_id: @list.trail)
    @collabs = @collabs.map(&:user)
    @collabs = [@list.trail.user] + @collabs
    # uncomment for auto-check feature
    @list_items.each do |list_item|
      checked_count = list_item.delegations.where(checked: true).count
      all_count = list_item.delegations.all.count
      if checked_count == all_count && all_count != 0
        list_item.checked = true
      elsif !list_item.checked?
        list_item.checked = false
      end
    end
  end

  def new
    @list = List.new
    @list.trail = @trail
    authorize @list
    @categories = Category.all
  end

  def create
    @list = List.new(list_params)
    @list.trail = @trail
    authorize @list
    if @list.save
      # removes custom items from list
      params[:deletes]&.each do |item_name|
        item = Item.find_by(name: item_name)
        item.destroy
      end
      # creates list_items with templated and custom items
      params[:items]&.each do |item|
        # check if id is a number, then create listitem
        if item.to_i.positive?
          ListItem.create(item_id: item, list_id: @list.id)
        else
          list_item = ListItem.new(list_id: @list.id)
          category = Category.find(params[:list][:others][:category].to_i)
          item = Item.create(name: item, custom: true)
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
    authorize @list
  end

  def update
    authorize @list
    if @list.update(list_params)
      # Zache's code to filter selected items
      # edit_selecteds = params[:items].map { |item_id| item_id.to_i }
      # list_items = @list.list_items.map { |list_item| list_item.item_id }
      # edit_selecteds.reject { |edit_selected| list_items.include?(edit_selected) }

      # removes custom items from list
      params[:deletes]&.each do |item_name|
        item = Item.find_by(name: item_name)
        item.destroy
      end
      # creates list_items with templated and custom items
      params[:items]&.each do |item|
        # check if id is a number, then create listitem
        if item.to_i.positive?
          ListItem.create(item_id: item, list_id: @list.id)
        else
          list_item = ListItem.new(list_id: @list.id)
          category = Category.find(params[:list][:others][:category].to_i)
          item = Item.create(name: item, custom: true)
          ItemCategory.create(item_id: item.id, category_id: category.id)
          list_item.item = item
          list_item.save
        end
      end
      flash[:notice] = "List updated!"
      redirect_to list_path(@list)
    else
      flash[:alert] = "Something went wrong!"
      render :edit
    end
  end

  def destroy
    authorize @list
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
