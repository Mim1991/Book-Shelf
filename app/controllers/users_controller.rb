class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books_table = @user.books.where(shelf: "Table")
    @books_top = @user.books.where(shelf: "Top Shelf")
    @books_middle = @user.books.where(shelf: "Middle Shelf")
    @books_bottom = @user.books.where(shelf: "Bottom Shelf")
  end

  def index
    @users = User.all
    @user = current_user
    if params[:query].present?
      @search = User.search_by_name(params[:query])
    end
  end

end
