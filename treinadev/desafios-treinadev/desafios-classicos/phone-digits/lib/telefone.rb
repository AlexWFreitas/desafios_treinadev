class Telefone
  def teclar(sequencia)
    texto = ''
    while sequencia.length > 0
      texto += make_char(find_seq(sequencia))
      sequencia.slice!(0..(find_seq(sequencia).length - 1))
    end
    texto
  end

  def find_seq(sequencia)
    seq = ''
    count  = 0

    if sequencia[0] == '7' || sequencia[0] == '9'
      for i in 0..3 
        if sequencia.slice(0..i).count(sequencia[0]) == i+1
          count += 1
        end
      end
    else
      for i in 0..2 
        if sequencia.slice(0..i).count(sequencia[0]) == i+1
          count += 1
        end
      end
    end
    
    seq += sequencia[0] * sequencia.slice(0..count).count(sequencia[0])
  end

      

  def make_char(seq)
    if seq != ' '
      (ascii_index(seq) + (seq.length-1)).chr
    else
      ''
    end
  end

  def ascii_index(num)
    case num[0].to_i
    when 2..6
      97 + (num[0].to_i - 2) * 3
    when 7
      112
    when 8 
      116
    when 9 
      119
    when 0 
      32
    end
  end

end
