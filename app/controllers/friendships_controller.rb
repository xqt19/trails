class FriendshipsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    policy_scope(Friendship)
    @confirmed_friendships = current_user.friendships.where(confirmed: "true")
    @pending_friendships = current_user.pending_friendships.where(receiver: current_user)
    authorize Friendship.new(sender: @user)
  end

  def create
    @new_friend = User.find(params[:user_id])
    @friendship = Friendship.new(sender: current_user, receiver: @new_friend)
    authorize @friendship
    @friendship.save
    redirect_to user_friendships_path(current_user)
  end

  def update
    @friendship = Friendship.find(params[:id])
    authorize @friendship
    @friendship.confirmed = true
    @friendship.save
    redirect_to user_friendships_path(current_user)
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    authorize @friendship
    @friendship.destroy
    redirect_to user_friendships_path(current_user)
  end
end
