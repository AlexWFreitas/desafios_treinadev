# Switch e Case são uma maneira diferente de definir uma série de condições e respostas.

nota = 8

case nota
when 0
  puts 'Você tirou zero! Precisa melhorar...'
when 1..4 # entre 1 e 4
  puts 'Reprovado... precisa se esforçar mais...'
when 5
  puts 'Passou raspando!'
when 6..9
  puts 'Parabéns, você foi aprovado.'
when 10
  puts 'Tirou 10! Você deve ser o melhor aluno que já tive!'
else 
  puts 'Nota inválida, favor corrigir o valor.'
end

