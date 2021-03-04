# Pede um número
puts 'Digite um número'

# Recebe um número
numero = gets

# Transformar em inteiro
inteiro = numero.to_i()

# Ver se o resto é 0
resto = inteiro % 2

# Se o resto é 0 então o número é par. Se não é impar.
if resto == 0 

  puts "#{numero.chomp} é par!"

elsif resto != 0
  
  puts "#{numero.chomp} é ímpar!"

end

# variable.chomp come o /n