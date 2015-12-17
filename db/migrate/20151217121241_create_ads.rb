class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.string :company
      t.string :phone_number
      t.string :zipcode
      t.string :house_image
      t.string :profile_image
      t.string :text_1
      t.string :text_2
      t.integer :design

      t.timestamps null: false
    end
  end
end
