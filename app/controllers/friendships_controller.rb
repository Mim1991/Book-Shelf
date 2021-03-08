class FriendshipsController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @friends = @user.friends
    @requests = @user.requested_friends
    @pending = @user.pending_friends
    if params[:query].present?
      @search = User.search_by_name(params[:query])
    end
  end

  def create
    @user = current_user
    friend = User.find(params[:user_id])
    @user.friend_request(friend)

    redirect_to friendships_path
  end

  def add
    @user = current_user
    friend = User.find(params[:user_id])
    @user.accept_request(friend)

    redirect_to friendships_path
  end

  def reject
    @user = current_user
    friend = User.find(params[:user_id])
    @user.decline_request(friend)

    redirect_to friendships_path
  end

  def remove
    @user = current_user
    friend = User.find(params[:user_id])
    @user.remove_friend(friend)

    redirect_to friendships_path
  end
end
