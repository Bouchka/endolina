class CreateBoxes < ActiveRecord::Migration[6.0]
  def change
    create_table :boxes do |t|
      t.string :recurrent
      t.integer :price

      t.timestamps
    end
  end
end
