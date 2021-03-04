class PagamentoCredito < Pagamento
    attr_accessor :juros
  
    def initialize(quantidade:, produto:, juros: )
        super(quantidade: quantidade, produto: produto)
        @juros = juros
    end

    def atualizar_valor
        self.valor = calcular_valor * (100 + self.juros) / 100
    end
  end