class FriendshipsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    policy_scope(Friendship)
    @confirmed_friendships = current_user.friendships.where(confirmed: "true")
    @pending_friendships = current_user.pending_friendships.where(receiver: current_user)
    @pending_adds = current_user.pending_friendships.where(sender: current_user)
    authorize Friendship.new(sender: @user)
  end

  def list_users
    query = params[:query]
    @users = []
    authorize Friendship.new
    if query != ""
      results = User.search_by_name_and_email(query) # update here to restrict the search scope
      @users = []
      results.each do |user|
        @users << user if current_user.friends.include?(user) == false && user != current_user && current_user.pending_friends.include?(user) == false
      end
    end
    respond_to do |format|
      format.html { redirect_to user_friendships_path(current_user) }
      format.js
    end
  end

  def create
    new_friend = User.find(params[:user_id])
    @friendship = Friendship.new(sender: current_user, receiver: new_friend)
    @user = current_user
    @pending_adds = current_user.pending_friendships.where(sender: current_user)
    authorize @friendship
    if @friendship.save
      respond_to do |format|
        format.html { redirect_to user_friendships_path(current_user) }
        format.js
      end
    else
      redirect_to user_friendships_path(current_user)
      flash[:alert] = "Something went wrong!"
    end
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
