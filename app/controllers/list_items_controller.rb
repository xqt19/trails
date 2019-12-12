class ListItemsController < ApplicationController
  def update
    @list_item = ListItem.find(params[:id])
    authorize @list_item
    if @list_item.update(list_item_params)
      redirect_to list_path(@list_item.list)
    end
  end

  def destroy
    @list_item = ListItem.find(params[:id])
    authorize @list_item
    @list_item.destroy
    redirect_to list_path(@list_item.list)
  end

  private

  def list_item_params
    params.require(:list_item).permit(:quantity, :checked)
  end
end
