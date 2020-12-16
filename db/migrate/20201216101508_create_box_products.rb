class CreateBoxProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :box_products do |t|
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
  end
end
