class Recipe < ApplicationRecord
  has_many :ingredient_recipes
  has_many :ingredient, through::ingredient_recipes
end
