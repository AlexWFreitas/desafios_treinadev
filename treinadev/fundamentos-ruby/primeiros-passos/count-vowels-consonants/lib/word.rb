class Word
  def vowels_count(phrase)
    phrase = phrase.downcase()
    phrase.count('aáàâãeéiíoóuúôõy')
  end

  def consonants_count(phrase)
    phrase = phrase.downcase()
    phrase.length() - (vowels_count(phrase) + phrase.count('., !?:;[]()><#$%@'))
  end
end
