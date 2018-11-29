class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :image
      t.text :bio
      t.string :instagram
      t.string :twitter
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
