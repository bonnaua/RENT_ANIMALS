class AddFieldsToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :size, :string
    add_column :animals, :sexe, :string
    add_column :animals, :favorite_food, :string
    add_column :animals, :favorite_game, :string
    add_column :animals, :dos, :string
    add_column :animals, :donts, :string
  end
end
