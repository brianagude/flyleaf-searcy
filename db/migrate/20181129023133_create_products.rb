class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :author
      t.integer :price
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4
      t.string :image_5
      t.string :printing_method
      t.string :location_1_name
      t.string :location_1_url
      t.string :location_2_name
      t.string :location_2_url
      t.string :location_3_name
      t.string :location_3_url
      t.string :location_4_name
      t.string :location_4_url
      t.string :location_5_name
      t.string :location_5_url

      t.timestamps
    end
  end
end
