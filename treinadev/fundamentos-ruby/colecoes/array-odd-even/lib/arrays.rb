class Arrays
  def self.converte_impares_por(lista, numero)

    array_de_array = []
    lista_impar = []
    lista_impar_modif = []

    lista.each do |valor|
      if valor.odd?
        lista_impar << valor
      end
    end

    array_de_array << lista_impar

    lista_impar.each do |valor|
      lista_impar_modif << valor * numero
    end

    array_de_array << lista_impar_modif 
  end

  def self.converte_pares_por(lista, numero)

    array_de_array = []
    lista_par = []
    lista_par_modif = []

    lista.each do |valor|
      if valor.even?
        lista_par << valor
      end
    end

    array_de_array << lista_par

    lista_par .each do |valor|
      lista_par_modif << valor * numero
    end

    array_de_array << lista_par_modif 
  end
end
