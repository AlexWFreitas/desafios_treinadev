class Arrays
  def inverse_strings(array)
    array_nomatch = []
    array.each do |valor|
      if array.count(valor.reverse) == 0 
        array_nomatch << valor
      end
    end
    array_nomatch
  end
end

