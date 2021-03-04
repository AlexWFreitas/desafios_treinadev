class Funcionario 
    attr_reader :ferias, :data_inicio_ferias, :data_fim_ferias
    attr_accessor :nome, :codigo_funcionario  

    def initialize(nome, codigo_funcionario)    
        @nome = nome    
        @codigo_funcionario = codigo_funcionario    
        @ferias = false  
        @data_inicio_ferias = nil
        @data_fim_ferias = nil
    end

    def inicia_ferias()
        self.ferias = true
        self.data_inicio_ferias = Time.now()
    end

    def encerra_ferias()
        self.ferias = false
        self.data_fim_ferias = Time.now()
    end

    def imprime()
        puts("Funcionario #{nome} - Código #{codigo_funcionario} - Férias: #{ferias}")
    end

    private

    attr_writer :ferias, :data_inicio_ferias, :data_fim_ferias
end