class MealPlan < ApplicationRecord
  has_many :meals

  def prefill_meals
    if meals.none?
      5.times.each do
        meal = meals.create!

        2.times { meal.add_random_ingredient_amount }
      end
    end
  end

  def clear
    meals.destroy_all
    prefill_meals
  end
end
