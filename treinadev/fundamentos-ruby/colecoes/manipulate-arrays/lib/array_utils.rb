class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(divisor1,divisor2)
    array = []
    temp1 = []
    temp2 = []
    temp3 = []
    max = 51

    max.times do |valor|
      if valor % divisor1 == 0 && valor != 0 && valor % divisor2 == 0
        temp1 << valor

     elsif valor % divisor1 == 0 && valor != 0 && valor % divisor2 != 0
        temp2 << valor

      elsif valor % divisor1 != 0 && valor != 0 && valor % divisor2 == 0
        temp3 << valor
      end
    end

    array << temp1 # Gostaria de saber de uma maneira 
    array << temp2 # mais eficiente de adicionar vários 
    array << temp3 # arrays à um array.
    array
    
  end

  def self.soma(list)
    soma = 0
    list.each do |valor|
      soma += valor
    end
    soma
  end

  def self.combinar(numeros, letras)
    array = []
    numeros.each do |numero|
      letras.each do |letra|
        array << [numero, letra]
      end
    end
    array
  end
end