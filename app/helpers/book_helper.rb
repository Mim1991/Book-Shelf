module BookHelper
  def book_match(user_books, book)
    codes = user_books.map { |book| book.code}
    codes.include?(book["id"])
  end
end