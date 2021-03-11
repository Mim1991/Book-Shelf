class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books_table = @user.books.where(shelf: "Table")
    @books_top = @user.books.where(shelf: "Top Shelf")
    @books_middle = @user.books.where(shelf: "Middle Shelf")
    @books_bottom = @user.books.where(shelf: "Bottom Shelf")
  end
end
