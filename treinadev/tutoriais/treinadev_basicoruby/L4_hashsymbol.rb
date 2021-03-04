# Symbol são semelhantes às strings, mas usamos : para defini-los

"Caneca" # String
:caneca # Symbol

# Diferença entre os dois é como o Ruby armazena os dados em memória.
# Strings são armazenadas novamente na memória em outros espaços toda vez que são declaradas.

# variavel.object_id() = posição da memória

puts("String:")
puts("caneca".object_id())
puts("caneca".object_id())
puts("caneca".object_id())

puts("\nSymbol:")
puts(:caneca.object_id())
puts(:caneca.object_id())
puts(:caneca.object_id())

# Hash é um conjunto de pares de Chave e Valor

puts("\nHashes:")

aluno = { nome: 'Joao', nota: 7, disciplina: 'Ciências'}

puts aluno[:nome]
puts aluno[:disciplina]

puts("\n")
puts aluno


# Exercício de Hashes

alberto = { nome: 'Alberto', nota: 7, disciplina: 'Artes'}
alex = {nome: 'Alex', nota: 10, disciplina: 'Computação'}
daniel = { nome: 'Daniel', nota: 10, disciplina: 'Engenharia de Produção'}

alunos = [alberto, alex, daniel]

puts("\nArray de Hashes:")
puts("#{alunos[0][:nome]} tirou nota #{alunos[0][:nota]} em #{alunos[0][:disciplina]}.")
puts("#{alunos[1][:nome]} tirou nota #{alunos[1][:nota]} em #{alunos[1][:disciplina]}.")
puts("#{alunos[2][:nome]} tirou nota #{alunos[2][:nota]} em #{alunos[2][:disciplina]}.")
