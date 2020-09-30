class CreateFilmsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |table|
      table.string :title
      table.text :description
      table.string :director
      table.string :producer
      table.integer :release_date
      table.integer :rt_score

      table.timestamps
    end
  end
end