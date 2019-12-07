class DelegationsController < ApplicationController
  def create
    @list_item = ListItem.find(params[:list_item_id])
    @user = User.find(params[:user_id])

    @delegation = Delegation.new(user_id: params[:user_id], list_item_id: params[:list_item_id])

    flash[:alert] = "You have already delegated to #{@user.name}!" unless @delegation.save
    redirect_to list_path(@list_item.list)
  end

  def destroy
    @list_item = ListItem.find(params[:list_item_id])
    @delegation = Delegation.find_by(user_id: params[:user_id])
    @delegation.destroy
    redirect_to list_path(@list_item.list)
  end
end
