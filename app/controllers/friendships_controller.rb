class FriendshipsController < ApplicationController
  before_action :find_user, only: [:index, :create, :add, :reject, :remove, :requests]
  def index
    @users = User.all
    @friends = @user.friends
    @requests = @user.requested_friends
    @pending = @user.pending_friends
    if params[:query].present?
      @search = User.search_by_name(params[:query])
    end
  end

  def create
    friend = User.find(params[:user_id])
    @user.friend_request(friend)
  end

  # None of below are rendering new views, just passed into buttons
  # Accepts request
  def add
    friend = User.find(params[:user_id])
    @user.accept_request(friend)
    redirect_to friendships_requests_path
  end

  def reject
    friend = User.find(params[:user_id])
    @user.decline_request(friend)
    redirect_to friendships_path
  end

  def remove
    friend = User.find(params[:user_id])
    @user.remove_friend(friend)
    redirect_to friendships_path
  end

  def requests
    @requests = @user.requested_friends
    @pending = @user.pending_friends
  end

  private
  
  def find_user
    @user = current_user
  end
end
