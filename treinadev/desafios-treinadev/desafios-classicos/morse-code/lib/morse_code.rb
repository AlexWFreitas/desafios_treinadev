class MorseCode
  def traduzir(codigo_morse)
    codigo_morse = codigo_morse.split('/')
    
    codigo_morse.each_index do |i|
      codigo_morse[i] = morse_to_num(codigo_morse[i])
    end

    codigo_morse = codigo_morse.join('')
  end

  def morse_to_num(codigo)
    case codigo
    when '.----'
      '1'
    when '..---'
      '2'
    when '...--'
      '3'
    when '....-'
      '4'
    when '.....'
      '5'
    when '-....'
      '6'
    when '--...'
      '7'
    when '---..'
      '8'
    when '----.'
      '9'
    when '-----'
      '0'
    end
  end
end