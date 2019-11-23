class RemoveCardsAndGames < ActiveRecord::Migration[6.0]
  def change
    drop_table :cards
    drop_table :games
  end
end
