class StringUtils
  def padding(frase, padding_array)
    if padding_array.length() == 4  
      frase = " " * padding_array[1] + frase
      frase = "\n" * padding_array[0] + frase
      frase += " " * padding_array[3]
      frase += "\n" * padding_array[2]
    end
  end
end