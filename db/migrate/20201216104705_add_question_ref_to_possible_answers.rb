class AddQuestionRefToPossibleAnswers < ActiveRecord::Migration[6.0]
  def change
    add_reference :possible_answers, :question, null: false, foreign_key: true
  end
end
