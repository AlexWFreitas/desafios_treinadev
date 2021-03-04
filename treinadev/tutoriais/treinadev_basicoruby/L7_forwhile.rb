# While = Enquanto condição for x, faça.

tecla_pressionada = 's'
#tecla_pressionada = 'n'
while tecla_pressionada != 's' do
  puts 'Vou continuar imprimindo até você apertar s'
  
  tecla_pressionada = gets().chomp() #chomp come o enter do final do gets
end

tecla_pressionada = 'n'
alunos = []
while tecla_pressionada == 's' do
  puts 'Digite o nome do aluno: '
  nome_aluno = gets.chomp()
  alunos << nome_aluno
  
  puts 'Deseja inserir um novo aluno? s ou n'
  opcao = gets.chomp()

  # Repare que precisa usar AND para algo ser diferente de s e n.
  while (opcao != "s" && opcao != "n") do
    puts 'Deseja inserir um novo aluno? s ou n'
    opcao = gets.chomp()
  end

  tecla_pressionada = opcao

end

#puts(alunos)


# While com Hashes e Array para preenchimento.

tecla_pressionada = 's'
alunos = []
notas = []
disciplinas =[]
while tecla_pressionada == 's' do
  puts 'Digite o nome do aluno: '
  alunos << gets.chomp()

  puts 'Digite a nota do aluno: '
  notas << gets.chomp()

  puts 'Digite a disciplina do aluno: '
  disciplinas << gets.chomp()

  
  puts 'Deseja inserir um novo aluno? s ou n'
  opcao = gets().chomp()

  # Repare que precisa usar AND para algo ser diferente de s e n.
  while (opcao != "s" && opcao != "n") do
    puts 'Deseja inserir um novo aluno? s ou n'
    opcao = gets().chomp()
  end

  tecla_pressionada = opcao

end

#case alunos.length
#when 1
#  puts("#{alunos[0]} tirou nota #{notas[0]} em #{disciplinas[0]}")
#when 2
#  puts("#{alunos[0]} tirou nota #{notas[0]} em #{disciplinas[0]}")
#  puts("#{alunos[1]} tirou nota #{notas[1]} em #{disciplinas[1]}")
#when 3
#  puts("#{alunos[0]} tirou nota #{notas[0]} em #{disciplinas[0]}")
#  puts("#{alunos[1]} tirou nota #{notas[1]} em #{disciplinas[1]}")
#  puts("#{alunos[2]} tirou nota #{notas[2]} em #{disciplinas[2]}")
#end


# Usando for para percorrer o array.

alunos.each_with_index do |aluno, index|
  #puts(aluno)
  puts("#{aluno} tirou nota #{notas[index]} em #{disciplinas[index]}")
end


