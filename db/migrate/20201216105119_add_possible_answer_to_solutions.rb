class AddPossibleAnswerToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_reference :solutions, :possible_answer, null: false, foreign_key: true
  end
end
