class CreateHandAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :hand_abilities do |t|
      t.references :hand, foreign_key: true
      t.references :ability, foreign_key: true
    end
  end
end
