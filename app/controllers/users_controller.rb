class UsersController < ApplicationController
  def show
    @books_table = current_user.books.where(shelf: "Table")
    @books_top = current_user.books.where(shelf: "Top Shelf")
    @books_middle = current_user.books.where(shelf: "Middle Shelf")
    @books_bottom = current_user.books.where(shelf: "Bottom Shelf")
  end
end
