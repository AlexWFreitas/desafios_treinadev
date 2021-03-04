class WordCounter
  def count_words(frase)
    frase = frase.downcase()
    frase.each_char do |char|
      if char.count(",.:/!?;") == 1
        frase.slice!(frase.index(char))
      end
    end

    array = []
    array = frase.split()

    array_sem_repet = []
    array.each do |valor|
      if array_sem_repet.count(valor) == 0
        array_sem_repet << valor
      end
    end

    array_final = []
    array_sem_repet.each do |valor|
        array_final << [valor, array.count(valor)]
    end

    array_final
  end
end

