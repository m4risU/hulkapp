class CreateUserGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :user_groups do |t|
      t.integer :owner_id
      t.integer :user_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
