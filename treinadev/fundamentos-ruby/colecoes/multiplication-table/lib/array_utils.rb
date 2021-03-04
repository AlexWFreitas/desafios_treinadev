class ArrayUtils
  def self.multiplos(valorlimite, multiplicador)
    array_multiplos = []
    valorlimite.times do |n|
      array_multiplos << (n+1) * multiplicador
    end
    array_multiplos
  end

  def self.tabuada(valores)
    tabuadas = []
    valorlimite = 10
    valores.times do |valores|
      tabuadas << self.multiplos(valorlimite, valores+1)
    end
    tabuadas
  end
end
