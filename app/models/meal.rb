class Meal < ApplicationRecord
  belongs_to :meal_plan
  has_many :ingredient_amounts
end
