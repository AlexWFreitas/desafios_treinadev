class MutationCounter
  def calculate(dna_collection)
    maior = 0

    dna_collection.each do |par|
      contador= 0
      
      par[0].chars.each_index do |i|
        if 
          par[0][i] != par[1][i]
          contador += 1
        end
      end

      if contador > maior
        maior = contador
      end

    end

    maior

  end
end
