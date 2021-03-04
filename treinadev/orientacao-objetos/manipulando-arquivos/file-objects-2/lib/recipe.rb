require 'json'

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured, :recipe_json

  def initialize(title:, description:, ingredients:, cook_time:,
                 featured: false)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(json_file)
    attributes = JSON.parse(File.read(json_file))
    Recipe.new(title: attributes['title'],
               description: attributes['description'],
               ingredients: attributes['ingredients'],
               cook_time: attributes['cook_time'],
               featured: attributes['featured'])
  end
  
  def save_to_file()
    JSON.dump(File.write('data/recipe.json', recipe_json))
  end
end
