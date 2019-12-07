class UsersController < ApplicationController
  def update
    if current_user.update(user_params)
      flash[:notice] = "Trail info updated!"
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong!"
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :photo)
  end
end
