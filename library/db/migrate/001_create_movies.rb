class CreateMovies < ActiveRecord::Migration[5.2]
    def change
      create_table :movies do |m|
        m.string :title
        m.string :director
        m.integer :rating
        
  
        m.timestamps
      end
    end
  end