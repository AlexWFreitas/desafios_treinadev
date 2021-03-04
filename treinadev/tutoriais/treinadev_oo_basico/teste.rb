require_relative 'aluno'
require_relative 'funcionario'
require_relative 'turma'
require_relative 'professor'

Robson = Professor.new('Robson', 'C34D22','Artes')
Alan = Aluno.new('Alan Budista', '11-23443211', 'A34231')
Maria = Aluno.new('Maria Aparecida', '13-34223111', 'A34232')
Joao = Aluno.new('Joao Victor', '15-32999222', 'A34233')
Jeff = Funcionario.new('Jeff','D35F01')

Artes = Turma.new('Arte','35',Robson)
Artes.adiciona_aluno(Alan)
Artes.adiciona_aluno(Maria)
Artes.adiciona_aluno(Joao)

puts Artes.inspect()

puts Jeff.inspect()

Robson.inicia_ferias()

puts Robson.inspect()

Robson.encerra_ferias()

puts Robson.inspect()

Robson.imprime()