class AddCategories < ActiveRecord::Migration[6.0]
  def change
    [
      ['Meat', 'meat'],
      ['Bread', 'bread'],
      ['Dairy', 'dairy'],
      ['Fruits', 'fruits'],
      ['Vegetables', 'vegetables'],
      ['Spices', 'spices'],
      ['Fish', 'fish'],
      ['Other', 'other']
    ].each do |name, code|
      IngredientCategory.create(name: name, code: code)
    end
  end
end
