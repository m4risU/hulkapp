class Meal < ApplicationRecord
  belongs_to :meal_plan
  has_many :ingredient_amounts

  def add_random_ingredient_amount
    random_item = [
      {item_name: 'ham', grams: 500, amount: '500 g', category: 'meat'},
      {item_name: 'apples', grams: 700, amount: '3 pieces', category: 'fruit'},
      {item_name: 'milk', grams: 1200, amount: '1200 ml', category: 'dairy'},
      {item_name: 'bread', grams: 200, amount: '200 g', category: 'bread'},
      {item_name: 'carrot', grams: 500, amount: '300 g', category: 'vegetables'},
      {item_name: 'pepper', grams: 10, amount: '10 g', category: 'spices'},
      {item_name: 'trout', grams: 600, amount: '700 g', category: 'fish'},
      {item_name: 'olive oil', grams: 20, amount: '20 g', category: 'other'}
  ].sample
    ingredient = Ingredient.find_or_create_by(name: random_item[:item_name], category: random_item[:category])
    self.ingredient_amounts.create(ingredient: ingredient, grams: random_item[:grams])
  end
end
