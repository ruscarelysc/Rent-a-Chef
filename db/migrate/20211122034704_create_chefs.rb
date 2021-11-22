class CreateChefs < ActiveRecord::Migration[6.1]
  def change
    create_table :chefs do |t|
      t.string :category
      t.string :name
      t.text :description
      t.integer :price
      t.references :user

      t.timestamps
    end
  end
end
