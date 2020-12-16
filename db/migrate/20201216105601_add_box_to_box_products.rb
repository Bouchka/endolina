class AddBoxToBoxProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :box_products, :box, null: false, foreign_key: true
  end
end
