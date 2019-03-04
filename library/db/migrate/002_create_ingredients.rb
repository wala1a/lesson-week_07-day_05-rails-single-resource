class CreateIngredients < ActiveRecord::Migration[5.2]
    def change
      create_table :ingredients do |m|
        m.string :name
        m.string :unit
        m.integer :amount
        m.date :purchased_on
        m.boolean :is_rotten
        m.timestamps
      end
    end
  end