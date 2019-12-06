class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if user_signed_in?
      @trails = Trail.where(user_id: current_user.id)
      @trails_count = @trails.count

      @collabs = Collab.where(user_id: current_user.id)
      @collabs_count = @collabs.count
    end
  end
end
