class RemovePossibleAnswerDetailsFromPossibleAnswers < ActiveRecord::Migration[6.0]
  def change
    remove_column :possible_answers, :possible_answer_details, :string
  end
end
