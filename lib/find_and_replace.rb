class String
  def find_and_replace (word1, word2)
    all_words = self.split(/ /)
    new_string = ""
    all_words.each do |word|
      if word.include? word1
        word.gsub!(word1, word2)
        new_string.concat(word)
      else
        new_string.concat(word)
      end
      new_string.concat(" ")
    end
    new_string.chop()
  end
end
