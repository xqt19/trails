class CollabsController < ApplicationController
  def destroy
    @trail = Trail.find(params[:trail_id])
    @collab = Collab.find_by(user_id: params[:id])
    @collab.destroy
    redirect_to trail_path(@trail)
  end
end
