class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :artist
      t.string :painting_url

      t.timestamps
    end
  end
end
