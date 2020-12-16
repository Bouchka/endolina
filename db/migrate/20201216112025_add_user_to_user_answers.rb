class AddUserToUserAnswers < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_answers, :user, null: false, foreign_key: true
  end
end
