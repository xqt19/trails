class ListItemsController < ApplicationController
  def update
  end

  def destroy
    @list_item = ListItem.find(params[:id])
    @list_item.destroy
    redirect_to list_path(@list_item.list)
  end
end
