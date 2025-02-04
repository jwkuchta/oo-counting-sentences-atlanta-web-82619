require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    split_sentence = self.split(/\.|\?|\!/)
    #binding.pry
    split_sentence.reject! {|el| el == ""}
    split_sentence.count
  end
end