module ApplicationHelper
  # Getting overspill of text in the view, shorten by set characters
  def shorten_title(text, number)
    !text.nil? && text.length > number ? text[0..number] + "..." : text
  end

  def capitalise(text)
    text[0].capitalize + text.slice(1..-1)
  end

  # Returning text for description inside 2 brackets
  def strip_brackets(text)
    text.slice(2..-3)
  end

  # Stop pluralizing names in the library e.g James's library becomes James'
  def trim_s(name)
    name[-1] == 's' ? name + "'" : name + "'s"
  end
end
