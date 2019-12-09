class DelegationsController < ApplicationController
  def create
    @list_item = ListItem.find(params[:list_item_id])
    @user = User.find(params[:user_id])

    @delegation = Delegation.new(user_id: params[:user_id], list_item_id: params[:list_item_id])
    authorize @delegation
    flash[:alert] = "You have already delegated to #{@user.name}!" unless @delegation.save
    redirect_to list_path(@list_item.list)
  end

  def update
    @delegation = Delegation.find(params[:id])
    authorize @delegation
    @delegation.update(delegation_params)
  end

  def destroy
    @list_item = ListItem.find(params[:list_item_id])
    @delegation = @list_item.delegations.find_by(user_id: params[:user_id])
    authorize @delegation
    @delegation.destroy
    redirect_to list_path(@list_item.list)
  end

  private

  def delegation_params
    params.require(:delegation).permit(:checked)
  end
end
