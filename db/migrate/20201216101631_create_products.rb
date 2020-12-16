class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.string :product_price
      t.string :product_picture
      t.boolean :one_time_order

      t.timestamps
    end
  end
end
