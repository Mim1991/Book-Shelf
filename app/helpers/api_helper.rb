module ApiHelper
  def find_image(book)
    book["volumeInfo"]["imageLinks"]["thumbnail"]
  end

  def find_description(book)
    book["volumeInfo"]["description"]
  end

  def find_author(book)
    book["volumeInfo"]["authors"][0]
  end

  def find_id(book)
    book["id"]
  end

  def find_title(book)
    book["volumeInfo"]["title"]
  end

  def find_type(book)
    book["volumeInfo"]["industryIdentifiers"][0]["type"]
  end

  def find_isbn(book)
    book["volumeInfo"]["industryIdentifiers"][0]["identifier"]
  end

  def find_average_rating(book)
    book["volumeInfo"]["averageRating"]
  end

  def find_rating_count(book)
    book["volumeInfo"]["ratingsCount"]
  end

  def find_category(book)
    book["volumeInfo"]["categories"][0]
  end

  def find_book(name)
    url = "https://www.googleapis.com/books/v1/volumes/#{name}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end