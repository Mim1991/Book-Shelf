module ApiHelper
  def find_image(book)
    book_image = book["volumeInfo"]["imageLinks"]
    book_image.nil? ? "" : book_image["thumbnail"]
  end

  def find_description(book)
    book["volumeInfo"]["description"]
  end

  def find_author(book)
    book["volumeInfo"]["authors"].nil? ? "" : book["volumeInfo"]["authors"][0]
  end

  def find_id(book)
    book["id"]
  end

  def find_title(book)
    book["volumeInfo"]["title"]
  end

  def find_isbn_type(book, category)
    book_identify = book["volumeInfo"]["industryIdentifiers"]
    book_identify.nil? ? "" : book_identify[0][category]
  end

  def find_average_rating(book)
    book["volumeInfo"]["averageRating"]
  end

  def find_rating_count(book)
    book["volumeInfo"]["ratingsCount"]
  end

  def find_category(book)
    category = book["volumeInfo"]["categories"]
    category.nil? ? "" : category[0]
  end

  def find_book(name)
    url = "https://www.googleapis.com/books/v1/volumes/#{name}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end