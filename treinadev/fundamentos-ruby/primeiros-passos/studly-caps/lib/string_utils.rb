class StringUtils
  def wavefy(string)
    for i in 0..(string.length()-1)
      if (i % 2 == 0)
        string[i] = string[i].downcase()
      else
        string[i] = string[i].upcase()
      end
    end
    string
  end
end
