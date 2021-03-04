class StringUtils
    # Ideia:
    # Usar rindex para procurar o espaço mais próximo a partir do fim
    # Substituir por \n ( insert )
    # Iterar a cada tamanho posições ( Divisão para achar o numero de iterações? )
    # Considerar o espaço ocupado por \n  ( Não sei como fazer essa parte )

    # Ideia 2:
    # Split na frase
    # Adicionar palavras da frase em um string novo e contar a 
    # quantidade de caracteres usando um contador.
    # Se ao adicionar a palavra passar do limite, inserir um /n 
    # sem aumentar o contador.

  def wrap(frase, tamanho)
    frase = frase.split()
    frase_final = ""
    contador = 0
    frase.each do |palavra|
      if contador + palavra.length <= tamanho 
        contador += palavra.length + 1 # palavra + espaço
        frase_final += palavra + " "
      else 
        frase_final.slice!(frase_final.length-1) # remove espaço antes de adicionar o novo \n
        frase_final += "\n" + palavra + " "
        contador = palavra.length + 1 # reseta contador e adiciona tamanho da palavra + o espaço
      end
    end
    frase_final.slice!(frase_final.length-1) # remove o espaço da última iteração.
    frase_final
  end
end
