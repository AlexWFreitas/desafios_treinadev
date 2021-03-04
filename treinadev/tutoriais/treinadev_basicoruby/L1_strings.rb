# Concatenação de Strings
puts('Combinando' + 'Strings')

# Número de caracteres da String
puts(' Campus Code'.length())

# Letras minúsculas
puts(' Campus Code'.downcase())

# Letras maiúsculas
puts(' Campus Code'.upcase())


# Treino
nome = 'João'
idade = '30'
puts('Meu nome é ' + nome + ' e eu tenho ' + idade + ' anos de idade')
puts('Meu nome tem ' + nome.length().to_s() + ' caracteres')

# Interpolação precisa por entre aspas duplas " String #{nome} "
puts("Meu nome tem #{nome.length().to_s()} caracteres")


# Gets coloca um \n no final ao dar enter. Linebreak = \n

# puts('Qual o seu nome?')
# nome = gets()
# puts("Meu nome é #{nome}.")
# puts("Meu nome tem #{nome.length().to_s()} caracteres")

# gets().chomp() resolve limpando a string.
puts('Qual o seu nome?')
nome = gets().chomp()
puts("Meu nome é #{nome}.")
puts("Meu nome tem #{nome.length().to_s()} caracteres")

