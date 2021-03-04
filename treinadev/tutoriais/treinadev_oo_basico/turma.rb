class Turma
    attr_reader :alunos
    attr_accessor  :nome, :sala, :professor

    def initialize(nome, sala, professor)
        @alunos = []
        @nome = nome
        @sala = sala
        @professor = professor
    end

    def adiciona_aluno(aluno)
        alunos << aluno
    end

    def remove_aluno(aluno)
        alunos.delete(aluno)
    end
        
    def total_alunos()
        return alunos.count()
    end

    private

    attr_writer :alunos
end
