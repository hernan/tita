class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.timestamps
    end
    
    add_index :products, :user_id
  end
end
