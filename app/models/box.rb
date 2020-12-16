class Box < ApplicationRecord
  belongs_to :user
  has_many :box_products
end
