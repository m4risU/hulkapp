class CreateIngredientAmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_amounts do |t|
      t.integer :meal_id
      t.integer :ingredient_id
      t.integer :grams

      t.timestamps
    end
  end
end
