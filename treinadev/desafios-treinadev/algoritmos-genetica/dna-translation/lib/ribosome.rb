class Ribosome
  attr_reader :erros

  def translate(rna_messenger)
    @erros = 0

    # Divide de 3 em 3
    split_rna = rna_messenger.scan(/.../)

    # Faz RNAt
    split_rna.each_index do |i|
      split_rna[i] = anti_codon_make(split_rna[i])
    end

    # Faz Aminoácidos
    split_rna.each_index do |i|
      split_rna[i] = amino_make(split_rna[i])
    end

    # Junta os arrays para fazer a string final, checa erros também
    if erros == 0
      split_rna = split_rna.join('-')
    else
      "Translation aborted"
    end
  end

  def amino_make(anti_codon)
    if anti_codon == 'UCA'
      return 'aa1'
    elsif anti_codon == 'AAC'
      return 'aa2'
    elsif anti_codon == 'UUU'
      return 'aa3'
    elsif anti_codon == 'AAA'
      return 'aa4'
    elsif anti_codon == 'AUC'
      return 'aa5'
    elsif anti_codon == 'CCA'
      return 'aa6'
    elsif anti_codon == 'GGU'
      return 'aa7'
    elsif anti_codon == 'GCC'
      return 'aa8'
    else
      self.erros += 1
    end
  end

  def anti_codon_make(codon)
    anti_codon = ''
    codon.chars do |c|
      if c == 'A'
        anti_codon += 'U'
      elsif c == 'U'
        anti_codon += 'A'
      elsif c == 'C'
        anti_codon += 'G'
      elsif c == 'G'
        anti_codon += 'C'
      end
    end
    anti_codon
  end

  private
    attr_writer :erros
end
