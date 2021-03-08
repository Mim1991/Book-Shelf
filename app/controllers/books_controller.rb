class BooksController < ApplicationController
  require 'net/http'
  require 'json'

  def index
  end

  def show
    @book = find_book(params[:id])
    @friends_book = Book.where("code= ?", params[:id])
  end

  def create
    @book = Book.new(name: params[:param1], author: params[:param2], code: params[:param3])
    @book.user = current_user
    if @book.save
      redirect_to user_path(current_user)
    end
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to user_path(current_user)
  end

  def search
    @books = find_books(params[:books])
    unless @books
      flash[:alert] = 'Country not found'
      return render action: :index
    end
  end

  private

  def book_params
    params.require(:book).permit(:shelf)
  end

  def find_book(name)
    url = "https://www.googleapis.com/books/v1/volumes/#{name}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def find_books(name)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{name}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  
end
