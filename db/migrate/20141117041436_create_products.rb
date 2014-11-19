class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :category
      t.integer :quantity
      t.decimal :price
      t.integer :size
      t.string :image
      t.string :notes

      t.timestamps
    end
  end
end
