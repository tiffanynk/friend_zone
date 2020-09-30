class CreateFavoriteFilmsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_films do |table|
      table.references :film
      table.references :user
      
      table.timestamps
    end
  end
end
