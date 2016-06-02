class CreateHands < ActiveRecord::Migration[5.0]
  def change
    create_table :hands do |t|
      t.references :game, foreign_key: true
      t.references :player, foreign_key: true
      t.references :card, foreign_key: true
      t.text :actions, array: true, default: []
      t.timestamps
    end
  end
end