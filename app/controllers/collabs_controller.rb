class CollabsController < ApplicationController
  def destroy
    @trail = Trail.find(params[:trail_id])
    @collab = Collab.find_by(user_id: params[:id])
    authorize @collab
    @collab.destroy
    if current_user == @collab.user
      redirect_to index_path
    else
      redirect_to trail_path(@trail)
    end
  end
end
