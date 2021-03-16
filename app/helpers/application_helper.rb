module ApplicationHelper
  def shorten_sentence(text, number)
    shortened_text = text.to_s.split(".").first(8).join(".") + "."
    if shortened_text.length > number
      shortened_text[0..number] + "..."
    else
      shortened_text
    end
  end

  def capitalise(text)
    text[0].capitalize + text.slice(1..-1)
  end

  def strip_brackets(text)
    text.slice(2..-3)
  end

  def find_image(book)
    book["volumeInfo"]["imageLinks"]["thumbnail"]
  end

  def find_description(book)
    book["volumeInfo"]["description"]
  end

  def find_author(book)
    book["volumeInfo"]["authors"][0]
  end

  def find_title(book)
    book["volumeInfo"]["title"]
  end

  def find_book(name)
    url = "https://www.googleapis.com/books/v1/volumes/#{name}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

  def trim_s(name)
    if name[-1] == 's'
      name + "'"
    else
      name + "'s"
    end
  end

  def review_book(code)
    book = Book.where("code= ?", code)
    array = []
    book.each do |instance|
      array << instance.user_id
    end
    array
  end
end
