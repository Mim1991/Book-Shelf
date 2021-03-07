module ApplicationHelper
  def shorten_sentence(text)
    text.to_s.split(".").first(2).join(".") + "."
  end
end
