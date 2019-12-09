class ItemsController < ApplicationController
  def index
    @items = policy_scope(Item)
    @category = Category.find(params[:category_id])

    respond_to do |format|
      format.json { render json: @category.items }
      # format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  end
end
