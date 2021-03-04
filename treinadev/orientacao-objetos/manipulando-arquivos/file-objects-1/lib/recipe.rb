class Recipe
    attr_reader :title, :description, :ingredients, :cook_time, :featured

    def initialize(title: '', description: '', ingredients: '', cook_time: '', featured: '')
        @title = title
        @description = description
        @ingredients = ingredients
        @cook_time = cook_time
        @featured = featured
    end

    def self.from_json(file)
       Recipe.new(JSON.parse(File.read(file), symbolize_names: true))
    end

    private
        attr_writer :title, :description, :ingredients, :cook_time, :featured
end

#  "title": "Feijoada",
#  "description": "Você nunca comeu uma receita igual.",
#  "ingredients": "Feijão e Carnes",
#  "cook_time": 120,
#  "featured": false

#  recipe = Recipe.new(title: 'Feijoada',description: 'Você nunca comeu uma receita igual',ingredients: 'Feijão e Carnes',cook_time: 80,featured: true)