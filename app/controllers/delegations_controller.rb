class DelegationsController < ApplicationController
  def create
    @list_item = ListItem.find(params[:list_item_id])
    @user = User.find(params[:user_id])
    @list = @list_item.list
    @delegation = Delegation.new(user_id: params[:user_id], list_item_id: params[:list_item_id])
    authorize @delegation
    flash[:alert] = "You have already delegated to #{@user.name}!" unless @delegation.save
    respond_to do |format|
      format.html { redirect_to list_path(@list_item.list) }
      format.js
    end
  end

  def update
    @delegation = Delegation.find(params[:id])
    authorize @delegation
    @delegation.update(delegation_params)
    redirect_to list_path(@delegation.list)
  end

  def destroy
    @delegation = Delegation.find(params[:id])
    authorize @delegation
    @delegation.destroy
    redirect_to list_path(@delegation.list_item.list)
  end

  private

  def delegation_params
    params.require(:delegation).permit(:checked)
  end
end
