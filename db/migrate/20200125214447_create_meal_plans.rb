class CreateMealPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_plans do |t|
      t.integer :user_id
      t.date :planned_for

      t.timestamps
    end
  end
end
