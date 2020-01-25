class AddAllergies < ActiveRecord::Migration[6.0]
  def change
    [
      ['Wheat', 'wheat'],
      ['Soy', 'soy'],
      ['Eggs', 'eggs'],
      ['Tree Nuts', 'tree_nuts'],
      ['Peanuts', 'peanuts'],
      ['Shellfish', 'shellfish'],
      ['Milk', 'milk'],
      ['Fish', 'fishr']
    ].each do |name, code|
      Allergy.create(name: name, code: code)
    end
  end
end
