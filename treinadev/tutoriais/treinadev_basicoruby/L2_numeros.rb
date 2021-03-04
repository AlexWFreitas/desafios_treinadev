8 + 1 # 9
7.5 - 2 # 5.5

# Erro divisão por 0, indeterminado
#5/0 # infinito

numero = 8
puts numero

numero = 4+6 # 10
puts numero

# Soma sobre o proprio valor.
numero = 8
numero = numero + 6 # 14
puts numero

numero = numero / 2 # 7
puts numero


# Operação com ele mesmo, +=, -=, *=, /=
numero += 10 # 7 + 10 = 17
puts numero

#Manipulação de numeros
numero_string = "1"
numero_inteiro = numero_string.to_i()
numero_float = numero_string.to_f()

# Metódos úteis
puts("\nMétodos úteis:")
puts(10 % 2) # Resto de divisão
puts(10.positive?()) # é positivo?
puts(10.negative?()) # é negativo?
puts(1.odd?()) # é impar?

# Boolean = true ou falso, 1 ou 0.
# Ruby considera tudo diferente de nil e false como true.
puts("\nBoolean tests:")
puts(1 < 2) # true
puts(1 > 2) # false
puts(1 == 2) # false
puts(1 != 2)  # true

# And / Or = && / ||
puts("\nAnd / Or:")
puts(1 > 2 || 1 < 2) # Ou 
# true
puts(1 != 2 && 1 == 2) # E
# false

# AND so avalia a segunda expressão se a primeira for verdadeira
# OR só avalia a segunda expressão se a primeira for falsa.




