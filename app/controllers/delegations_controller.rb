class DelegationsController < ApplicationController
  before_action :set_list_item, only: %i[new]
  # before_action :set_delegation, only: %i[]

  def new
    @delegation = Delegation.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_delegation
    @delegation = Delegation.find(params[:id])
  end

  def set_list_item
    @list_item = ListItem.find(params[:list_item_id])
  end
end
