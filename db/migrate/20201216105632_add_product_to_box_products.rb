class AddProductToBoxProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :box_products, :product, null: false, foreign_key: true
  end
end
