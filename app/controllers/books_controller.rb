class BooksController < ApplicationController
  before_action :find_book, only: [:update, :destroy]
  require 'net/http'
  require 'json'

  def index
  end

  def show
    @book = find_book_by_name(params[:id])
    @friends_book = Book.where("code= ?", params[:id])
    @user_books = Book.where("user_id=?", current_user.id)
  end

  def create
    @book = Book.new(name: params[:param1], author: params[:param2], code: params[:param3])
    @book.user = current_user
    if @book.save
      @book.create_activity :create, owner: current_user
    end
  end

  def update
    if @book.update(book_params)
      @book.create_activity :update, owner: current_user
    end
  end

  def search
    @text = params[:books]
    @books = find_books_by_code(params[:books])
    @user_books = Book.where("user_id =?", current_user.id)
    unless @books
      flash[:alert] = 'Book not found'
      return render action: :index
    end
  end

  def destroy
    @book.destroy
  end

  private

  def book_params
    params.permit(:shelf)
  end

  def find_book
    @book = Book.find(params[:id])
  end

  def find_book_by_name(name)
    url = "https://www.googleapis.com/books/v1/volumes/#{name}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def find_books_by_code(name)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{name}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
