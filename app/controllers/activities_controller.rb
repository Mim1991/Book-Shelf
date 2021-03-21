class ActivitiesController < ApplicationController
  def index
    @activities = PublicActivity::Activity.order("created_at desc").where(owner_id: current_user.friend_ids)
    books = Book.last(5)
    @book_parsed = retrieve_book_codes(books) # Taking the book codes to be able to link to book show page
    top_books = Book.where("shelf = ?", "Top Shelf").sample(5) 
    @top_books = retrieve_book_codes(top_books)
  end

  private

  def find_book(name)
    url = "https://www.googleapis.com/books/v1/volumes/#{name}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def retrieve_book_codes(books)
    books.map { |book| find_book(book.code) }
  end
end
