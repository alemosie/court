class CreateActions < ActiveRecord::Migration[5.0]
  def change
    create_table :actions do |t|
      t.string :name
      t.string :user_moves
      t.references :hand, foreign_key: true

      t.timestamps
    end
  end
end
