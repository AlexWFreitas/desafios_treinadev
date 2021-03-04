class Produto
    attr_accessor :nome, :preco, :estoque, :categoria

    def initialize(nome:, categoria: 'Geral', preco:, estoque:)
        @nome = nome
        @categoria = categoria
        @preco = preco
        @estoque = estoque
    end
end
