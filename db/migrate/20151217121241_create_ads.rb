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
      t.string :background_color_1, default: "#aaaaaa"
      t.string :text_color_1, default: "#222222"
      t.string :background_color_2, default: "#cccccc"
      t.string :text_color_2, default: "#555555"

      t.timestamps null: false
    end
  end
end
