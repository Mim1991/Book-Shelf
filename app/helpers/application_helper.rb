module ApplicationHelper
  def shorten_sentence(text)
    shortened_text = text.to_s.split(".").first(8).join(".") + "."
    if shortened_text.length > 447
      shortened_text[0..440] + "..."
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
  
end
