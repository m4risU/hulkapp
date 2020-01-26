class IngredientAmount < ApplicationRecord
  belongs_to :meal
  belongs_to :ingredient

  before_validation :verify_fields

  attr_accessor :ingredient_name

  def kcaltotal
    ingredient.kcal * grams.to_i / 100.0 if ingredient
  end

  private
  def verify_fields
    puts self.attributes
    # if ingredient_name.empty?
    #   errors.add(:ingredient_name, 'select existing ingredient or type its name')
    # end
    if grams.nil?
      errors.add(:grams, 'add quantity of the kilocalories')
    else
      if grams.to_f <= 0
        errors.add(:grams, 'value has to be positive number')
      end
    end
    return if errors.any?
    if ingredient_id.nil? && ingredient_name.present?
      self.ingredient_id = Ingredient.create_with_params(ingredient_name).id
    end
  end
end
