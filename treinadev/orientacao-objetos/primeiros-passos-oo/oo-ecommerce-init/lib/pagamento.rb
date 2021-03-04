class Pagamento
    attr_reader :valor, :quantidade, :preco, :produto

    def initialize(quantidade:, preco:, produto: 'Sem nome')
        @quantidade = quantidade
        @preco = preco
        @produto = produto
    end

    def calcular_valor
        @valor = self.quantidade * self.preco
    end

    def aplicar_desconto(porcentagem)
        self.valor = ( ( 1.0 - porcentagem.to_f / 100.0) * self.valor.to_f ) # É importante converter para float?
    end

    private

    attr_writer :valor, :quantidade, :preco, :produto
end
