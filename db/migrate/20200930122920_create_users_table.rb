class CreateUsersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |table|
      table.string :name
      table.integer :age
      table.string :location
      table.string :favorite_quote
      
      table.timestamps
    end
  end
end
