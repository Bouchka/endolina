class PossibleAnswer < ApplicationRecord
  belongs_to :question
  has_many :solutions
  has_many :user_answers
end
