class RnaPolymerase
  def transcribe(dna, beginning, ending)

    if dna.index(beginning) != nil && dna.rindex(ending) != nil && beginning != '' && ending != ''
      inicio_index = dna.index(beginning) + (beginning.length)
      fim_index = dna.rindex(ending) - 1
    else
      return "Sequence not found"
    end

    mid_section = dna.slice(inicio_index..fim_index)
    
    make_rna(mid_section)
  end

  def make_rna(dna)
    rna = ''
    conversion_hash = {'A' => 'U', 'T' => 'A', 'C' => 'G', 'G' => 'C' }
    dna.each_char { |c| rna += conversion_hash[c] }
    rna
  end
end
