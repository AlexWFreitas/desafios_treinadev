
tecla_pressionada = 's'
alunos = []
while tecla_pressionada == 's' do
  aluno = {}
  puts('Digite o nome do aluno: ')
  nome = gets.chomp()

  puts('Digite a nota do aluno: ')
  nota = gets.chomp()

  puts('Digite a disciplina do aluno: ')
  disciplina =  gets.chomp()

  aluno = {nome: nome, nota: nota, disciplina: disciplina}
  alunos << aluno

  puts 'Deseja inserir um novo aluno? s ou n'
  opcao = gets().chomp()

  # Repare que precisa usar AND para algo ser diferente de s e n.
  while (opcao != "s" && opcao != "n") do
    puts 'Deseja inserir um novo aluno? s ou n'
    opcao = gets().chomp()
  end

  tecla_pressionada = opcao

end

alunos.each do |aluno|
  puts("#{aluno[:nome]} tirou nota #{aluno[:nota]} em #{aluno[:disciplina]}")
end