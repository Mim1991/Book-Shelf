module BookHelper
  # Used to decide on button. If book exists in user's library during search, adds "in your library button"
  def book_match(user_books, book)
    codes = user_books.map { |book| book.code}
    codes.include?(book["id"])
  end
end
