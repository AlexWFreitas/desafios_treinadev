# if
# elsif
# else

if 1.odd?()
    puts '1 é um número ímpar.'
  end
  
  numero = 1
  outro_numero = 20
  
  
  puts "Os números #{numero} e #{outro_numero} foram testados."
  if numero == outro_numero
    puts 'Os números são iguais.'
  else
    puts "Os números são diferentes."
  end
  
  # Exercício de Hashes com If
  
  alberto = { nome: 'Alberto', nota: 7, disciplina: 'Artes'}
  alex = {nome: 'Alex', nota: 10, disciplina: 'Computação'}
  daniel = { nome: 'Daniel', nota: 10, disciplina: 'Engenharia de Produção'}
  
  alunos = [alberto, alex, daniel]
  
  puts("\nArray de Hashes:")
  
  if alunos[0][:nota] < 5
    puts("\n#{alunos[0][:nome]} foi reprovado(a) em #{alunos[0][:disciplina]}.")
  else
    puts("\n#{alunos[0][:nome]} foi aprovado(a) em #{alunos[0][:disciplina]}.")
  end
  
  if alunos[1][:nota] < 5
    puts("\n#{alunos[1][:nome]} foi reprovado(a) em #{alunos[1][:disciplina]}.")
  else
    puts("\n#{alunos[1][:nome]} foi aprovado(a) em #{alunos[1][:disciplina]}.")
  end
  
  if alunos[2][:nota] < 5
    puts("\n#{alunos[2][:nome]} foi reprovado(a) em #{alunos[2][:disciplina]}.")
  else
    puts("\n#{alunos[2][:nome]} foi aprovado(a) em #{alunos[2][:disciplina]}.")
  end
  
  
  #puts("#{alunos[0][:nome]} tirou nota #{alunos[0][:nota]} em #{alunos[0][:disciplina]}.")
  #puts("#{alunos[1][:nome]} tirou nota #{alunos[1][:nota]} em #{alunos[1][:disciplina]}.")
  #puts("#{alunos[2][:nome]} tirou nota #{alunos[2][:nota]} em #{alunos[2][:disciplina]}.")
  