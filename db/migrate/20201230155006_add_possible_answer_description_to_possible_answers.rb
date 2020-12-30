class AddPossibleAnswerDescriptionToPossibleAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :possible_answers, :possible_answer_description, :string
  end
end
