class MisteryNumber
  attr_accessor :replica, :divlist, :multlist


  # Feito na força do ódio

  def calculate(operation)
    operation[operation.index('?')] = 'x'
    operation = operation.split()
    equal_index = operation.index('=')
    x_index = operation.index('x')

    parte_esquerda = []
    parte_direita = []
    @replica = []
    @divlist = [] # divisores a serem invertidos em multiplicadores
    @multlist = [] # multiplicadores a serem invertidos em divisores

    operation.each_index do |index|
      if index < equal_index
        parte_esquerda << operation[index]
      elsif index > equal_index
        parte_direita << operation[index]
      end
    end

    if x_index < equal_index
      self.replica = parte_esquerda
    else 
      self.replica = parte_direita
    end

    divilist()
    multilist()

    parte_direita = soma(parte_direita)
    parte_direita = subt(parte_direita)
    parte_direita = multiop(parte_direita)
    parte_direita = divop(parte_direita)

    frase = parte_direita.join (" ")
    return  eval frase
  end

  def soma(array)
    self.replica.each_index do |i|
      if self.replica[i] == '+' && self.replica[i-1] != 'x' && self.replica[i+1] != 'x'
        array.insert(-1, "-", self.replica[i-1], "-", self.replica[i+1])
      elsif self.replica[i] == '+' && self.replica[i-1] != 'x' && self.replica[i+1] == 'x'
        array.insert(-1, "-", self.replica[i-1])
      elsif self.replica[i] == '+' && self.replica[i-1] == 'x' && self.replica[i+1] != 'x'
        array.insert(-1, "-", self.replica[i+1])
      end
    end
    array
  end

  def subt(array)
    self.replica.each_index do |i|
      if self.replica[i] == '-' &&  self.replica[i-1] != 'x' &&  self.replica[i+1] != 'x'
        array.insert(-1, "-", self.replica[i-1], "+", self.replica[i+1])
      elsif self.replica[i] == '-' &&  self.replica[i-1] != 'x' &&  self.replica[i+1] == 'x'
        array.insert(-1, "-", self.replica[i-1])
      elsif self.replica[i] == '-' &&  self.replica[i-1] == 'x' &&  self.replica[i+1] != 'x'
        array.insert(-1, "+", self.replica[i+1])
      end
    end
    array
  end

  def divilist()
    self.replica.each_index do |i|
      if self.replica[i] == '/' && self.replica[i-1] != 'x' && self.replica[i+1] != 'x'
        self.replica[i-1] = (self.replica[i-1].to_i / self.replica[i+1].to_i).to_s
        self.replica.delete_at(i)
        self.replica.delete_at(i)
      elsif self.replica[i] == '/' && self.replica[i-1] == 'x' && self.replica[i+1] != 'x'
        self.divlist << self.replica[i+1]
        self.replica.delete_at(i)
        self.replica.delete_at(i)
      end
    end
  end

  def multilist()
    self.replica.each_index do |i|
      if self.replica[i] == '*' && self.replica[i-1] != 'x' && self.replica[i+1] != 'x'
        self.replica[i-1] = (self.replica[i-1].to_i * self.replica[i+1].to_i).to_s
        self.replica.delete_at(i)
        self.replica.delete_at(i)
      elsif self.replica[i] == '*' && self.replica[i-1] != 'x' && self.replica[i+1] == 'x'
        self.multlist << self.replica[i-1]
        self.replica.delete_at(i-1)
        self.replica.delete_at(i-1)
      elsif self.replica[i] == '*' && self.replica[i-1] == 'x' && self.replica[i+1] != 'x'
        self.multlist << self.replica[i+1]
        self.replica.delete_at(i)
        self.replica.delete_at(i)
      end
    end
  end

  def multiop(array)
    self.multlist.each do |i|
      array.insert(0, "(")
      array.insert(-1, ")")
      array.insert(-1, "/", i)
    end
    array
  end

  def divop(array)
    self.divlist.each do |i|
      array.insert(0, "(")
      array.insert(-1, ")")
      array.insert(-1, "*", i)
    end
    array
  end
end