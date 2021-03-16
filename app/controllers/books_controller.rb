class BooksController < ApplicationController
  require 'net/http'
  require 'json'

  def index
    books = Book.last(5)
    @book_parsed = []
    books.each { |book| @book_parsed << find_book(book.code) }
    top_books = Book.where("shelf = ?", "Top Shelf").sample(5)
    @top_books = []
    top_books.each { |book| @top_books << find_book(book.code) }
  end

  def show
    @book = find_book(params[:id])
    @friends_book = Book.where("code= ?", params[:id])
  end

  def create
    @book = Book.new(name: params[:param1], author: params[:param2], code: params[:param3])
    @book.user = current_user
    if @book.save
      @book.create_activity :create, owner: current_user
      redirect_to user_path(current_user)
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      @book.create_activity :update, owner: current_user
      redirect_to user_path(current_user)
    end
  end

  def search
    @text = params[:books]
    @books = find_books(params[:books])
    unless @books
      flash[:alert] = 'Book not found'
      return render action: :index
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to user_path(current_user)
  end

  private

  def book_params
    params.permit(:shelf)
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
