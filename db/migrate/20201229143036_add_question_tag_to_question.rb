class AddQuestionTagToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :question_tag, :string
  end
end
