class EnigmaCypher
  def decrypt(code, keyword)
    for i in 0..(code.length - 1) do
      code[i] = loop_alphabet((code[i].ord - (loop_index(keyword,i).ord - 65)).chr)
    end
    code
  end

  def encrypt(phrase, keyword)
    for i in 0..(phrase.length - 1) do
      phrase[i] = loop_alphabet((phrase[i].ord + (loop_index(keyword,i).ord - 65)).chr)
    end
    phrase
  end

  def loop_index(object, i)
    while i > object.length - 1
      i -= (object.length)
    end
    object[i]
  end
  
  def loop_alphabet(char)
    while char.ord > 90
      char = char.ord - 26
    end

    while char.ord < 65
      char = char.ord + 26
    end

    char.chr
  end
end
