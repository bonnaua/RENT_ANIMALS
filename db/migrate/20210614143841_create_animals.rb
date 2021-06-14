class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :category
      t.string :species
      t.string :address
      t.text :description
      t.integer :age
      t.integer :price_per_day
      t.text :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
