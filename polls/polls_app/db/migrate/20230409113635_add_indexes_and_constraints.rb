class AddIndexesAndConstraints < ActiveRecord::Migration[7.0]
  def change
    change_column_null :questions, :text, false
    add_index :questions, :text

    change_column_null :polls, :title, false
    add_index :polls, :title

    change_column_null :answer_choices, :body, false
    add_index :answer_choices, :body
  end
end
