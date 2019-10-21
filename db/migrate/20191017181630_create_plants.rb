class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :image
      t.string :light
      t.string :water
      t.string :color
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
