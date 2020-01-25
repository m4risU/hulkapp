class CreateConfirmedAllergies < ActiveRecord::Migration[6.0]
  def change
    create_table :confirmed_allergies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :allergy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
