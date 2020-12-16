class AddProductToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_reference :solutions, :product, null: false, foreign_key: true
  end
end
