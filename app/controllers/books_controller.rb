class BooksController < ApplicationController
  require 'net/http'
  require 'json'

  def index
  end

  def show
    @book = find_book(params[:id])
  end

  def search
    books = find_books(params[:books])
    unless books
      flash[:alert] = 'Country not found'
      return render action: :index
    end

    @books = books
    # @weather = find_weather(@country['capital'], @country['alpha2Code'])
  end

  private

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
