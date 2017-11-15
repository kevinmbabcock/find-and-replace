class String
  def find_and_replace (word1, word2)
    all_words = self.split(/ /)
    all_words.each_with_index do |word, i|
      if word == word1
        all_words[i] = word2
      end
    end
    new_string = all_words.join(" ")
    return new_string
  end
end
