class RemoveNotesFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :notes, :text
  end
end
