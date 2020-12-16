class CreateUsersAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :users_answers do |t|

      t.timestamps
    end
  end
end
