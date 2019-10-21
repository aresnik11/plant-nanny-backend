class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.belongs_to :plant, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
