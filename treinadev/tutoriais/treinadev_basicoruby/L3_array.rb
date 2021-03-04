# Array são listas ordenadas de elementos
# Posições numeradas sequencialmente, primeira posição = 0.

alunos = ['André', 'Pedro', 'Carolina']

puts "Lista de alunos:"
puts alunos

puts "\nalunos[0], alunos[1], alunos[-1]"
puts alunos[0] # Primeiro
puts alunos[1] # Segundo
puts alunos[-1] # Ultimo


alunos2 = ['André', 1, true] # Array com vários tipos ao mesmo tempo

puts("\nArray alunos2:")
puts alunos2

puts("\nAdicionando aluna Laura e removendo ela com alunos2.pop()")
alunos2 << 'Laura' # Adiciona 'Laura' a última posição do array.
puts alunos2
puts ("\n")
alunos2.pop() # Remove o último elemento do array. Push / Pop de pilha.
puts alunos2


# Mudando elemento na posição 1 de alunos.

alunos = ['André', 'Pedro', 'Carolina']
puts ("\n")
puts alunos

alunos[1] = 'Joaquim' # Substitui o conteúdo de aluno[1] por 'Joaquim'
puts ("\n")
puts alunos

# Métodos sobre arrays.
puts("\nMétodos sobre arrays: First, Last, Length")
puts(alunos.first())
puts(alunos.last())
puts(alunos.length()) # Número de elementos.



# Exercício

alunos = ['André', 'Sophia', 'Laura']
notas = [5, 6, 8]

puts("#{alunos[0]} tirou nota #{notas[0]}")
puts("#{alunos[1]} tirou nota #{notas[1]}")
puts("#{alunos[2]} tirou nota #{notas[2]}")

notas[1] = 9
alunos << "Paulo"
notas << 7.5

# puts("#{alunos} tirou nota #{notas}")
puts("\nNotas corrigidas e atualizadas:")
puts("#{alunos[0]} tirou nota #{notas[0]}")
puts("#{alunos[1]} tirou nota #{notas[1]}")
puts("#{alunos[2]} tirou nota #{notas[2]}")
puts("#{alunos[3]} tirou nota #{notas[3]}")

puts("\nEssa turma tem #{alunos.length()} participantes")