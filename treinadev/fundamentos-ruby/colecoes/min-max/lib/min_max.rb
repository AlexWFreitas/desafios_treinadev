class MinMax
  def find(values)
    values = values.split()
    min = 0
    max = 0
    values.each_with_index do |valor, index|
      if avaliar(valor) < avaliar(values[min])
        min = index
      elsif avaliar(valor) > avaliar(values[max])
        max = index
      end
    end
    "Mínimo: #{values[min]}; Máximo: #{values[max]}"
  end
  
  def avaliar(valor)
    if valor =~ /^-?\d+$/ 
      valor.to_i
    else 
      valor.length()
    end
  end
end
