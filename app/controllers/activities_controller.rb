class ActivitiesController < ApplicationController
  def index
    @activities = PublicActivity::Activity.order("created_at desc").where(owner_id: current_user.friend_ids)
    books = Book.last(5)
    @book_parsed = []
    books.each { |book| @book_parsed << find_book(book.code) }
    top_books = Book.where("shelf = ?", "Top Shelf").sample(5)
    @top_books = []
    top_books.each { |book| @top_books << find_book(book.code) }
  end

  private

  def find_book(name)
    url = "https://www.googleapis.com/books/v1/volumes/#{name}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
