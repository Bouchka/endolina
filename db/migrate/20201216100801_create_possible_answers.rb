class CreatePossibleAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :possible_answers do |t|
      t.string :possible_answer_details

      t.timestamps
    end
  end
end
