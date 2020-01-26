class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :meal_plan_id

      t.timestamps
    end
  end
end
