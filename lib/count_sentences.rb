require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    symbol = ["." , "?", "!"]
    count += 1 if symbol.include?(self[-1])
    self.each_char.with_index {|char, i| 
      count += 1 if symbol.include?(char) && self[i+1] == " " 
    }
    count

  end
end