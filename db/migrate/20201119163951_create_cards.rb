class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :cardname
      t.integer :cardprice
      t.string :carddes

      t.timestamps
    end
  end
end
