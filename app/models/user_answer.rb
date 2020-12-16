class UserAnswer < ApplicationRecord
  belongs_to :possible_answer
  belongs_to :user
end
