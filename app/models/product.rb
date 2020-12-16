class Product < ApplicationRecord
  has_many :solutions
  has_many :box_products
end
