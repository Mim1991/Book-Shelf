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
end
