class RemoveCategoryFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :category, :varchar
  end
end
