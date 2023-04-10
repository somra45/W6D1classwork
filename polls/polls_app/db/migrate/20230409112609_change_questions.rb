class ChangeQuestions < ActiveRecord::Migration[7.0]
  def change
    change_column_null :questions, :poll_id, false
    change_column_null :polls, :author_id, false
    change_column_null :users, :username, false 
  end
end
