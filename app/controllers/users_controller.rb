class UsersController < ApplicationController
  def edit
    authorize current_user
  end

  def update
    authorize current_user
    if current_user.update(user_params)
      flash[:notice] = "Profile updated!"
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
