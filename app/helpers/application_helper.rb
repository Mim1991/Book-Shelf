module ApplicationHelper
  def shorten_sentence(text, number)
    # shortened_text = `#{text.to_s.split(".").first(8).join(".")}.`
    if text.length > number
      text[0..number] + "..."
    else
      text
    end
  end

  def shorten_title(text, number)
    text.length > number ? text[0..number] + "..." : text
  end

  def capitalise(text)
    text[0].capitalize + text.slice(1..-1)
  end

  def strip_brackets(text)
    text.slice(2..-3)
  end

  def trim_s(name)
    name[-1] == 's' ? name + "'" : name + "'s"
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
