class MealPlan < ApplicationRecord
  has_many :meals

  def prefill_meals
    if meals.none?
      5.times.each do
        meals.create!
      end
    end
  end

  def clear
    meals.destroy_all
    prefill_meals
  end
end
