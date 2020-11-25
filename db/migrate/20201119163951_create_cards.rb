class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :cardname
      t.integer :cardprice
      t.string :carddes
      t.string :cardgen
      t.integer :cardpage
      t.integer :cardyear
      t.integer :carddownload
      t.string :cardpremium

      t.timestamps
    end
  end
end
