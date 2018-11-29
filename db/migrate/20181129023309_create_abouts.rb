class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.text :bio
      t.string :email
      t.string :instagram

      t.timestamps
    end
  end
end
