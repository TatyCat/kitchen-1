class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category
      t.integer :calories
      t.integer :price
      t.integer :rating
      t.date :expires_on
      t.boolean :gluten_free

      t.timestamps
    end
  end
end
