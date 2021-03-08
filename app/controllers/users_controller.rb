class UsersController < ApplicationController
  def show
    @books_table = current_user.books.where(shelf: "Table")
    @books_top = current_user.books.where(shelf: "Top Shelf")
  end
end
