class CreateContactAbouts < ActiveRecord::Migration
  def change
    create_table :contact_abouts do |t|
      t.string :phone_number
      t.string :email
      t.text :contact_description
      t.text :about_description

      t.timestamps
    end
  end
end
