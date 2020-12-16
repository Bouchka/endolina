class BoxProduct < ApplicationRecord
  belongs_to :box
  belongs_to :product
end
